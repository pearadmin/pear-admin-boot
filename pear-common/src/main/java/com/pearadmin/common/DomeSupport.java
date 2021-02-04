package com.pearadmin.common;

import com.alibaba.fastjson.JSON;
import com.pearadmin.common.tools.servlet.ServletUtil;
import com.pearadmin.common.web.domain.response.Result;
import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

@WebFilter
public class DomeSupport implements Filter {

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        if(ServletUtil.getMethod().equals("GET")){
            filterChain.doFilter(servletRequest,servletResponse);
            return;
        }
        ServletUtil.write(JSON.toJSONString(Result.failure("演示环境, 禁止操作")));
    }
}
