package com.pearadmin.security.handler;

import com.alibaba.fastjson.JSON;
import com.pearadmin.common.web.domain.response.Result;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.LockedException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Describe: 自定义 Security 用户登录失败处理类
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */
@Component
public class CustomAuthenticationFailureHandler implements AuthenticationFailureHandler {

    @Override
    public void onAuthenticationFailure(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, AuthenticationException e) throws IOException, ServletException {
        httpServletResponse.setHeader("Content-type","application/json;charset=UTF-8");
        httpServletResponse.setCharacterEncoding("UTF-8");
        Result resuBean = new Result();
        resuBean.setCode(500);
        resuBean.setSuccess(false);
        resuBean.setMsg("登陆失败");
        if(e instanceof UsernameNotFoundException){
            resuBean.setMsg("用户名不存在");
            httpServletResponse.getWriter().write(JSON.toJSONString(resuBean));
            return;
        }
        if(e instanceof LockedException){
            resuBean.setMsg("用户冻结");
            httpServletResponse.getWriter().write(JSON.toJSONString(resuBean));
            return;
        }
        if(e instanceof BadCredentialsException){
            resuBean.setMsg("账户密码不正确");
            httpServletResponse.getWriter().write(JSON.toJSONString(resuBean));
            return;
        }
        httpServletResponse.getWriter().write(JSON.toJSONString(resuBean));
    }
}
