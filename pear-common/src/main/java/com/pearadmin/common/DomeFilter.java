package com.pearadmin.common;

import com.alibaba.fastjson.JSON;
import com.pearadmin.common.tools.servlet.ServletUtil;
import com.pearadmin.common.web.domain.response.ResultController;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

@WebFilter(urlPatterns = "/*",filterName = "channelFilter")
public class DomeFilter extends ResultController implements Filter  {

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {

        if(!ServletUtil.getMethod().equals("GET")){
            ServletUtil.write(JSON.toJSONString(failure("预览环境，禁止操作")));;
            return;
        }
        filterChain.doFilter(servletRequest,servletResponse);
    }
}
