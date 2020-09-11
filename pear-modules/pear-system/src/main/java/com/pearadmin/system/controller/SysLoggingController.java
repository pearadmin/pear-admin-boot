package com.pearadmin.system.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pearadmin.common.logging.domain.Logging;
import com.pearadmin.common.logging.enums.LoggingType;
import com.pearadmin.common.logging.service.LoggingService;
import com.pearadmin.common.web.base.BaseController;
import com.pearadmin.common.web.domain.request.PageDomain;
import com.pearadmin.common.web.domain.response.ResultTable;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;

/**
 * Describe: 日 志 控 制 器
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */

@RestController
@RequestMapping("system/logging")
public class SysLoggingController extends BaseController {

    /**
     * 引 入 日 志 组 件  的 日 志 服 务
     * */
    @Resource
    private LoggingService loggingService;

    /**
     * 主 页
     * */
    @GetMapping("main")
    public ModelAndView main(){
        return JumpPage("system/logging/main");
    }

    /**
     * 操 作 日 志 数 据
     * */
    @GetMapping("operateLog")
    public ResultTable operateLog(PageDomain pageDomain)
    {
        PageHelper.startPage(pageDomain.getPage(),pageDomain.getLimit());
        PageInfo<Logging> pageInfo = new PageInfo<>(loggingService.data(LoggingType.OPERATE));
        return pageTable(pageInfo.getList(),pageInfo.getTotal());
    }

    /**
     * 登 录 日 志 数 据
     * */
    @GetMapping("loginLog")
    public ResultTable loginLog(PageDomain pageDomain)
    {
        PageHelper.startPage(pageDomain.getPage(),pageDomain.getLimit());
        PageInfo<Logging> pageInfo = new PageInfo<>(loggingService.data(LoggingType.LOGIN));
        return pageTable(pageInfo.getList(),pageInfo.getTotal());
    }
}
