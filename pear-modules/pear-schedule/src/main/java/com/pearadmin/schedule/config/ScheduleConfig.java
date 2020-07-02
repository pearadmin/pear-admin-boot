package com.pearadmin.schedule.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.quartz.SchedulerFactoryBean;
import javax.sql.DataSource;
import java.util.Properties;

/**
 * Describe: 定时任务配置文件
 * Author: 就眠仪式
 * CreateTime: 2019/10/23
 * */

@Configuration
public class ScheduleConfig {

    /**
     * Describe: 定时任务工厂
     * Param: DataSource
     * Return: ScheduleFactoryBean
     * */
    @Bean
    public SchedulerFactoryBean schedulerFactoryBean(DataSource dataSource) {
        // Quartz参数配置
        Properties prop = new Properties();
        // Schedule调度器的实体名字
        prop.put("org.quartz.scheduler.instanceName", "PearScheduler");
        // 设置为AUTO时使用，默认的实现org.quartz.scheduler.SimpleInstanceGenerator是基于主机名称和时间戳生成。
        prop.put("org.quartz.scheduler.instanceId", "AUTO");
        // 线程池配置
        prop.put("org.quartz.threadPool.class", "org.quartz.simpl.SimpleThreadPool");
        prop.put("org.quartz.threadPool.threadCount", "20");
        prop.put("org.quartz.threadPool.threadPriority", "5");
        // JobStore配置:Scheduler在运行时用来存储相关的信息
        // JDBCJobStore和JobStoreTX都使用关系数据库来存储Schedule相关的信息。
        // JobStoreTX在每次执行任务后都使用commit或者rollback来提交更改。
        prop.put("org.quartz.jobStore.class", "org.quartz.impl.jdbcjobstore.JobStoreTX");
        // 集群配置：如果有多个调度器实体的话则必须设置为true
        prop.put("org.quartz.jobStore.isClustered", "true");
        // 集群配置：检查集群下的其他调度器实体的时间间隔
        prop.put("org.quartz.jobStore.clusterCheckinInterval", "15000");
        // 设置一个频度(毫秒)，用于实例报告给集群中的其他实例
        prop.put("org.quartz.jobStore.maxMisfiresToHandleAtATime", "1");
        // 触发器触发失败后再次触犯的时间间隔
        prop.put("org.quartz.jobStore.misfireThreshold", "12000");
        // 数据库表前缀
        prop.put("org.quartz.jobStore.tablePrefix", "schedule_");
        // 从 LOCKS 表查询一行并对这行记录加锁的 SQL 语句
        prop.put("org.quartz.jobStore.selectWithLockSQL", "SELECT * FROM {0}LOCKS UPDLOCK WHERE LOCK_NAME = ?");
        // 定时器工厂配置
        SchedulerFactoryBean factory = new SchedulerFactoryBean();
        factory.setDataSource(dataSource);
        factory.setQuartzProperties(prop);
        factory.setSchedulerName("PearScheduler");
        factory.setStartupDelay(30);
        factory.setApplicationContextSchedulerContextKey("applicationContextKey");
        // 可选，QuartzScheduler 启动时更新己存在的Job
        factory.setOverwriteExistingJobs(true);
        // 设置自动启动，默认为true
        factory.setAutoStartup(true);
        return factory;
    }
}
