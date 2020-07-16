package com.pearadmin.common.logging.domain;

import com.pearadmin.common.logging.enums.BusinessType;
import com.pearadmin.common.logging.enums.RequestMethod;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * 日志组件
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
