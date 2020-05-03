package com.pearadmin.schedule.domain;

import com.pearadmin.common.web.base.BaseDomain;
import lombok.Data;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import com.pearadmin.common.web.base.BaseController;
import org.apache.ibatis.type.Alias;

/**
 * Describe: 定时任务配置管理
 * Author: 就免仪式
 * CreateTime: 2019/10/23
 * */
@Data
@Alias("ScheduleGroup")
public class ScheduleGroupBean extends BaseDomain {

    /**
     * 组编号
     * */
    private String groupId;

    /**
     * 组名称
     * */
    private String groupName;

    /**
     * 组状态
     * */
    private String status;

}
