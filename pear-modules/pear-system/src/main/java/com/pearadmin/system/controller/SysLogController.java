package com.pearadmin.system.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pearadmin.common.logging.domain.Logging;
import com.pearadmin.common.logging.service.LoggingService;
import com.pearadmin.common.web.base.BaseController;
import com.pearadmin.common.web.domain.request.PageDomain;
import com.pearadmin.common.web.domain.response.ResultTable;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;

@RestController
@RequestMapping("system/logging")
public class SysLogController extends BaseController {

    /**
     * 引 入 日 志 组 件  的 日 志 服 务
     * */
    @Resource
    private LoggingService loggingService;

    /**
     * 主 页
     * */
    @GetMapping("main")
    public ModelAndView main(ModelAndView modelAndView){
        return JumpPage("system/logging/main");
    }

    /**
     * 日 志 数 据
     * */
    @GetMapping("data")
    public ResultTable data(PageDomain pageDomain)
    {
        PageHelper.startPage(pageDomain.getPage(),pageDomain.getLimit());
        PageInfo<Logging> pageInfo = new PageInfo<>(loggingService.data());
        return pageTable(pageInfo.getList(),pageInfo.getTotal());
    }
}
