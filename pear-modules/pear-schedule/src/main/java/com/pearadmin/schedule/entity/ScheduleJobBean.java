package com.pearadmin.schedule.entity;

import com.pearadmin.common.web.base.BaseDomain;
import lombok.Data;
import org.apache.ibatis.type.Alias;

/**
 * 定时任务配置管理
 */
@Data
@Alias("ScheduleJob")
public class ScheduleJobBean extends BaseDomain {
	private static final long serialVersionUID = 1L;
	
	/**
	 * 任务调度参数key
	 */
    public static final String JOB_PARAM_KEY = "JOB_PARAM_KEY";

    /**
	 * 任务编号
	 * */
	private String jobId;

	/**
	 * 任务名称
	 * */
	private String jobName;

	/**
	 * 运行类
	 * */
	private String beanName;

	/**
	 * 携带参数
	 * */
	private String params;

	/**
	 * cron 表达式
	 * */
	private String cronExpression;

	/**
	 * 状态
	 * */
	private String status;

	/**
	 * 分组编号
	 * */
	private String groupId;


}
