package com.pearadmin.resource.pageable;

import lombok.Builder;
import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;

@Data
@ConfigurationProperties("pear.plugin.pageable")
public class PageableProperties {

    private PageParam page;

    private PageParam limit;

    @Data
    @Builder
    public class PageParam{

        private String name;

        private Integer defaultValue;

    }
}
