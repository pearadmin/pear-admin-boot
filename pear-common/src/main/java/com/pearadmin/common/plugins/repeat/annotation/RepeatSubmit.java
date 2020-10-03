package com.pearadmin.common.plugins.repeat.annotation;

import java.lang.annotation.*;

/**
 * 自定义注解防止表单重复提交
 */
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface RepeatSubmit
{

}