package com.pearadmin.resource.logging.factory;

import com.pearadmin.resource.logging.domain.Logging;
import com.pearadmin.resource.logging.service.LoggingService;
import org.apache.ibatis.type.JdbcType;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;

/**
 * 实 现 一 部 工 厂 机 制
 * */
@Component
public class LoggingFactory {

    @Resource
    private LoggingService loggingService;

    /**
     * 执 行 日 志 入 库 操 作
     * */
    @Async
    public void record(Logging logging){

        loggingService.save(logging);
    }

}
