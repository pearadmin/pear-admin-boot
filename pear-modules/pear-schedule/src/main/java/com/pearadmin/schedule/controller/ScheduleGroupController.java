package com.pearadmin.schedule.controller;

import com.github.pagehelper.PageInfo;
import com.pearadmin.common.constant.MessageConstants;
import com.pearadmin.common.tools.serial.SnowFlake;
import com.pearadmin.common.web.base.BaseController;
import com.pearadmin.common.web.domain.ResuBean;
import com.pearadmin.common.web.domain.ResuTable;
import com.pearadmin.common.web.domain.request.PageDomain;
import com.pearadmin.schedule.domain.ScheduleGroupBean;
import com.pearadmin.schedule.service.IScheduleGroupService;
import org.hibernate.validator.internal.engine.MessageInterpolatorContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

/**
 * Describe: 任务组控制器
 * Auther: 就眠仪式
 * createTime: 2019/10/23
 * */
@RestController
@RequestMapping("schedule/group")
public class ScheduleGroupController extends BaseController {

    private String path = "schedule/group/";

    @Autowired
    private IScheduleGroupService scheduleGroupService;

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
     * Describe: 任务列表数据
     * Param: PageDomain
     * Return ResuTable
     * */
    @GetMapping("data")
    public ResuTable data(ScheduleGroupBean scheduleGroupBean, PageDomain pageDomain){
        PageInfo<ScheduleGroupBean> pageInfo = scheduleGroupService.page(scheduleGroupBean,pageDomain);
        return pageTable(pageInfo.getList(),pageInfo.getTotal());
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

    /**
     * Describe: 修改任务组视图
     * Param: ModelAndView
     * Return: ModelAndView
     * */
    @GetMapping("edit")
    public ModelAndView edit(ModelAndView modelAndView,String groupId){
        modelAndView.addObject("scheduleGroup",scheduleGroupService.getById(groupId));
        modelAndView.setViewName(path + "edit");
        return modelAndView;
    }

    /**
     * Describe: 新增任务组
     * Param: ModelAndView
     * Return: ModelAndView
     * */
    @PostMapping("save")
    public ResuBean save(@RequestBody ScheduleGroupBean scheduleGroupBean){
        scheduleGroupBean.setGroupId("" + new SnowFlake().nextId());
        Boolean result = scheduleGroupService.save(scheduleGroupBean);
        return decide(result,
                MessageConstants.SAVE_SUCCESS,
                MessageConstants.SAVE_FAILURE);
    }

    /**
     * Describe: 删除任务组
     * Param: groupId
     * Return: ResuBean
     * */
    @DeleteMapping("remove/{id}")
    public ResuBean remove(@PathVariable("id")String id){
        Boolean result = scheduleGroupService.remove(id);
        return decide(result);
    }
}
