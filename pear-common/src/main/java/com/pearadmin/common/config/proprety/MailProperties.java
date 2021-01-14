package com.pearadmin.common.config.proprety;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;


/**
 * Describe: 邮箱配置类
 * Author: Heiky
 * CreateTime: 2021/1/13 17:52
 */
@Data
@ConfigurationProperties("pear.mail")
public class MailProperties {

    private String host;

    private Integer port;

    private String from;

    private String user;

    private String pass;

}
