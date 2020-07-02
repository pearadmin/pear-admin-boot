package com.pearadmin.resource.logging.aspect;

import com.pearadmin.resource.logging.annotation.Logging;
import com.pearadmin.resource.logging.enums.RequestMethod;
import com.pearadmin.resource.logging.factory.LoggingFactory;
import com.pearadmin.resource.logging.factory.SequenceFactory;
import com.pearadmin.resource.logging.utils.ServletContext;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;

import javax.annotation.Resource;
import java.lang.reflect.Method;
import java.util.Date;

/**
 * 切 面 编 程 实 现 -- [就眠仪式]
 * */
@Aspect
public class LoggingAspect {

    @Resource
    private LoggingFactory loggingFactory;

    private SequenceFactory sequenceFactory;

    private boolean enable;


    @Pointcut("@annotation(com.pearadmin.resource.logging.annotation.Logging) || @within(com.pearadmin.resource.logging.annotation.Logging)")
    public void dsPointCut() {

    }

    /**
     * 处 理 系 统 日 志
     * */
    @Around("dsPointCut()")
    private Object around(ProceedingJoinPoint joinPoint) throws Throwable
    {
        com.pearadmin.resource.logging.domain.Logging logging = new com.pearadmin.resource.logging.domain.Logging();

        Object result;

        try {
            Logging loggingAnnotation = getLogging(joinPoint);
            // 日 志 编 号
            logging.setId(sequenceFactory.nextStringId());
            // 模 块 标 题
            logging.setTitle(loggingAnnotation.value());
            // 模 块 标 题
            logging.setTitle(loggingAnnotation.title());
            // 模 块 描 述
            logging.setDescription(loggingAnnotation.describe());
            // 业 务 类 型
            logging.setBusinessType(loggingAnnotation.type());
            // 操 作 地 址
            logging.setOperateAddress(ServletContext.getRemoteHost());
            // 请 求 方 式
            logging.setMethod(ServletContext.getRequestURI());
            // 创 建 时 间
            logging.setCreateTime(new Date());
            // 请 求 方 法
            logging.setRequestMethod(RequestMethod.valueOf(ServletContext.getMethod()));
            // 访 问 方 法
            logging.setOperateUrl(ServletContext.getRequestURI());
            // 浏 览 器 类 型
            logging.setBrowser(ServletContext.getBrowser());
            // 请 求 参 数
            logging.setRequestBody(ServletContext.getBody());
            // 操 作 系 统
            logging.setSystemOs(ServletContext.getSystem());
            // 写 死 用 户
            logging.setOperateName("就眠仪式");
            // 是 否 成 功
            logging.setSuccess(true);

            // 执 行 方 法
            result = joinPoint.proceed();

        }catch (Exception exception){

            logging.setSuccess(false);

            logging.setErrorMsg(exception.getMessage());

            throw exception;

        }finally {

            if(enable) {
                loggingFactory.record(logging);
            }else{
                System.out.println("日志组件关闭服务");
            }
        }

        return result;
    }
    /**
     * Get a solution to the current method or class label
     */
    public Logging getLogging(ProceedingJoinPoint point) {
        MethodSignature signature = (MethodSignature) point.getSignature();
        Class<? extends Object> targetClass = point.getTarget().getClass();
        Logging targetLogging = targetClass.getAnnotation(Logging.class);
        if ( targetLogging != null) {
            return targetLogging;
        } else {
            Method method = signature.getMethod();
            Logging logging = method.getAnnotation(Logging.class);
            return logging;
        }
    }

    /**
     * 构 造 方 法
     * */
    public LoggingAspect(SequenceFactory sequenceFactory,boolean enable){
        this.sequenceFactory = sequenceFactory;
        this.enable = enable;
    }

}
