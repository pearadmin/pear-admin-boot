package com.pearadmin.common.constant;

/**
 * Describe: 安全框架 静态配置类
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */
public class SecurityConstants {

    /**
     * 不需要认证的地方
     */
    public static final String ANT_MATCHERS = "/login/**,/admin/**,/component/**,/favicon.ico";
}
