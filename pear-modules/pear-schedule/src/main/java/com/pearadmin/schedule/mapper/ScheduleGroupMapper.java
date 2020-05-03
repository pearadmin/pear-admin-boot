package com.pearadmin.schedule.mapper;

import com.pearadmin.schedule.domain.ScheduleGroupBean;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ScheduleGroupMapper {

    List<ScheduleGroupBean> selectList(ScheduleGroupBean scheduleGroupBean);

    Integer insert(ScheduleGroupBean scheduleGroupBean);
}
