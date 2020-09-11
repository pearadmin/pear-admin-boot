package com.pearadmin.security.handler;

import ch.qos.logback.classic.spi.ILoggingEvent;
import com.alibaba.fastjson.JSON;
import com.pearadmin.common.logging.domain.Logging;
import com.pearadmin.common.logging.enums.BusinessType;
import com.pearadmin.common.logging.enums.LoggingType;
import com.pearadmin.common.logging.enums.RequestMethod;
import com.pearadmin.common.logging.service.LoggingService;
import com.pearadmin.common.tools.security.SecurityUtil;
import com.pearadmin.common.tools.sequence.SequenceUtil;
import com.pearadmin.common.tools.servlet.ServletUtil;
import com.pearadmin.common.web.domain.response.Result;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.LockedException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

/**
 * Describe: 自定义 Security 用户登录失败处理类
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */
@Component
public class CustomAuthenticationFailureHandler implements AuthenticationFailureHandler {

    @Resource
    private LoggingService loggingService;

    @Override
    public void onAuthenticationFailure(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, AuthenticationException e) throws IOException, ServletException {
        httpServletResponse.setHeader("Content-type","application/json;charset=UTF-8");
        httpServletResponse.setCharacterEncoding("UTF-8");
        Result result = new Result();
        result.setCode(500);
        result.setSuccess(false);
        result.setMsg("登陆失败");
        if(e instanceof UsernameNotFoundException){
            result.setMsg("用户名不存在");
            httpServletResponse.getWriter().write(JSON.toJSONString(result));
            return;
        }
        if(e instanceof LockedException){
            result.setMsg("用户冻结");
            httpServletResponse.getWriter().write(JSON.toJSONString(result));
            return;
        }
        if(e instanceof BadCredentialsException){
            result.setMsg("账户密码不正确");
            httpServletResponse.getWriter().write(JSON.toJSONString(result));
            return;
        }
        Logging logging = new Logging();
        logging.setId(SequenceUtil.makeStringId());
        logging.setTitle("登录");
        logging.setDescription(result.getMsg());
        logging.setBusinessType(BusinessType.OTHER);
        logging.setSuccess(false);
        logging.setLoggingType(LoggingType.LOGIN);
        loggingService.save(logging);
        httpServletResponse.getWriter().write(JSON.toJSONString(result));
    }
}
