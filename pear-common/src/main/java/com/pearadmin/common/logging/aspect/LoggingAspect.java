package com.pearadmin.common.logging.aspect;

import com.pearadmin.common.logging.domain.Logging;
import com.pearadmin.common.logging.enums.RequestMethod;
import com.pearadmin.common.logging.factory.LoggingFactory;
import com.pearadmin.common.tools.security.SecurityUtil;
import com.pearadmin.common.tools.sequence.SequenceUtil;
import com.pearadmin.common.tools.servlet.ServletUtil;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.stereotype.Component;
import javax.annotation.Resource;
import java.lang.reflect.Method;
import java.util.Date;

/**
 * 切 面 编 程 实 现 -- [就眠仪式]
 * */
@Aspect
@Component
public class LoggingAspect {

    @Resource
    private LoggingFactory loggingFactory;

    /**
     * 切 面 编 程
     * */
    @Pointcut("@annotation(com.pearadmin.common.logging.annotation.Logging) || @within(com.pearadmin.common.logging.annotation.Logging)")
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
            com.pearadmin.common.logging.annotation.Logging loggingAnnotation = getLogging(joinPoint);
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
            // 操 作 地 址
            logging.setOperateAddress(ServletUtil.getRemoteHost().equals("0:0:0:0:0:0:0:1") ? "127.0.0.1":ServletUtil.getRemoteHost());
            // 请 求 方 式
            logging.setMethod(ServletUtil.getRequestURI());
            // 创 建 时 间
            logging.setCreateTime(new Date());
            // 请 求 方 法
            logging.setRequestMethod(RequestMethod.valueOf(ServletUtil.getMethod()));
            // 访 问 方 法
            logging.setOperateUrl(ServletUtil.getRequestURI());
            // 浏 览 器 类 型
            logging.setBrowser(ServletUtil.getBrowser());
            // 请 求 参 数
            logging.setRequestBody(ServletUtil.getBody());
            // 操 作 系 统
            logging.setSystemOs(ServletUtil.getSystem());
            // 写 死 用 户
            logging.setOperateName(SecurityUtil.currentUser().getName());
            // 是 否 成 功
            logging.setSuccess(true);
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
    public com.pearadmin.common.logging.annotation.Logging getLogging(ProceedingJoinPoint point) {
        MethodSignature signature = (MethodSignature) point.getSignature();
        Class<? extends Object> targetClass = point.getTarget().getClass();
        com.pearadmin.common.logging.annotation.Logging targetLogging = targetClass.getAnnotation(com.pearadmin.common.logging.annotation.Logging.class);
        if ( targetLogging != null) {
            return targetLogging;
        } else {
            Method method = signature.getMethod();
            com.pearadmin.common.logging.annotation.Logging logging = method.getAnnotation(com.pearadmin.common.logging.annotation.Logging.class);
            return logging;
        }
    }
}
