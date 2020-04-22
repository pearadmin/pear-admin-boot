package com.pearadmin.operate.mapper;

import com.pearadmin.operate.domain.SysOperLog;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.jmx.export.annotation.ManagedOperation;

import java.util.List;

@Mapper
public interface SysOperLogMapper {

    List<SysOperLog> selectList(SysOperLog sysOperLog);

    Integer insert(SysOperLog sysOperLog);
}
