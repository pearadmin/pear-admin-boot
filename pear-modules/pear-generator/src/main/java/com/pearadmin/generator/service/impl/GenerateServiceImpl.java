package com.pearadmin.generator.service.impl;

import com.pearadmin.generator.mapper.GeneratorMapper;
import com.pearadmin.generator.service.IGeneratorService;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * Describe:代 码 生 成 服 务 实 现
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */
@Service
public class GenerateServiceImpl implements IGeneratorService {

    @Resource
    private GeneratorMapper generatorMapper;

    /**
     * Describe: 查询数据库所有表
     * Param null
     * Return ResultTable
     * */
    @Override
    public List<Map> queryTable() {
        return generatorMapper.queryTable();
    }

    /**
     * Describe: 查询数据库所有列
     * Param null
     * Return ResultTable
     * */
    @Override
    public List<Map> queryColumn(String tableName) {
        return generatorMapper.queryColumn(tableName);
    }
}
