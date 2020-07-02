package com.pearadmin.resource.logging.mapper;

import com.pearadmin.resource.logging.domain.Logging;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface LoggingMapper {

    public int insert(Logging logging);

    public List<Logging> selectList();
}
