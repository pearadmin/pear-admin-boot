package com.pearadmin.schedule.controller;

import com.github.pagehelper.PageInfo;
import com.pearadmin.common.tools.sequence.SequenceUtil;
import com.pearadmin.common.web.base.BaseController;
import com.pearadmin.common.web.domain.request.PageDomain;
import com.pearadmin.common.web.domain.response.Result;
import com.pearadmin.common.web.domain.response.ResultTable;
import com.pearadmin.schedule.domain.ScheduleJobBean;
import com.pearadmin.schedule.param.QueryJobParam;
import com.pearadmin.schedule.service.IScheduleJobService;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import javax.annotation.Resource;
import java.time.LocalDateTime;
import java.util.Date;

/**
 * Describe: 定时任务控制器
 * Author: 就眠仪式
 * createTime: 2019/10/23
 * */
@RestController
@RequestMapping("schedule/job")
public class ScheduleJobController extends BaseController {

    /**
     * Describe: 定时任务服务
     * */
    @Resource
    private IScheduleJobService scheduleJobService;

    /**
     * Describe: 获取定时任务列表视图
     * Param ModelAndView
     * Return 定时任务列表视图
     * */
    @GetMapping("main")
    public ModelAndView main(){
        return JumpPage("schedule/job/main");
    }

    /**
     * Describe: 获取定时任务列表数据
     * Param PageDomain
     * Return 定时任务列表数据
     * */
    @GetMapping("data")
    public ResultTable data(PageDomain pageDomain, QueryJobParam param){
       PageInfo<ScheduleJobBean> pageInfo =  scheduleJobService.page(param,pageDomain);
       return pageTable(pageInfo.getList(),pageInfo.getTotal());
    }

    /**
     * Describe: 获取定时任务新增视图
     * Param ModelAndView
     * Return ModelAndView
     * */
    @GetMapping("add")
    public ModelAndView add(){
        return JumpPage("schedule/job/add");
    }

    /**
     * Describe: 获取定时任务修改视图
     * Param ModelAndView
     * Return ModelAndView
     * */
    @GetMapping("edit")
    public ModelAndView edit(Model model, String jobId){
        model.addAttribute("scheduleJob",scheduleJobService.getById(jobId));
        return JumpPage("schedule/job/edit");
    }

    /**
     * Describe: 保存定时任务数据
     * Param ScheduleJob
     * Return Result
     * */
    @RequestMapping("/save")
    public Result save (@RequestBody ScheduleJobBean scheduleJob){
        scheduleJob.setJobId(SequenceUtil.makeStringId());
        scheduleJob.setCreateTime(LocalDateTime.now());
        Boolean result = scheduleJobService.save(scheduleJob);
        return decide(result);
    }

    /**
     * Describe: 执行一次定时任务
     * Param ScheduleJob
     * Return Result 执行结果
     * */
    @RequestMapping("/run")
    public Result run (String jobId){
        scheduleJobService.run(jobId);
        return success("运行成功") ;
    }

    /**
     * Describe: 更新定时任务数据
     * Param ScheduleJob
     * Return Result
     * */
    @RequestMapping("/update")
    public Result update (@RequestBody ScheduleJobBean scheduleJob){
        Boolean result = scheduleJobService.update(scheduleJob) ;
        return decide(result);
    }

    /**
     * Describe: 停止定时任务
     * Param jobId
     * Return Result 执行结果
     * */
    @PutMapping("/pause")
    public Result pauseJob (String jobId){
        Boolean result = scheduleJobService.pause(jobId);
        return decide(
                result,
                "停止成功",
                "停止失败"
        );
    }

    /**
     * Describe: 恢复定时任务
     * Param: jobId
     * Return: 恢复定时任务
     * */
    @RequestMapping("/resume")
    public Result resumeJob (String jobId){
        Boolean result = scheduleJobService.resume(jobId);
        return decide(result,"恢复成功","恢复失败");
    }

    /**
     * Describe: 删除定时任务
     * Param: jobId
     * Return Result
     * */
    @RequestMapping("/remove/{id}")
    public Result deleteJob (@PathVariable("id") String jobId){
        Boolean result = scheduleJobService.delete(jobId);
        return decide(result,"删除成功","删除失败");
    }
}
