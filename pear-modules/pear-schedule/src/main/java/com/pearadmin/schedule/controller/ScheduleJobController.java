package com.pearadmin.schedule.controller;

import com.github.pagehelper.PageInfo;
import com.pearadmin.common.constant.MessageConstants;
import com.pearadmin.common.tools.serial.SnowFlake;
import com.pearadmin.common.web.base.BaseController;
import com.pearadmin.common.web.domain.ResuBean;
import com.pearadmin.common.web.domain.ResuTable;
import com.pearadmin.common.web.domain.request.PageDomain;
import com.pearadmin.schedule.domain.ScheduleJobBean;
import com.pearadmin.schedule.service.IScheduleJobService;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.Date;

/**
 * Describe: 定时任务控制器
 * Auther: 就眠仪式
 * createTime: 2019/10/23
 * */
@RestController
@RequestMapping("schedule/job")
public class ScheduleJobController extends BaseController {

    /**
     * Describe: 定时任务服务
     * */
    @Resource
    private IScheduleJobService scheduleJobService ;

    /**
     * Describe: 获取定时任务列表视图
     * Param ModelAndView
     * Return 定时任务列表视图
     * */
    @GetMapping("main")
    public ModelAndView main(ModelAndView modelAndView){
        modelAndView.setViewName("schedule/job/main");
        return modelAndView;
    }

    /**
     * Describe: 获取定时任务列表数据
     * Param PageDomain
     * Return 定时任务列表数据
     * */
    @GetMapping("data")
    public ResuTable data(PageDomain pageDomain){
       PageInfo<ScheduleJobBean> pageInfo =  scheduleJobService.page(null,pageDomain);

       System.out.println(pageInfo.toString());
       return pageTable(pageInfo.getList(),pageInfo.getTotal());
    }

    /**
     * Describe: 获取定时任务新增视图
     * Param ModelAndView
     * Return ModelAndView
     * */
    @GetMapping("add")
    public ModelAndView add(ModelAndView modelAndView){
        modelAndView.setViewName("schedule/job/add");
        return modelAndView;
    }

    /**
     * Describe: 获取定时任务修改视图
     * Param ModelAndView
     * Return ModelAndView
     * */
    @GetMapping("edit")
    public ModelAndView edit(ModelAndView modelAndView,String jobId){
        modelAndView.addObject("scheduleJob",scheduleJobService.getById(jobId));
        modelAndView.setViewName("schedule/job/edit");
        return modelAndView;
    }

    /**
     * Describe: 保存定时任务数据
     * Param ScheduleJob
     * Return ResuBean
     * */
    @RequestMapping("/save")
    public ResuBean save (@RequestBody ScheduleJobBean scheduleJob){
        scheduleJob.setJobId("" + new SnowFlake().nextId());
        scheduleJob.setCreateTime(new Date());
        Boolean result = scheduleJobService.save(scheduleJob);
        return decide(
                result,                            // 响应结果
                MessageConstants.SAVE_SUCCESS,     // 成功消息
                MessageConstants.SAVE_FAILURE      // 失败消息
        );
    }

    /**
     * Describe: 执行一次定时任务
     * Param ScheduleJob
     * Return ResuBean 执行结果
     * */
    @RequestMapping("/run")
    public ResuBean run (String jobId){
        scheduleJobService.run(jobId);
        return success("运行成功") ;
    }

    /**
     * Describe: 更新定时任务数据
     * Param ScheduleJob
     * Return ResuBean
     * */
    @RequestMapping("/update")
    public ResuBean update (@RequestBody ScheduleJobBean scheduleJob){
        Boolean result = scheduleJobService.update(scheduleJob) ;
        return decide(
                result,                             // 响应结果
                MessageConstants.UPDATE_SUCCESS,    // 成功消息
                MessageConstants.UPDATE_FAILURE     // 失败消息
        );
    }

    /**
     * Describe: 停止定时任务
     * Param jobId
     * Return ResuBean 执行结果
     * */
    @PutMapping("/pause")
    public ResuBean pauseJob (String jobId){
        Boolean result = scheduleJobService.pause(jobId);
        return decide(
                result,              // 响应结果
                "停止成功",  // 成功消息
                "停止失败"    // 失败消息
        );
    }

    /**
     * Describe: 恢复定时任务
     * Param: jobId
     * Return: 恢复定时任务
     * */
    @RequestMapping("/resume")
    public ResuBean resumeJob (String jobId){
        Boolean result = scheduleJobService.resume(jobId);
        return decide(result,"恢复成功","恢复失败");
    }

    /**
     * Describe: 删除定时任务
     * Param: jobId
     * Return ResuBean
     * */
    @RequestMapping("/deleteJob")
    public ResuBean deleteJob (String jobId){
        Boolean result = scheduleJobService.delete(jobId);
        return decide(result,"删除成功","删除失败");
    }

}
