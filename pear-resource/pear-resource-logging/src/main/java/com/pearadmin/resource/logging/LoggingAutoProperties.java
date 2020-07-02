package com.pearadmin.resource.logging;

import lombok.Data;
import com.pearadmin.resource.logging.config.SequenceConfig;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;

/**
 * 自 动 配 置 属 性
 * */
@Data
@Configuration
@ConfigurationProperties("pear.plugin.logging")
public class LoggingAutoProperties {

    /**
     * 是 否 开 启 日 志 服 务
     * */
    private Boolean enable = true;

    /**
     * 日志 Id 的 相 关 配 置
     * */
    private SequenceConfig sequence = new SequenceConfig();

}
