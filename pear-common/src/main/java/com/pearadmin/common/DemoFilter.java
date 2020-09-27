package com.pearadmin.common;

import com.alibaba.fastjson.JSON;
import com.pearadmin.common.tools.servlet.ServletUtil;
import com.pearadmin.common.web.domain.response.Result;
import javax.servlet.*;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class DemoFilter implements Filter {

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {

        if(!ServletUtil.getMethod().equals("GET")){

            Result result = new Result();
            result.setSuccess(false);
            result.setMsg("演示环境，禁止操作");
            result.setCode(500);
            HttpServletResponse response =(HttpServletResponse) servletResponse;
            response.setHeader("Content-type","application/json;charset=UTF-8");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(JSON.toJSONString(result));
            return;
        }
        filterChain.doFilter(servletRequest,servletResponse);
    }
}
