package com.pearadmin.source.aspect;

import com.pearadmin.source.handler.DynamicDataSourceContextHolder;
import com.pearadmin.source.aspect.lang.annotation.DataSource;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;
import java.lang.reflect.Method;

/**
 * Describe: 动 态 数 据 源 切 面 处 理
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */

@Aspect
@Order(1)
@Component
public class DataSourceAspect {

    /**
     * 数 据 源 切 换 切 入 点
     * */
    @Pointcut("@annotation(com.pearadmin.source.aspect.lang.annotation.DataSource)"
            + "|| @within(com.pearadmin.source.aspect.lang.annotation.DataSource)")
    public void dsPointCut() { }


    /**
     * 环 绕 通 知
     * */
    @Around("dsPointCut()")
    public Object around(ProceedingJoinPoint point) throws Throwable
    {
        DataSource dataSource = getDataSource(point);

        if (dataSource!=null)
        {
            DynamicDataSourceContextHolder.setDataSourceType(dataSource.value().name());
        }
        try
        {
            return point.proceed();
        }
        finally
        {
            DynamicDataSourceContextHolder.clearDataSourceType();
        }
    }

    /**
     * 获 取 需 要 切 换 的 数 据源
     */
    public DataSource getDataSource(ProceedingJoinPoint point)
    {
        MethodSignature signature = (MethodSignature) point.getSignature();
        Class<? extends Object> targetClass = point.getTarget().getClass();
        DataSource targetDataSource = targetClass.getAnnotation(DataSource.class);
        if (targetDataSource!=null)
        {
            return targetDataSource;
        }
        else
        {
            Method method = signature.getMethod();
            DataSource dataSource = method.getAnnotation(DataSource.class);
            return dataSource;
        }
    }
}
