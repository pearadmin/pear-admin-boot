package com.pearadmin.common.config.proprety;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;

@Data
@ConfigurationProperties("pear.security")
public class SecurityProperty {

    private String[] openApi;
}
