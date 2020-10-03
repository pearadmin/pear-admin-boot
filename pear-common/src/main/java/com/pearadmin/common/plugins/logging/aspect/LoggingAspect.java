package com.pearadmin.common.plugins.logging.aspect;

import com.pearadmin.common.plugins.logging.domain.Logging;
import com.pearadmin.common.plugins.logging.enums.LoggingType;
import com.pearadmin.common.plugins.logging.factory.LoggingFactory;
import com.pearadmin.common.tools.sequence.SequenceUtil;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.stereotype.Component;
import javax.annotation.Resource;
import java.lang.reflect.Method;

/**
 * Describe: 日 志 切 面 实 现
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */
@Aspect
@Component
public class LoggingAspect {

    @Resource
    private LoggingFactory loggingFactory;

    /**
     * 切 面 编 程
     * */
    @Pointcut("@annotation(com.pearadmin.common.plugins.logging.annotation.Logging) || @within(com.pearadmin.common.plugins.logging.annotation.Logging)")
    public void dsPointCut() { }

    /**
     * 处 理 系 统 日 志
     * */
    @Around("dsPointCut()")
    private Object around(ProceedingJoinPoint joinPoint) throws Throwable
    {
        Logging logging = new Logging();

        Object result;

        try {
            com.pearadmin.common.plugins.logging.annotation.Logging loggingAnnotation = getLogging(joinPoint);
            // 日 志 编 号
            logging.setId(SequenceUtil.makeStringId());
            // 模 块 标 题
            logging.setTitle(loggingAnnotation.value());
            // 模 块 标 题
            logging.setTitle(loggingAnnotation.title());
            // 模 块 描 述
            logging.setDescription(loggingAnnotation.describe());
            // 业 务 类 型
            logging.setBusinessType(loggingAnnotation.type());
            // 是 否 成 功
            logging.setSuccess(true);
            // 日 志 类 型
            logging.setLoggingType(LoggingType.OPERATE);
            // 执 行 方 法
            result = joinPoint.proceed();

        }catch (Exception exception){
            logging.setSuccess(false);
            logging.setErrorMsg(exception.getMessage());
            throw exception;
        }finally {
            loggingFactory.record(logging);
        }
        return result;
    }

    /**
     * 获 取 注 解
     * */
    public com.pearadmin.common.plugins.logging.annotation.Logging getLogging(ProceedingJoinPoint point) {
        MethodSignature signature = (MethodSignature) point.getSignature();
        Class<? extends Object> targetClass = point.getTarget().getClass();
        com.pearadmin.common.plugins.logging.annotation.Logging targetLogging = targetClass.getAnnotation(com.pearadmin.common.plugins.logging.annotation.Logging.class);
        if ( targetLogging != null) {
            return targetLogging;
        } else {
            Method method = signature.getMethod();
            com.pearadmin.common.plugins.logging.annotation.Logging logging = method.getAnnotation(com.pearadmin.common.plugins.logging.annotation.Logging.class);
            return logging;
        }
    }
}
