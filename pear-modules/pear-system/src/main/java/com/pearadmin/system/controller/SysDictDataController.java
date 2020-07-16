package com.pearadmin.system.controller;

import com.github.pagehelper.PageInfo;
import com.pearadmin.common.constant.MessageConstants;
import com.pearadmin.common.tools.sequence.SequenceUtil;
import com.pearadmin.common.web.base.BaseController;
import com.pearadmin.common.web.domain.request.PageDomain;
import com.pearadmin.common.web.domain.response.Result;
import com.pearadmin.common.web.domain.response.ResultTable;
import com.pearadmin.system.domain.SysDictData;
import com.pearadmin.system.service.ISysDictDataService;
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

    private String MODULE_PATH = "system/dictData/";

    @Resource
    private ISysDictDataService sysDictDataService;


    @GetMapping("main")
    public ModelAndView main(Model model, String type){
        model.addAttribute("type",type);
        return JumpPage(MODULE_PATH + "main");
    }

    @GetMapping("data")
    public ResultTable data (SysDictData sysDictData, PageDomain pageDomain){
       System.out.println(sysDictData.toString());
       PageInfo<SysDictData> pageInfo = sysDictDataService.page(sysDictData,pageDomain);
       return pageTable(pageInfo.getList(),pageInfo.getTotal());
    }

    @GetMapping("add")
    public ModelAndView add(Model model,String type){
        model.addAttribute("type",type);
        return JumpPage(MODULE_PATH+"add");
    }

    @PostMapping("save")
    public Result save(@RequestBody SysDictData sysDictData){
        sysDictData.setDataId(SequenceUtil.makeStringId());
        Boolean result = sysDictDataService.save(sysDictData);
        return decide(result,
                MessageConstants.SAVE_SUCCESS,
                MessageConstants.SAVE_FAILURE);
    }

    @GetMapping("edit")
    public ModelAndView edit(Model model,String dataId){
        model.addAttribute("sysDictData",sysDictDataService.getById(dataId));
        return JumpPage(MODULE_PATH+"edit");
    }

}
