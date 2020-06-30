package com.pearadmin.system.controller;

import com.github.pagehelper.PageInfo;
import com.pearadmin.common.constant.MessageConstants;
import com.pearadmin.common.web.base.BaseController;
import com.pearadmin.common.web.domain.response.ResuBean;
import com.pearadmin.common.web.domain.response.ResuTable;
import com.pearadmin.common.web.domain.request.PageDomain;
import com.pearadmin.system.domain.SysDictType;
import com.pearadmin.system.service.ISysDictTypeService;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;

/**
 * Describe: 数据字典控制器
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */
@RestController
@RequestMapping("system/dictType")
public class SysDictTypeController extends BaseController {

    @Resource
    private ISysDictTypeService sysDictTypeService;

    private String MODULE_PATH = "system/dictType/";

    /**
     * Describe: 数据字典列表视图
     * Param: ModelAndView
     * Return: ModelAndView
     * */
    @GetMapping("main")
    public ModelAndView main(ModelAndView modelAndView){
        modelAndView.setViewName(MODULE_PATH + "main");
        return modelAndView;
    }

    /**
     * Describe: 数据字典列表数据
     * Param: sysDictType
     * Return: ResuTable
     * */
    @GetMapping("data")
    public ResuTable data(SysDictType sysDictType, PageDomain pageDomain){
        PageInfo<SysDictType> pageInfo = sysDictTypeService.page(sysDictType,pageDomain);
        return pageTable(pageInfo.getList(),pageInfo.getTotal());
    }

    /**
     * Describe: 数据字典类型新增视图
     * Param: sysDictType
     * Return: ModelAndView
     * */
    @GetMapping("add")
    public ModelAndView add(ModelAndView modelAndView){
        modelAndView.setViewName(MODULE_PATH + "add");
        return modelAndView;
    }

    /**
     * Describe: 新增字典类型接口
     * Param: sysDictType
     * Return: ResuBean
     * */
    @PostMapping("save")
    public ResuBean save(@RequestBody SysDictType sysDictType){
        boolean result = sysDictTypeService.save(sysDictType);
        return decide(
                result,                           // 响应结果
                MessageConstants.SAVE_SUCCESS,     // 成功消息
                MessageConstants.SAVE_FAILURE      // 失败消息
        );
    }

    /**
     * Describe: 数据字典类型修改视图
     * Param: sysDictType
     * Return: ModelAndView
     * */
    @GetMapping("edit")
    public ModelAndView edit(ModelAndView modelAndView,String dictTypeId){
        modelAndView.addObject("sysDictType",sysDictTypeService.getById(dictTypeId));
        modelAndView.setViewName(MODULE_PATH + "edit");
        return modelAndView;
    }

    /**
     * Describe: 数据字典类型修改视图
     * Param: sysDictType
     * Return: ModelAndView
     * */
    @PutMapping("update")
    public ResuBean update(@RequestBody SysDictType sysDictType){
        boolean result =  sysDictTypeService.updateById(sysDictType);
        return decide(result);
    }

    @DeleteMapping("remove/{id}")
    public ResuBean remove(@PathVariable("id")String id){
        Boolean result = sysDictTypeService.remove(id);
        return decide(result);
    }

    /**
     * Describe: 根据 Id 启用字典
     * Param dictId
     * Return ResuTree
     * */
    @PutMapping("enable")
    public ResuBean enable(@RequestBody SysDictType sysDictType){
        sysDictType.setEnable("0");
        boolean result = sysDictTypeService.updateById(sysDictType);
        return decide(result);
    }

    /**
     * Describe: 根据 Id 禁用字典
     * Param dictId
     * Return ResuTree
     * */
    @PutMapping("disable")
    public ResuBean disable(@RequestBody SysDictType sysDIctType){
        sysDIctType.setEnable("1");
        boolean result = sysDictTypeService.updateById(sysDIctType);
        return decide(
                result,                           // 响应结果
                MessageConstants.UPDATE_SUCCESS,     // 成功消息
                MessageConstants.UPDATE_FAILURE      // 失败消息
        );
    }


}
