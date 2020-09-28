package com.pearadmin.system.controller;

import com.github.pagehelper.PageInfo;
import com.pearadmin.common.tools.sequence.SequenceUtil;
import com.pearadmin.common.web.base.BaseController;
import com.pearadmin.common.web.domain.request.PageDomain;
import com.pearadmin.common.web.domain.response.Result;
import com.pearadmin.common.web.domain.response.ResultTable;
import com.pearadmin.system.domain.SysDictData;
import com.pearadmin.system.service.ISysDictDataService;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import javax.annotation.Resource;

/**
 * Describe: 主页控制器
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */
@RestController
@RequestMapping("system/dictData")
public class SysDictDataController extends BaseController {

    /**
     * 基础路径
     * */
    private String MODULE_PATH = "system/dictData/";

    @Resource
    private ISysDictDataService sysDictDataService;

    /**
     * Describe: 数据字典列表视图
     * Param: ModelAndView
     * Return: ModelAndView
     * */
    @GetMapping("main")
    @PreAuthorize("hasPermission('/system/dictData/main','sys:dictData:main')")
    public ModelAndView main(Model model, String typeCode){
        model.addAttribute("typeCode",typeCode);
        return JumpPage(MODULE_PATH + "main");
    }

    /**
     * Describe: 数据字典列表数据
     * Param: sysDictType
     * Return: Result
     * */
    @GetMapping("data")
    @PreAuthorize("hasPermission('/system/dictData/data','sys:dictData:data')")
    public ResultTable data (SysDictData sysDictData, PageDomain pageDomain){
       System.out.println(sysDictData.toString());
       PageInfo<SysDictData> pageInfo = sysDictDataService.page(sysDictData,pageDomain);
       return pageTable(pageInfo.getList(),pageInfo.getTotal());
    }

    /**
     * Describe: 数据字典类型新增视图
     * Param: sysDictType
     * Return: ModelAndView
     * */
    @GetMapping("add")
    @PreAuthorize("hasPermission('/system/dictData/add','sys:dictData:add')")
    public ModelAndView add(Model model,String typeCode){
        model.addAttribute("typeCode",typeCode);
        return JumpPage(MODULE_PATH+"add");
    }

    /**
     * Describe: 新增字典类型接口
     * Param: sysDictType
     * Return: Result
     * */
    @PostMapping("save")
    @PreAuthorize("hasPermission('/system/dictData/add','sys:dictData:add')")
    public Result save(@RequestBody SysDictData sysDictData){
        sysDictData.setDataId(SequenceUtil.makeStringId());
        Boolean result = sysDictDataService.save(sysDictData);
        return decide(result);
    }

    /**
     * Describe: 数据字典类型修改视图
     * Param: sysDictType
     * Return: ModelAndView
     * */
    @GetMapping("edit")
    @PreAuthorize("hasPermission('/system/dictData/edit','sys:dictData:edit')")
    public ModelAndView edit(Model model,String dataId){
        model.addAttribute("sysDictData",sysDictDataService.getById(dataId));
        return JumpPage(MODULE_PATH+"edit");
    }

    /**
     * Describe: 数据字典删除
     * Param: id
     * Return: Result
     * */
    @DeleteMapping("remove/{id}")
    @PreAuthorize("hasPermission('/system/dictData/remove','sys:dictData:remove')")
    public Result remove(@PathVariable("id")String id){
        Boolean result = sysDictDataService.remove(id);
        return decide(result);
    }
}
