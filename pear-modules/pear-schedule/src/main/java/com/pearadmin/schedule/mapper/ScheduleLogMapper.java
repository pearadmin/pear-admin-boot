package com.pearadmin.schedule.mapper;



import com.pearadmin.schedule.domain.ScheduleLogBean;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ScheduleLogMapper {


    Integer insert(ScheduleLogBean scheduleLog);

    List<ScheduleLogBean> selectList(ScheduleLogBean scheduleLogBean);

}