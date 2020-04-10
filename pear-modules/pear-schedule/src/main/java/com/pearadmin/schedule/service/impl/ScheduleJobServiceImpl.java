package com.pearadmin.schedule.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pearadmin.common.web.domain.request.PageDomain;
import com.pearadmin.schedule.domain.ScheduleJobBean;
import com.pearadmin.schedule.mapper.ScheduleJobMapper;
import com.pearadmin.schedule.service.IScheduleJobService;
import com.pearadmin.schedule.handler.ScheduleHandler;
import lombok.extern.slf4j.Slf4j;
import org.quartz.CronTrigger;
import org.quartz.Scheduler;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import java.util.List;

@Slf4j
@Service("scheduleJobService")
public class ScheduleJobServiceImpl implements IScheduleJobService {


    @Resource
    private Scheduler scheduler ;
    @Resource
    private ScheduleJobMapper scheduleJobMapper ;

    /**
     * 定时器初始化
     */
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

    @Override
    public ScheduleJobBean getById(String jobId) {
        return scheduleJobMapper.selectById(jobId);
    }

    @Override
    public PageInfo<ScheduleJobBean> page(ScheduleJobBean scheduleJob, PageDomain pageDomain) {
        PageHelper.startPage(pageDomain.getPage(),pageDomain.getLimit());
        List<ScheduleJobBean> list = scheduleJobMapper.selectList(scheduleJob);
        return new PageInfo<>(list);
    }

    @Override
    public List<ScheduleJobBean> list(ScheduleJobBean scheduleJob) {
        return scheduleJobMapper.selectList(scheduleJob);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public Boolean save(ScheduleJobBean record) {
        ScheduleHandler.createJob(scheduler,record);
        int result =  scheduleJobMapper.insert(record);
        if(result>0){
            return true;
        }else{
            return false;
        }
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public Boolean update(ScheduleJobBean record) {
        ScheduleHandler.updateJob(scheduler,record);
        int result = scheduleJobMapper.updateById(record);
        if(result>0){
            return true;
        }else{
            return false;
        }
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public Boolean pause(String jobId) {
        ScheduleJobBean scheduleJob = scheduleJobMapper.selectById(jobId);
        ScheduleHandler.pauseJob(scheduler,Long.parseLong(jobId));
        scheduleJob.setStatus("1");
        int result = scheduleJobMapper.updateById(scheduleJob);
        if(result>0){
            return true;
        }else{
            return false;
        }
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public Boolean resume(String jobId) {
        ScheduleJobBean scheduleJob = scheduleJobMapper.selectById(jobId);
        ScheduleHandler.resumeJob(scheduler,Long.parseLong(jobId));
        scheduleJob.setStatus("0");
        int result = scheduleJobMapper.updateById(scheduleJob);
        if(result>0){
            return true;
        }else{
            return false;
        }
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void run(String jobId) {
        ScheduleJobBean scheduleJob = scheduleJobMapper.selectById(jobId);
        ScheduleHandler.run(scheduler,scheduleJob);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public Boolean delete(String jobId) {
        ScheduleHandler.deleteJob(scheduler,Long.parseLong(jobId));
        int result = scheduleJobMapper.deleteById(jobId);
        if(result>0){
            return true;
        }else{
            return false;
        }
    }
}
