package com.pearadmin.common.plugins.logging.service;

import com.pearadmin.common.plugins.logging.domain.Logging;
import com.pearadmin.common.plugins.logging.aop.enums.LoggingType;

import java.util.List;

/**
 * Describe: 日 志 服 务 接 口
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 */
public interface LoggingService {

    /**
     * Describe: 执 行 插 入 操 作
     * Param: logging
     * Return: boolean
     */
    boolean save(Logging logging);

    /**
     * Describe: 执 行 查 询 操 作
     * Param: loggingType
     * Return: 日志列表
     */
    List<Logging> data(LoggingType loggingType);

    /**
     * Describe: 根 据 id 查 询 日 志
     * Param: id
     * Return: Logging
     */
    Logging getById(String id);

    /**
     * Describe: 根据 operateName 查询日志
     * Param: operateName
     * Return: 日志列表
     */
    List<Logging> selectTopLoginLog(String operateName);
}
