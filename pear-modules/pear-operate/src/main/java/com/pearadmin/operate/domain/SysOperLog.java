package com.pearadmin.operate.domain;

import com.pearadmin.operate.aspect.lang.enums.BusinessStatus;
import com.pearadmin.operate.aspect.lang.enums.BusinessType;
import com.pearadmin.operate.aspect.lang.enums.OperatorType;
import lombok.Data;

/**
 * Describe: 日志实体类
 * Author: 就眠仪式
 * CreateTime: 2020-04-22
 * */
@Data
public class SysOperLog {

    private String logId;

    private String title;

    private OperatorType operatorType;

    private BusinessType businessType;

    private String method;

    private String requestMethod;

    private String operateName;

    private String operateUrl;

    private String operateIp;

    private String requestParam;

    private String responseParam;

    private BusinessStatus status;

    private String errorMsg;

    private String operateTime;

}
