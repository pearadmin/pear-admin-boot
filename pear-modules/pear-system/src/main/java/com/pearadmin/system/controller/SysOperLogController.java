package com.pearadmin.system.controller;

import com.github.pagehelper.PageInfo;
import com.pearadmin.common.web.base.BaseController;
import com.pearadmin.common.web.domain.response.ResuTable;
import com.pearadmin.common.web.domain.request.PageDomain;
import com.pearadmin.system.domain.SysOperLog;
import com.pearadmin.system.service.ISysOperLogService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;

@RestController
@RequestMapping("system/operlog")
public class SysOperLogController extends BaseController {

    @Resource
    private ISysOperLogService sysOperLogService;

    @GetMapping("main")
    public ModelAndView main(ModelAndView modelAndView){
        modelAndView.setViewName("system/operlog/main");
        return modelAndView;
    }

    @GetMapping("data")
    public ResuTable data(SysOperLog sysOperLog, PageDomain pageDomain)
    {
        PageInfo<SysOperLog>  pageInfo = sysOperLogService.page(sysOperLog,pageDomain);
        return  pageTable(pageInfo.getList(),pageInfo.getTotal());
    }
}
