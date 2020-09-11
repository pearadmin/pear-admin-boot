package com.pearadmin.common;

import com.alibaba.fastjson.JSON;
import com.pearadmin.common.tools.servlet.ServletUtil;
import com.pearadmin.common.web.domain.response.Result;
import org.springframework.stereotype.Component;
import javax.servlet.*;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Describe: 演 示 环 境 过 滤 器
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */
public class DemoFilter implements Filter {

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
       String Method = ServletUtil.getMethod();
       HttpServletResponse response = (HttpServletResponse)servletResponse;
       if(!Method.equals("GET")){
           Result result = new Result();
           result.setSuccess(false);
           result.setMsg("演示环境,禁止操作");
           result.setCode(209);
           response.setHeader("Content-type","application/json;charset=UTF-8");
           response.setCharacterEncoding("UTF-8");
           response.getWriter().write(JSON.toJSONString(result));
       }else{
           filterChain.doFilter(servletRequest, servletResponse);
       }
    }
}
