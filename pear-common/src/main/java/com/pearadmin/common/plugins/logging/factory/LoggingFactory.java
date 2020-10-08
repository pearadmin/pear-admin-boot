package com.pearadmin.common.plugins.logging.factory;

import com.pearadmin.common.plugins.logging.domain.Logging;
import com.pearadmin.common.plugins.logging.service.LoggingService;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Component;
import javax.annotation.Resource;

/**
 * Describe: 日 志 异 步 工 厂
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
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
