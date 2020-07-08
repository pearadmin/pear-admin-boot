package com.pearadmin.resource.configure.mapper;

import com.pearadmin.resource.configure.domain.Configure;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import java.util.List;

@Mapper
public interface ConfigureMapper {

    /**
     * Describe: 查询系统配置泪飙
     * Param: Map
     * Return: 列表
     * */
    List<Configure> selectList(Configure configure);

    /**
     * Describe: 查询系统配置泪飙
     * Param: Map
     * Return: 列表
     * */
    Configure selectById(@Param("configId") String configId);

    /**
     * Describe: 新增系统配置
     * Param: SysConfig
     * Return: Integer
     * */
    Integer insert(Configure configure);

    /**
     * Describe: 修改系统配置
     * Param: SysConfig
     * Return: Integer
     * */
    Integer updateById(Configure configure);

    /**
     * Describe: 根据 Id 删除系统配置
     * Param: SysConfig
     * Return: Integer
     * */
    Integer deleteById(String id);
}
