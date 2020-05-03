package com.pearadmin.system.mapper;

import com.pearadmin.system.domain.SysConfig;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface SysConfigMapper {

    /**
     * Describe: 查询系统配置泪飙
     * Param: Map
     * Return: 列表
     * */
    List<SysConfig> selectList(SysConfig sysConfig);

    /**
     * Describe: 查询系统配置泪飙
     * Param: Map
     * Return: 列表
     * */
    SysConfig selectById(@Param("configId") String configId);

    /**
     * Describe: 新增系统配置
     * Param: SysConfig
     * Return: Integer
     * */
    Integer insert(SysConfig sysConfig);

    /**
     * Describe: 修改系统配置
     * Param: SysConfig
     * Return: Integer
     * */
    Integer updateById(SysConfig sysConfig);

    /**
     * Describe: 根据 Id 删除系统配置
     * Param: SysConfig
     * Return: Integer
     * */
    Integer deleteById(String id);
}
