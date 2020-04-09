package com.pearadmin.common.tools.database.domain;

import lombok.Data;

@Data
public class DBTable {

    /**
     * 表名称
     * */
    private String tableName;

    /**
     * 表类型
     * */
    private String tableType;

    /**
     * 备注
     * */
    private String remarks;

}
