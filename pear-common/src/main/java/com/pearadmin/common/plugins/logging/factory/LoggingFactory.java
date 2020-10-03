package com.pearadmin.common.plugins.logging.factory;

import com.pearadmin.common.plugins.logging.domain.Logging;
import com.pearadmin.common.plugins.logging.service.LoggingService;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Component;
import javax.annotation.Resource;

/**
 * 实 现 一 部 工 厂 机 制 -- [就眠仪式]
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
