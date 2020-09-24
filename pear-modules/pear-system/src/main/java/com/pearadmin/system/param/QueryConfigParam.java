package com.pearadmin.system.param;

import lombok.Data;

/**
 * Describe: 查询系统配置接口参数实体
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */
@Data
public class QueryConfigParam {

    /**
     * 配置名称
     * */
    private String configName;

    /**
     * 配置标识
     * */
    private String configCode;

}
