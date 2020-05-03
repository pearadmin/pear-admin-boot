package com.pearadmin.system.mapper;

import com.pearadmin.system.domain.SysOperLog;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface SysOperLogMapper {

    List<SysOperLog> selectList(SysOperLog sysOperLog);

    Integer insert(SysOperLog sysOperLog);
}
