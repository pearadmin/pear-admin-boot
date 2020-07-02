package com.pearadmin.resource.logging;

import lombok.extern.slf4j.Slf4j;
import com.pearadmin.resource.logging.aspect.LoggingAspect;
import com.pearadmin.resource.logging.factory.SequenceFactory;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Bean;
import javax.annotation.Resource;

@Slf4j
@Configuration
@EnableConfigurationProperties(LoggingAutoProperties.class)
public class LoggingAutoConfiguration {

    @Resource
    private LoggingAutoProperties loggingAutoProperties;

    @Bean
    public LoggingAspect loggingAspect(){

        SequenceFactory sequenceFactory = new SequenceFactory(loggingAutoProperties.getSequence().getWorkerId(), loggingAutoProperties.getSequence().getCenterId());
        log.info("日志开启 : "+loggingAutoProperties.getEnable());
        log.info("日志编号 : "+loggingAutoProperties.getSequence().getWorkerId());
        log.info("日志中心 : "+loggingAutoProperties.getSequence().getCenterId());

        return new LoggingAspect(sequenceFactory,loggingAutoProperties.getEnable());
    }
}
