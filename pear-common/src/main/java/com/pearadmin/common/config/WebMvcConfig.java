package com.pearadmin.common.config;

import com.pearadmin.common.plugin.repeat.RepeatSubmitInterceptor;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import javax.annotation.Resource;

/**
 * Web Mvc 配置类
 * */
@Configuration
public class WebMvcConfig extends WebMvcConfigurerAdapter {

    /**
     * 引入拦截器服务
     * */
    @Resource
    private RepeatSubmitInterceptor repeatSubmitInterceptor;

    /**
     * 拦截器注册
     * */
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(repeatSubmitInterceptor);
    }
}
