package com.pearadmin.schedule.service;

import com.github.pagehelper.PageInfo;
import com.pearadmin.common.web.domain.request.PageDomain;
import com.pearadmin.schedule.domain.ScheduleJobBean;
import com.pearadmin.schedule.param.QueryJobParam;

import java.util.List;

/**
 * Describe: 定时任务服务
 * Author: 就免仪式
 * CreateTime: 2019/10/23
 * */
public interface IScheduleJobService {

    /**
     * Describe: 新增定时任务
     * Param: ScheduleJob
     * Return: Boolean 执行结果
     * */
    Boolean save(ScheduleJobBean scheduleJob);

    /**
     * Describe: 修改定时任务
     * Param: ScheduleJob
     * Return: Boolean 执行结果
     * */
    Boolean update(ScheduleJobBean scheduleJob);

    /**
     * Describe: 停止定时任务
     * Param: JobId
     * Return: Boolean 执行结果
     * */
    Boolean pause(String jobId);

    /**
     * Describe: 恢复定时任务
     * Param: JobId
     * Return: Boolean 执行结果
     * */
    Boolean resume(String jobId);

    /**
     * Describe: 运行一次定时任务
     * Param: JobId
     * Return: 无返回值
     * */
    void run(String jobId);

    /**
     * Describe: 删除定时任务
     * Param: JobId
     * Return: Boolean 执行结果
     * */
    Boolean delete(String jobId);

    /**
     * Describe: 定时任务列表
     * Param: ScheduleJob
     * Return: list
     * */
    List<ScheduleJobBean> list(QueryJobParam param);

    /**
     * Describe: 定时任务列表 分页
     * Param: ScheduleJob PageDomain
     * Return: pageInfo
     * */
    PageInfo<ScheduleJobBean> page(QueryJobParam param, PageDomain pageDomain);

    /**
     * Describe: 根据编号获取定时任务
     * Param: JobId
     * Return: Schedule
     * */
    ScheduleJobBean getById(String jobId);
}
