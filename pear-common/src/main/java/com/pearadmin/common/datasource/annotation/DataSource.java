package com.pearadmin.common.datasource.annotation;

import com.pearadmin.common.datasource.enums.DataSourceType;

import java.lang.annotation.*;

/**
 * Describe: 数 据 源 切 换 注 解
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */
@Target({ ElementType.METHOD, ElementType.TYPE })
@Retention(RetentionPolicy.RUNTIME)
@Documented
@Inherited
public @interface DataSource
{
    /**
     * 切换数据源名称
     */
    public DataSourceType value() default DataSourceType.MASTER;
}
