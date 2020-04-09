package com.pearadmin.controller.schedule;

import com.github.pagehelper.PageInfo;
import com.pearadmin.common.constant.MessageConstants;
import com.pearadmin.common.tools.serial.SnowFlake;
import com.pearadmin.common.web.base.BaseController;
import com.pearadmin.common.web.domain.ResuBean;
import com.pearadmin.common.web.domain.ResuTable;
import com.pearadmin.common.web.domain.request.PageDomain;
import com.pearadmin.schedule.entity.ScheduleJobBean;
import com.pearadmin.schedule.service.IScheduleJobService;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import javax.annotation.Resource;
import java.util.Date;

@RestController
@RequestMapping("schedule/job")
public class ScheduleJobController extends BaseController {

    @Resource
    private IScheduleJobService scheduleJobService ;

    @GetMapping("main")
    public ModelAndView main(ModelAndView modelAndView){
        modelAndView.setViewName("schedule/job/main");
        return modelAndView;
    }

    @GetMapping("data")
    public ResuTable data(PageDomain pageDomain){
       PageInfo<ScheduleJobBean> pageInfo =  scheduleJobService.page(null,pageDomain);

       System.out.println(pageInfo.toString());
       return pageTable(pageInfo.getList(),pageInfo.getTotal());
    }

    @GetMapping("add")
    public ModelAndView add(ModelAndView modelAndView){
        modelAndView.setViewName("schedule/job/add");
        return modelAndView;
    }

    @GetMapping("edit")
    public ModelAndView edit(ModelAndView modelAndView,String jobId){
        modelAndView.addObject("scheduleJob",scheduleJobService.getById(jobId));
        modelAndView.setViewName("schedule/job/edit");
        return modelAndView;
    }

    /**
     * 添加定时器
     */
    @RequestMapping("/save")
    public ResuBean save (@RequestBody ScheduleJobBean scheduleJob){
        System.out.println(scheduleJob.toString());
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
     * 执行一次定时器
     */
    @RequestMapping("/run")
    public ResuBean run (String jobId){
        scheduleJobService.run(jobId);
        return success("运行成功") ;
    }

    /**
     * 更新定时器
     */
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
     * 停止定时器
     */
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
     * 恢复定时器
     */
    @RequestMapping("/resume")
    public ResuBean resumeJob (String jobId){

        Boolean result = scheduleJobService.resume(jobId);

        return decide(result,"恢复成功","恢复失败");
    }

    /**
     * 删除定时器
     */
    @RequestMapping("/deleteJob")
    public ResuBean deleteJob (String jobId){
        Boolean result = scheduleJobService.delete(jobId);
        return decide(result,"删除成功","删除失败");
    }

}
