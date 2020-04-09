package com.pearadmin.schedule.entity;

import com.pearadmin.common.web.base.BaseDomain;
import lombok.Data;
import org.apache.ibatis.type.Alias;

import javax.validation.constraints.AssertTrue;
import java.io.Serializable;
import java.util.Date;

/**
 * 定时任务日志
 */
@Data
@Alias("ScheduleLog")
public class ScheduleLogBean extends BaseDomain {

	private static final long serialVersionUID = 1L;

	private String logId;
	private String jobId;
	private String jobName;
	private String beanName;
	private String params;
	private Integer status;
	private String error;
	private Integer times;

}
