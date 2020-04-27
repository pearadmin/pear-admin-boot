package com.pearadmin.schedule.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * Describe: 任务组控制器
 * Auther: 就眠仪式
 * createTime: 2019/10/23
 * */
@RestController
@RequestMapping("schedule/group")
public class ScheduleGroupController {

    private String path = "schedule/group/";

    /**
     * Describe: 获取任务组列表视图
     * Param ModelAndView
     * Return 定时任务列表视图
     * */
    @GetMapping("main")
    public ModelAndView main(ModelAndView modelAndView){
        modelAndView.setViewName(path + "main");
        return modelAndView;
    }

    /**
     * Describe: 获取任务组新增视图
     * Param ModelAndView
     * Return ModelAndView
     * */
    @GetMapping("add")
    public ModelAndView add(ModelAndView modelAndView){
        modelAndView.setViewName(path + "add");
        return modelAndView;
    }
}
