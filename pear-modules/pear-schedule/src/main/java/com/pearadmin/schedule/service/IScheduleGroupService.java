package com.pearadmin.schedule.service;

import com.github.pagehelper.PageInfo;
import com.pearadmin.common.web.domain.request.PageDomain;
import com.pearadmin.schedule.domain.ScheduleGroupBean;

import java.util.List;

public interface IScheduleGroupService {

    List<ScheduleGroupBean> list(ScheduleGroupBean scheduleGroupBean);

    PageInfo<ScheduleGroupBean> page(ScheduleGroupBean scheduleGroupBean, PageDomain pageDomain);

    Boolean save(ScheduleGroupBean scheduleGroupBean);

}
