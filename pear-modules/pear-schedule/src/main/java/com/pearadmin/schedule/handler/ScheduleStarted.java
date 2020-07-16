package com.pearadmin.schedule.handler;

import com.pearadmin.schedule.domain.ScheduleJobBean;
import com.pearadmin.schedule.mapper.ScheduleJobMapper;
import org.quartz.CronTrigger;
import org.quartz.Scheduler;
import org.springframework.stereotype.Component;
import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import java.util.List;

@Component
public class ScheduleStarted {

    @Resource
    private Scheduler scheduler ;

    @Resource
    private ScheduleJobMapper scheduleJobMapper;

    /**
     * Describe: 加载定时任务到内存
     * Param: Scheduler ScheduleJobBean
     * Return: null
     * */
    @PostConstruct
    public void init (){
        List<ScheduleJobBean> scheduleJobList = scheduleJobMapper.selectList(null);
        for (ScheduleJobBean scheduleJob : scheduleJobList) {
            CronTrigger cronTrigger = ScheduleHandler.getCronTrigger(scheduler,Long.parseLong(scheduleJob.getJobId())) ;
            if (cronTrigger == null){
                ScheduleHandler.createJob(scheduler,scheduleJob);
            } else {
                ScheduleHandler.updateJob(scheduler,scheduleJob);
            }
        }
    }
}
