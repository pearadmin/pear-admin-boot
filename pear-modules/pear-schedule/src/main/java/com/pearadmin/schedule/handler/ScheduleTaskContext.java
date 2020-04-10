package com.pearadmin.schedule.handler;

import com.pearadmin.common.tools.serial.SnowFlake;
import com.pearadmin.common.tools.spring.SpringContextUtil;
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
 * 定时器执行日志记录
 */
public class ScheduleTaskContext extends QuartzJobBean {

    private static final Logger LOG = LoggerFactory.getLogger(ScheduleTaskContext.class) ;

    @Override
    protected void executeInternal(JobExecutionContext context) {
        ScheduleJobBean jobBean = (ScheduleJobBean) context.getMergedJobDataMap().get(ScheduleJobBean.JOB_PARAM_KEY) ;
        IScheduleLogService scheduleJobLogService = (IScheduleLogService) SpringContextUtil.getBean("scheduleJobLogService") ;
        // 定时器日志记录
        ScheduleLogBean logBean = new ScheduleLogBean() ;
        logBean.setLogId("" + new SnowFlake().nextId());
        logBean.setJobId(jobBean.getJobId());
        logBean.setBeanName(jobBean.getBeanName());
        logBean.setParams(jobBean.getParams());
        logBean.setCreateTime(new Date());
        long beginTime = System.currentTimeMillis() ;
        try {
            // 加载并执行定时器的 run 方法
            Object target = SpringContextUtil.getBean(jobBean.getBeanName());
            Method method = target.getClass().getDeclaredMethod("run", String.class);
            method.invoke(target, jobBean.getParams());
            long executeTime = System.currentTimeMillis() - beginTime;
            logBean.setTimes((int) executeTime);
            logBean.setStatus(0);
            LOG.info("定时器 === >> "+jobBean.getJobId()+"执行成功,耗时 === >> " + executeTime);
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
