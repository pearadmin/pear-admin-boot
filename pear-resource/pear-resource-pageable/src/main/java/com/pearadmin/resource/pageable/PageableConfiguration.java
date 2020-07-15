package com.pearadmin.resource.pageable;

import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Configuration;

import javax.annotation.Resource;

@Configuration
@EnableConfigurationProperties(PageableProperties.class)
public class PageableConfiguration {

    @Resource
    private PageableProperties properties;



}
