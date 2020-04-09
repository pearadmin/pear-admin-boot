package com.pearadmin.common.tools.database.domain;

import lombok.Data;

@Data
public class DBColumn {

    /**
     * 所属表
     * */
    private String tableName;

    /**
     * 列名称
     * */
    private String columnName;

    /**
     * 列类型
     * */
    private String columnType;

    /**
     * 定义大小
     * */
    private String columnSize;

    /**
     * 是否为空
     * */
    private String isNull;

    /**
     * 是否为主键
     * */
    private String isPrimaryKey;

    /**
     * 备注
     * */
    private String remarks;

}
