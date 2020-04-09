package com.pearadmin.source.aspect.lang.annotation;

import com.pearadmin.source.aspect.lang.enums.DataSourceType;

import java.lang.annotation.*;

@Target({ ElementType.METHOD, ElementType.TYPE })
@Retention(RetentionPolicy.RUNTIME)
@Documented
@Inherited
public @interface DataSource {

    /**
     * 切换数据源名称
     */
    DataSourceType value() default DataSourceType.MASTER;
}
