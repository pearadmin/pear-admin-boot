package com.pearadmin.common.logging.mapper;

import com.pearadmin.common.logging.domain.Logging;
import com.pearadmin.common.logging.enums.LoggingType;
import org.apache.ibatis.annotations.Mapper;
import java.util.List;

/**
 * Describe: 日 志 接 口
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */

@Mapper
public interface LoggingMapper {

    int insert(Logging logging);

    List<Logging> selectList(LoggingType loggingType);
}
