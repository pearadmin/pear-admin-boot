package com.pearadmin.generator.mapper;

import org.apache.ibatis.annotations.Mapper;
import java.util.List;
import java.util.Map;

/**
 * Describe: 代码生成接口
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */
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
