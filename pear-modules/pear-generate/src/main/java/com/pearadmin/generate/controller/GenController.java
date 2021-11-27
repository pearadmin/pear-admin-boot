package com.pearadmin.generate.controller;

import com.alibaba.fastjson.JSON;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pearadmin.common.constant.ControllerConstant;
import com.pearadmin.common.tools.SequenceUtil;
import com.pearadmin.common.tools.string.Convert;
import com.pearadmin.common.tools.string.StringUtil;
import com.pearadmin.common.web.base.BaseController;
import com.pearadmin.common.web.domain.request.PageDomain;
import com.pearadmin.common.web.domain.response.Result;
import com.pearadmin.common.web.domain.response.module.ResultSelect;
import com.pearadmin.common.web.domain.response.module.ResultTable;
import com.pearadmin.generate.domain.GenTable;
import com.pearadmin.generate.domain.GenTableColumn;
import com.pearadmin.generate.service.IGenTableColumnService;
import com.pearadmin.generate.service.IGenTableService;
import io.swagger.annotations.Api;
import org.apache.commons.io.IOUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Describe: 代码生成控制器
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 */
@Controller
@Api(tags = {"代码生成"})
@RequestMapping(ControllerConstant.API_GENERATOR_PREFIX)
public class GenController extends BaseController {

    private String prefix = "generate/";

    @Resource
    private IGenTableService genTableService;

    @Resource
    private IGenTableColumnService genTableColumnService;

    /**
     * 代码生成页面
     *
     * @return {@link ModelAndView}
     */
    @GetMapping("main")
    public ModelAndView gen() {
        return jumpPage(prefix + "gen");
    }

    /**
     * 查询代码生成列表
     *
     * @param genTable   查询参数
     * @param pageDomain 分页参数
     */
    @GetMapping("/list")
    @ResponseBody
    public ResultTable genList(GenTable genTable, PageDomain pageDomain) {
        PageHelper.startPage(pageDomain.getPage(), pageDomain.getLimit());
        List<GenTable> data = genTableService.selectGenTableList(genTable);
        PageInfo<GenTable> pageInfo = new PageInfo<>(data);
        return pageTable(pageInfo.getList(), pageInfo.getTotal());
    }

    /**
     * 查询数据库列表
     *
     * @param genTable   查询参数
     * @param pageDomain 分页参数
     */
    @GetMapping("/db/list")
    @ResponseBody
    public ResultTable dataList(GenTable genTable, PageDomain pageDomain) {
        PageHelper.startPage(pageDomain.getPage(), pageDomain.getLimit());
        List<GenTable> data = genTableService.selectDbTableList(genTable);
        PageInfo<GenTable> pageInfo = new PageInfo<>(data);
        return pageTable(pageInfo.getList(), pageInfo.getTotal());
    }

    /**
     * 查询数据表字段列表
     */
    @GetMapping("/column/list")
    @ResponseBody
    public ResultTable columnList(GenTableColumn genTableColumn) {
        List<GenTableColumn> list = genTableColumnService.selectGenTableColumnListByTableId(genTableColumn);
        return dataTable(list);
    }

    /**
     * 导入表结构
     */
    @GetMapping("/importTable")
    public String importTable() {
        return prefix + "importTable";
    }

    /**
     * 导入表结构（保存）
     */
    @PostMapping("/importTable")
    @ResponseBody
    public Result importTableSave(String tables) {
        String[] tableNames = Convert.toStrArray(tables);
        List<GenTable> tableList = genTableService.selectDbTableListByNames(tableNames);
        tableList.forEach(table -> {
            table.setTableId(SequenceUtil.makeStringId());
        });
        genTableService.importGenTable(tableList, "");
        return success("导入成功");
    }

    /**
     * 修改代码生成业务
     *
     * @param tableId  编号
     * @param modelMap 数据
     */
    @GetMapping("/edit")
    public String edit(String tableId, ModelMap modelMap) {
        GenTable table = genTableService.selectGenTableById(tableId);
        List<GenTable> genTables = genTableService.selectGenTableAll();
        List<ResultSelect> cxSelect = new ArrayList<ResultSelect>();
        for (GenTable genTable : genTables) {
            if (!StringUtil.equals(table.getTableName(), genTable.getTableName())) {
                ResultSelect cxTable = new ResultSelect(genTable.getTableName(), genTable.getTableName() + '：' + genTable.getTableComment());
                List<ResultSelect> cxColumns = new ArrayList<ResultSelect>();
                for (GenTableColumn tableColumn : genTable.getColumns()) {
                    cxColumns.add(new ResultSelect(tableColumn.getColumnName(), tableColumn.getColumnName() + '：' + tableColumn.getColumnComment()));
                }
                cxTable.setS(cxColumns);
                cxSelect.add(cxTable);
            }
        }
        modelMap.put("table", table);
        modelMap.put("data", JSON.toJSON(cxSelect));
        return prefix + "edit";
    }

    /**
     * 修改保存代码生成业务
     *
     * @param genTable 代码生成实体
     */
    @PostMapping("/edit")
    @ResponseBody
    public Result editSave(@Validated GenTable genTable) {
        genTableService.validateEdit(genTable);
        genTableService.updateGenTable(genTable);
        return success("保存成功");
    }

    /**
     * 根据 编号 删除代码生成配置
     *
     * @param ids 代码生成编号
     */
    @PostMapping("/remove")
    @ResponseBody
    public Result remove(String ids) {
        genTableService.deleteGenTableByIds(ids);
        return success();
    }

    /**
     * 预览代码
     *
     * @param tableId 表格编号
     */
    @GetMapping("/preview/{tableId}")
    @ResponseBody
    public Result preview(@PathVariable("tableId") String tableId) throws IOException {
        Map<String, String> dataMap = genTableService.previewCode(tableId);
        return success(dataMap);
    }

    /**
     * 下载代码
     *
     * @param tableName 表格名称
     */
    @GetMapping("/download/{tableName}")
    public void download(HttpServletResponse response, @PathVariable("tableName") String tableName) throws IOException {
        byte[] data = genTableService.downloadCode(tableName);
        genCode(response, data);
    }

    /**
     * 生成代码
     *
     * @param tableName 表格名称
     */
    @GetMapping("/genCode/{tableName}")
    @ResponseBody
    public Result genCode(@PathVariable("tableName") String tableName) {
        genTableService.generatorCode(tableName);
        return success();
    }

    /**
     * 批量生成代码
     */
    @GetMapping("/batchGenCode")
    @ResponseBody
    public void batchGenCode(HttpServletResponse response, String tables) throws IOException {
        String[] tableNames = Convert.toStrArray(tables);
        byte[] data = genTableService.downloadCode(tableNames);
        genCode(response, data);
    }

    /**
     * 下载压缩文件
     */
    private void genCode(HttpServletResponse response, byte[] data) throws IOException {
        response.reset();
        response.setHeader("Content-Disposition", "attachment; filename=\"pearadmin.zip\"");
        response.addHeader("Content-Length", "" + data.length);
        response.setContentType("application/octet-stream; charset=UTF-8");
        IOUtils.write(data, response.getOutputStream());
    }
}