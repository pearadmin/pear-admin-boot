package com.pearadmin.system.controller;

import com.github.pagehelper.PageInfo;
import com.pearadmin.common.web.base.BaseController;
import com.pearadmin.common.web.domain.response.ResuTable;
import com.pearadmin.common.web.domain.request.PageDomain;
import com.pearadmin.resource.logging.service.LoggingService;
import com.pearadmin.system.domain.SysOperLog;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;

@RestController
@RequestMapping("system/logging")
public class SysLoggingController extends BaseController {

    /**
     * 引 入 日 志 组 件  的 日 志 服 务
     * */
    @Resource
    private LoggingService loggingService;

    @GetMapping("main")
    public ModelAndView main(ModelAndView modelAndView){
        modelAndView.setViewName("system/logging/main");
        return modelAndView;
    }

    @GetMapping("data")
    public ResuTable data()
    {
        return dataTable(loggingService.data());
    }
}
