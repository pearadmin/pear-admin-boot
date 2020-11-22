package com.pearadmin.security.support;

import com.alibaba.fastjson.JSON;
import com.pearadmin.common.tools.servlet.ServletUtil;
import com.pearadmin.common.tools.text.StringUtils;
import com.pearadmin.common.web.domain.response.Result;
import com.wf.captcha.utils.CaptchaUtil;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author John Ming
 * @createTime 2020/11/20
 */
@Component
public class SecurityVerifyCodeFilter extends OncePerRequestFilter implements Filter {

    private String defaultFilterProcessUrl = "/login";
    private String method = "POST";

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain chain) throws ServletException, IOException {
        if (method.equalsIgnoreCase(request.getMethod()) && defaultFilterProcessUrl.equals(request.getServletPath())) {
            // 登录请求校验验证码，非登录请求不用校验
            String Captcha = ServletUtil.getRequest().getParameter("captcha");
            response.setContentType("application/json;charset=UTF-8");
            if (StringUtils.isEmpty(Captcha)){
                //删除缓存里的验证码信息
                response.getWriter().write(JSON.toJSONString(Result.failure("验证码不能为空!")));
                return;
            }
            if (!CaptchaUtil.ver(ServletUtil.getRequest().getParameter("captcha"),ServletUtil.getRequest())){
                response.getWriter().write(JSON.toJSONString(Result.failure("验证码错误!")));
                return;
            }
        }
        chain.doFilter(request, response);
    }
}
