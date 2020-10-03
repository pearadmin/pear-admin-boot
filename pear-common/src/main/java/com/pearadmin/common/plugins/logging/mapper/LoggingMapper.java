package com.pearadmin.common.plugins.logging.mapper;

import com.pearadmin.common.plugins.logging.domain.Logging;
import com.pearadmin.common.plugins.logging.enums.LoggingType;
import org.apache.ibatis.annotations.Mapper;
import java.util.List;

/**
 * Describe: 日 志 接 口
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */
@Mapper
public interface LoggingMapper {

    /**
     * Describe: 插入日志信息
     * Param: logging
     * Return: 影响行数
     * */
    int insert(Logging logging);

    /**
     * Describe: 查询日志信息
     * Param: LoggingType
     * Return: 日志信息列表
     * */
    List<Logging> selectList(LoggingType loggingType);
}
