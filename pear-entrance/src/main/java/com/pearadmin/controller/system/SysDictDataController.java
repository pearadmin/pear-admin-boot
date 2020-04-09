package com.pearadmin.controller.system;

import com.github.pagehelper.PageInfo;
import com.pearadmin.common.web.base.BaseController;
import com.pearadmin.common.web.domain.ResuBean;
import com.pearadmin.common.web.domain.ResuTable;
import com.pearadmin.common.web.domain.request.PageDomain;
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


}
