package com.pearadmin.resource.configure;

import com.pearadmin.resource.configure.service.IConfigureService;
import com.pearadmin.resource.configure.service.impl.ConfigureServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Slf4j
@Configuration
@EnableConfigurationProperties(ConfigureAutoProperties.class)
public class ConfigureAutoConfiguration {

    @Bean
    public IConfigureService configureService(){
        IConfigureService configureService = new ConfigureServiceImpl();
        return configureService;
    }
}
