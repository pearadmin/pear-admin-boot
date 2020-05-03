package com.pearadmin.system.domain;

import com.pearadmin.common.web.base.BaseDomain;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.apache.ibatis.type.Alias;

@Data
@Alias("SysConfig")
@AllArgsConstructor
@NoArgsConstructor
public class SysConfig extends BaseDomain {

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
