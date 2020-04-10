package com.pearadmin.schedule.service;

import com.github.pagehelper.PageInfo;
import com.pearadmin.common.web.domain.request.PageDomain;
import com.pearadmin.schedule.domain.ScheduleJobBean;

import java.util.List;

public interface IScheduleJobService {

    Boolean save(ScheduleJobBean scheduleJob);

    Boolean update(ScheduleJobBean scheduleJob);

    Boolean pause(String jobId);

    Boolean resume(String jobId);

    void run(String jobId);

    Boolean delete(String jobId);

    List<ScheduleJobBean> list(ScheduleJobBean scheduleJob);

    PageInfo<ScheduleJobBean> page(ScheduleJobBean scheduleJob, PageDomain pageDomain);

    ScheduleJobBean getById(String jobId);
}
