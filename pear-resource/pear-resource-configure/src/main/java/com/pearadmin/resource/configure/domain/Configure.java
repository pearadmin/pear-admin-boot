package com.pearadmin.resource.configure.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Configure {

    /**
     * 配置标识
     * */
    private String configId;

    /**
     * 配置名称
     * */
    private String configName;

    /**
     * 配置标识
     * */
    private String configCode;

    /**
     * 配置类型
     * */
    private String configType;

    /**
     * 配置标识
     * */
    private String configValue;

    /**
     * 详情描述
     * */
    private String details;

}
