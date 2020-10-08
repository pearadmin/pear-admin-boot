package com.pearadmin.common.plugins.logging.domain;

import com.pearadmin.common.plugins.logging.enums.BusinessType;
import com.pearadmin.common.plugins.logging.enums.LoggingType;
import com.pearadmin.common.plugins.logging.enums.RequestMethod;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * Describe: 日 志 实 体 类
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Logging {

    /**
     * 编号
     * */
    private String id;

    /**
     * 标题
     * */
    private String title;

    /**
     * 描述
     * */
    private String description;

    /**
     * 业务类型
     * */
    private BusinessType businessType;

    /**
     * 请求方式
     * */
    private RequestMethod requestMethod;

    /**
     * 请求的方法
     * */
    private String method;

    /**
     * 请求的连接
     * */
    private String operateUrl;

    /**
     * 用户 IP 地址
     * */
    private String operateAddress;

    /**
     * 请 求 参 数
     * */
    private String requestParam;

    /**
     * 获 取 请 求 体
     * */
    private String requestBody;

    /**
     * 接 口 响 应 数 据
     * */
    private String responseBody;

    /**
     * 接 口 执 行 状 态
     * */
    private boolean success;

    /**
     * 日 志 类 型
     * */
    private LoggingType loggingType;

    /**
     * 异 常 信 息
     * */
    private String errorMsg;

    /**
     * 使用浏览器
     * */
    private String Browser;

    /**
     * 操作系统
     * */
    private String systemOs;

    /**
     * 操 作 时 间
     * */
    private Date createTime;

    /**
     * 操 作 人 员 名 称
     * */
    private String operateName;

    /**
     * 扩 展 信 息
     * */
    private Map<String,String> map = new HashMap<>();
}
