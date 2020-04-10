package com.pearadmin.schedule.service;

import com.github.pagehelper.PageInfo;
import com.pearadmin.common.web.domain.request.PageDomain;
import com.pearadmin.schedule.domain.ScheduleLogBean;

import java.util.List;

public interface IScheduleLogService {

    Boolean insert(ScheduleLogBean scheduleLog);

    List<ScheduleLogBean> list(ScheduleLogBean scheduleLogBean);

    PageInfo<ScheduleLogBean> page(ScheduleLogBean scheduleLogBean, PageDomain pageDomain);

}
