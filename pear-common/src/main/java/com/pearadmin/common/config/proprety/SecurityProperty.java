package com.pearadmin.common.config.proprety;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;

/**
 * Describe: 系 统 权 限 配 置 类
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */
@Data
@ConfigurationProperties("pear.security")
public class SecurityProperty {

    private String[] openApi;

}
