package com.pearadmin.process.domain;

import lombok.Data;

/**
 * 流程定义实体
 * */
@Data
public class ProDefined {

    /**
     * 流程定义编号
     * */
    private String id;

    /**
     * 流程定义名称
     * */
    private String name;

    /**
     * 流程定义标识
     * */
    private String key;

    /**
     * 流程定义版本
     * */
    private int version;

    /**
     * xml 资源文件名称
     * */
    private String bpmn;

    /**
     * png 资源文件名称
     * */
    private String png;

    /**
     * 部署 Id
     * */
    private String deploymentId;

}
