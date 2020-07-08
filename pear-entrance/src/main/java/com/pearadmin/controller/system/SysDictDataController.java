package com.pearadmin.controller.system;

import com.github.pagehelper.PageInfo;
import com.pearadmin.common.constant.MessageConstants;
import com.pearadmin.common.tools.serial.SnowFlake;
import com.pearadmin.common.web.base.BaseController;
import com.pearadmin.common.web.domain.request.PageDomain;
import com.pearadmin.common.web.domain.response.ResuBean;
import com.pearadmin.common.web.domain.response.ResuTable;
import com.pearadmin.system.domain.SysDictData;
import com.pearadmin.system.service.ISysDictDataService;
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
    public ModelAndView main(ModelAndView modelAndView,String type){
        modelAndView.addObject("type",type);
        modelAndView.setViewName(MODULE_PATH + "main");
        return modelAndView;
    }

    @GetMapping("data")
    public ResuTable data (SysDictData sysDictData, PageDomain pageDomain){
       System.out.println(sysDictData.toString());
       PageInfo<SysDictData> pageInfo = sysDictDataService.page(sysDictData,pageDomain);
       return pageTable(pageInfo.getList(),pageInfo.getTotal());
    }

    @GetMapping("add")
    public ModelAndView add(ModelAndView modelAndView,String type){
        modelAndView.addObject("type",type);
        modelAndView.setViewName(MODULE_PATH+"add");
        return modelAndView;
    }

    @PostMapping("save")
    public ResuBean save(@RequestBody SysDictData sysDictData){
        sysDictData.setDataId("" + new SnowFlake().nextId());
        Boolean result = sysDictDataService.save(sysDictData);
        return decide(result,
                MessageConstants.SAVE_SUCCESS,
                MessageConstants.SAVE_FAILURE);
    }

    @GetMapping("edit")
    public ModelAndView edit(ModelAndView modelAndView,String dataId){
        modelAndView.addObject("sysDictData",sysDictDataService.getById(dataId));
        modelAndView.setViewName(MODULE_PATH+"edit");
        return modelAndView;
    }

}
