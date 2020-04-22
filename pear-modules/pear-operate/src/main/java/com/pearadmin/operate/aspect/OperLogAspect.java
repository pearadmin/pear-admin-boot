package com.pearadmin.operate.aspect;

import com.alibaba.fastjson.JSON;
import com.pearadmin.common.tools.StringUtils;
import com.pearadmin.common.tools.serial.SnowFlake;
import com.pearadmin.common.tools.servlet.ServletUtil;
import com.pearadmin.operate.aspect.lang.annotation.OperLog;
import com.pearadmin.operate.aspect.lang.enums.BusinessStatus;
import com.pearadmin.operate.domain.SysOperLog;
import com.pearadmin.operate.service.ISysOperLogService;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.Signature;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.lang.reflect.Method;
import java.util.Map;

@Aspect
@Component
public class OperLogAspect {


    @Resource
    private ISysOperLogService sysOperLogService;

    // 配置织入点
    @Pointcut("@annotation(com.pearadmin.operate.aspect.lang.annotation.OperLog)")
    public void logPointCut()
    {
    }

    /**
     * 处理完请求后执行
     *
     * @param joinPoint 切点
     */
    @AfterReturning(pointcut = "logPointCut()", returning = "jsonResult")
    public void doAfterReturning(JoinPoint joinPoint, Object jsonResult)
    {
        handleLog(joinPoint, null, jsonResult);
    }

    /**
     * 拦截异常操作
     *
     * @param joinPoint 切点
     * @param e 异常
     */
    @AfterThrowing(value = "logPointCut()", throwing = "e")
    public void doAfterThrowing(JoinPoint joinPoint, Exception e)
    {
        handleLog(joinPoint, e, null);
    }

    /**
     * 日志入库操作
     * */
    protected void handleLog(final JoinPoint joinPoint, final Exception e, Object jsonResult)
    {
        // 将日志进行入库操作
        try {
            OperLog controllerLog = getAnnotationLog(joinPoint);

            if(controllerLog==null){
                return;
            }
            // 获取当前用户

            // 数据库日志操作
            SysOperLog log = new SysOperLog();
            log.setStatus(BusinessStatus.SUCCESS);
            // 请求地址

            // 返回参数
            log.setRequestParam(JSON.toJSONString(jsonResult));

            log.setOperateUrl(ServletUtil.getRequest().getRequestURI());

            if (e != null)
            {
                log.setStatus(BusinessStatus.FAIL);
                log.setErrorMsg(StringUtils.substring(e.getMessage(), 0, 2000));
            }

            String className = joinPoint.getTarget().getClass().getName();
            String methodName = joinPoint.getSignature().getName();
            log.setMethod(className + "." + methodName + "()");
            // 设置请求方式
            log.setRequestMethod(ServletUtil.getRequest().getMethod());

            getControllerMethodDescription(controllerLog,log);

            log.setLogId(new SnowFlake().nextId()+"");
            // 保存日志到数据库中
            sysOperLogService.save(log);

        }catch (Exception exp){
            exp.printStackTrace();
        }
    }

    /**
     * 获取注解中对方法的描述信息 用于Controller层注解
     *
     * @param log 日志
     * @param operLog 操作日志
     * @throws Exception
     */
    public void getControllerMethodDescription(OperLog log, SysOperLog operLog) throws Exception
    {
        // 设置action动作
        operLog.setBusinessType(log.businessType());
        // 设置标题
        operLog.setTitle(log.title());
        // 设置操作人类别
        operLog.setOperatorType(log.operatorType());
        // 保存请求参数
        setRequestValue(operLog);
    }

    /**
     * 获取请求的参数，放到log中
     *
     * @param operLog 操作日志
     * @throws Exception 异常
     */
    private void setRequestValue(SysOperLog operLog) throws Exception
    {
        Map<String, String[]> map = ServletUtil.getRequest().getParameterMap();
        String params = JSON.toJSONString(map);
        operLog.setRequestParam(StringUtils.substring(params, 0, 2000));
    }

    /**
     * 是否存在注解，如果存在就获取
     */
    private OperLog getAnnotationLog(JoinPoint joinPoint) throws Exception
    {
        Signature signature = joinPoint.getSignature();
        MethodSignature methodSignature = (MethodSignature) signature;
        Method method = methodSignature.getMethod();

        if (method != null)
        {
            return method.getAnnotation(OperLog.class);
        }
        return null;
    }


}
