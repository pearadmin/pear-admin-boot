package com.pearadmin.resource.pageable.aspect;

import com.pearadmin.resource.pageable.annotation.Pageable;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import java.lang.reflect.Method;

public class PageableAspect {


    @Pointcut("@annotation(com.pearadmin.resource.pageable.annotation.Pageable) || @within(com.pearadmin.resource.pageable.annotation.Pageable)")
    public void dsPointCut() {

    }

    /**
     * 处 理 系 统 日 志
     * */
    @Around("dsPointCut()")
    private Object around(ProceedingJoinPoint joinPoint) throws Throwable
    {

        Object result;

        try {

            result = joinPoint.proceed();

        }catch (Exception exception){

            throw exception;

        }finally {


        }

        return result;
    }
    /**
     * Get a solution to the current method or class label
     */
    public Pageable getPageable(ProceedingJoinPoint point) {
        MethodSignature signature = (MethodSignature) point.getSignature();
        Class<? extends Object> targetClass = point.getTarget().getClass();
        Pageable targetLogging = targetClass.getAnnotation(Pageable.class);
        if ( targetLogging != null) {
            return targetLogging;
        } else {
            Method method = signature.getMethod();
            Pageable logging = method.getAnnotation(Pageable.class);
            return logging;
        }
    }

}
