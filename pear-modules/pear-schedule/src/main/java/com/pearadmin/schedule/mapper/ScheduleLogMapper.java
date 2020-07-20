package com.pearadmin.schedule.mapper;

import com.pearadmin.schedule.domain.ScheduleLogBean;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * Describe: 定时任务日志接口
 * Author: 就免仪式
 * CreateTime: 2019/10/23
 * */
@Mapper
public interface ScheduleLogMapper {

    /**
     * Describe: 插入定时任务日志
     * Param: ScheduleLogBean
     * Return: Integer 影响条数
     * */
    Integer insert(ScheduleLogBean scheduleLog);

    /**
     * Describe: 根据条件查询定时任务日志列表
     * Param: ScheduleLogBean
     * Return: Integer 影响条数
     * */
    List<ScheduleLogBean> selectList(ScheduleLogBean scheduleLogBean);
}