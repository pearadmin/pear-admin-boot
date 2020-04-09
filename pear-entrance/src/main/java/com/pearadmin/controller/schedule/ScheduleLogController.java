package com.pearadmin.controller.schedule;

import com.github.pagehelper.PageInfo;
import com.pearadmin.common.web.base.BaseController;
import com.pearadmin.common.web.domain.ResuTable;
import com.pearadmin.common.web.domain.request.PageDomain;
import com.pearadmin.schedule.entity.ScheduleLogBean;
import com.pearadmin.schedule.service.IScheduleLogService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import javax.annotation.Resource;


@RestController
@RequestMapping("schedule/log")
public class ScheduleLogController extends BaseController {

    @Resource
    private IScheduleLogService scheduleLogService;

    @GetMapping("main")
    public ModelAndView main(ModelAndView modelAndView){
        modelAndView.setViewName("schedule/log/main");
        return modelAndView;
    }

    @GetMapping("data")
    public ResuTable data(ScheduleLogBean scheduleLogBean, PageDomain pageDomain){
        PageInfo<ScheduleLogBean> pageInfo = scheduleLogService.page(scheduleLogBean,pageDomain);
        return pageTable(pageInfo.getList(),pageInfo.getTotal());
    }
}
