package com.pearadmin.common.logging.mapper;

import com.pearadmin.common.logging.domain.Logging;
import org.apache.ibatis.annotations.Mapper;
import java.util.List;

@Mapper
public interface LoggingMapper {

    int insert(Logging logging);

    List<Logging> selectList();
}
