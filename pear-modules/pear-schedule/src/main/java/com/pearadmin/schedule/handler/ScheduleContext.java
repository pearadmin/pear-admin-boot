package com.pearadmin.schedule.handler;

import com.pearadmin.common.tools.sequence.SequenceUtil;
import com.pearadmin.common.tools.spring.SpringUtil;
import com.pearadmin.schedule.domain.ScheduleJobBean;
import com.pearadmin.schedule.domain.ScheduleLogBean;
import com.pearadmin.schedule.service.IScheduleLogService;
import org.quartz.JobExecutionContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.scheduling.quartz.QuartzJobBean;
import java.lang.reflect.Method;
import java.util.Date;

/**
 * Describe: 定时任务执行上下文
 * Author: 就免仪式
 * CreateTime: 2019/10/23
 * */
public class ScheduleContext extends QuartzJobBean {

    private static final Logger LOG = LoggerFactory.getLogger(ScheduleContext.class) ;

    /**
     * Describe: 执行任务并记录日志
     * Param: JobExecutionContext
     * Return: 无返回值
     * */
    @Override
    protected void executeInternal(JobExecutionContext context) {
        ScheduleJobBean jobBean = (ScheduleJobBean) context.getMergedJobDataMap().get(ScheduleJobBean.JOB_PARAM_KEY) ;
        IScheduleLogService scheduleJobLogService = (IScheduleLogService) SpringUtil.getBean("scheduleLogService") ;
        // 定时器日志记录
        ScheduleLogBean logBean = new ScheduleLogBean() ;
        logBean.setLogId(SequenceUtil.makeStringId());
        logBean.setJobId(jobBean.getJobId());
        logBean.setBeanName(jobBean.getBeanName());
        logBean.setParams(jobBean.getParams());
        logBean.setCreateTime(new Date());
        long beginTime = System.currentTimeMillis() ;
        try {
            Object target = SpringUtil.getBean(jobBean.getBeanName());
            Method method = target.getClass().getDeclaredMethod("run", String.class);
            method.invoke(target, jobBean.getParams());
            long executeTime = System.currentTimeMillis() - beginTime;
            logBean.setTimes((int) executeTime);
            logBean.setStatus(0);
            LOG.info("定时器 === >> " + jobBean.getJobName() + "执行成功,耗时 === >> " + executeTime);
        } catch (Exception e){
            // 异常信息
            long executeTime = System.currentTimeMillis() - beginTime;
            logBean.setTimes((int)executeTime);
            logBean.setStatus(1);
            logBean.setError(e.getCause().toString());
            e.getCause();
        } finally {
            scheduleJobLogService.insert(logBean);
        }
    }
}
