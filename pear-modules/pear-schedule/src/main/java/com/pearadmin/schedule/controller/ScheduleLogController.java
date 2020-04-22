package com.pearadmin.schedule.controller;

import com.github.pagehelper.PageInfo;
import com.pearadmin.common.web.base.BaseController;
import com.pearadmin.common.web.domain.ResuTable;
import com.pearadmin.common.web.domain.request.PageDomain;
import com.pearadmin.schedule.domain.ScheduleLogBean;
import com.pearadmin.schedule.service.IScheduleLogService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;

/**
 * Describe: 定时任务日志控制器
 * Auther: 就眠仪式
 * createTime: 2019/10/23
 * */
@RestController
@RequestMapping("schedule/log")
public class ScheduleLogController extends BaseController {

    /**
     * Describe: 定时任务日志服务
     * */
    @Resource
    private IScheduleLogService scheduleLogService;

    /**
     * Describe: 获取定时任务日志列表视图
     * Param: modelAndView
     * Return: 定时任务日志列表视图
     * */
    @GetMapping("main")
    public ModelAndView main(ModelAndView modelAndView){
        modelAndView.setViewName("schedule/log/main");
        return modelAndView;
    }

    /**
     * Describe: 获取定时任务日志列表数据
     * Param: PageDomain
     * Return: ResuTable
     * */
    @GetMapping("data")
    public ResuTable data(ScheduleLogBean scheduleLogBean, PageDomain pageDomain){
        PageInfo<ScheduleLogBean> pageInfo = scheduleLogService.page(scheduleLogBean,pageDomain);
        return pageTable(pageInfo.getList(),pageInfo.getTotal());
    }
}
