package com.pearadmin.system.domain;

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

    private String operatorType;

    private String businessType;

    private String method;

    private String requestMethod;

    private String operateName;

    private String operateUrl;

    private String operateIp;

    private String requestParam;

    private String responseParam;

    private String status;

    private String errorMsg;

    private String operateTime;

}
