package com.pearadmin.common.plugins.logging.service;

import com.pearadmin.common.plugins.logging.domain.Logging;
import com.pearadmin.common.plugins.logging.enums.LoggingType;

import java.util.List;

/**
 * Describe: 日 志 服 务 接 口
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */
public interface LoggingService {

    /**
     * 执 行 插 入 操 作
     * */
    boolean save(Logging logging);

    /**
     * 执 行 查 询 操 作
     * */
    List<Logging> data(LoggingType loggingType);
}
