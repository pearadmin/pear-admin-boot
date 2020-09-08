package com.pearadmin.generator.service;

import java.util.List;
import java.util.Map;

/**
 * Describe:代 码 生 成 服 务 接 口
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */
public interface IGeneratorService {

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
