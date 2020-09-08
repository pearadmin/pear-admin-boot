package com.pearadmin.generator.mapper;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface GeneratorMapper {

    /**
     * Describe: 查询数据库所有表
     * Param null
     * Return ResultTable
     * */
    List<Map> queryTable();

    /**
     * Describe: 查询数据库所有列
     * Param null
     * Return ResultTable
     * */
    List<Map> queryColumn(String tableName);
}
