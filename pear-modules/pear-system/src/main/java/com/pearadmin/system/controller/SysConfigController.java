package com.pearadmin.system.controller;

import com.github.pagehelper.PageInfo;
import com.pearadmin.common.tools.sequence.SequenceUtil;
import com.pearadmin.common.web.base.BaseController;
import com.pearadmin.common.web.domain.request.PageDomain;
import com.pearadmin.common.web.domain.response.Result;
import com.pearadmin.common.web.domain.response.ResultTable;
import com.pearadmin.system.domain.SysConfig;
import com.pearadmin.system.param.QueryConfigParam;
import com.pearadmin.system.service.ISysConfigService;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import javax.annotation.Resource;
import java.time.LocalDateTime;
import java.util.Date;

/**
 * Describe: 系 统 配 置 控 制 器
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */

@RestController
@RequestMapping("system/config")
public class SysConfigController extends BaseController {

    /**
     * 引入服务
     * */
    @Resource
    private ISysConfigService sysConfigService;

    /**
     * 基础路径
     * */
    private String MODULE_PATH = "system/config/";

    /**
     * Describe: 数据字典列表视图
     * Param: ModelAndView
     * Return: ModelAndView
     * */
    @GetMapping("main")
    public ModelAndView main(){
        return JumpPage(MODULE_PATH + "main");
    }

    /**
     * Describe: 数据字典列表数据
     * Param: sysConfig
     * Return: ResultTable
     * */
    @GetMapping("data")
    public ResultTable data(QueryConfigParam param, PageDomain pageDomain){
        PageInfo<SysConfig> pageInfo = sysConfigService.page(param,pageDomain);
        return pageTable(pageInfo.getList(),pageInfo.getTotal());
    }

    /**
     * Describe: 数据字典类型新增视图
     * Param: sysConfig
     * Return: ModelAndView
     * */
    @GetMapping("add")
    public ModelAndView add(){
        return JumpPage(MODULE_PATH + "add");
    }

    /**
     * Describe: 新增字典类型接口
     * Param: sysConfig
     * Return: ResultBean
     * */
    @PostMapping("save")
    public Result save(@RequestBody SysConfig sysConfig){
        sysConfig.setConfigId(SequenceUtil.makeStringId());
        sysConfig.setCreateTime(LocalDateTime.now());
        boolean result = sysConfigService.save(sysConfig);
        return decide(result);
    }

    /**
     * Describe: 数据字典类型修改视图
     * Param: sysConfig
     * Return: ModelAndView
     * */
    @GetMapping("edit")
    public ModelAndView edit(Model model, String configId){
        model.addAttribute("sysConfig",sysConfigService.getById(configId));
        return JumpPage(MODULE_PATH + "edit");
    }

    /**
     * Describe: 数据字典类型修改视图
     * Param: sysConfig
     * Return: ModelAndView
     * */
    @PutMapping("update")
    public Result update(@RequestBody SysConfig sysConfig){
        sysConfig.setUpdateTime(LocalDateTime.now());
        boolean result = sysConfigService.updateById(sysConfig);
        return decide(result);
    }

    /**
     * Describe: 数据字典删除
     * Param: sysConfig
     * Return: ModelAndView
     * */
    @DeleteMapping("remove/{id}")
    public Result remove(@PathVariable("id")String id){
        Boolean result = sysConfigService.remove(id);
        return decide(result);
    }
}
