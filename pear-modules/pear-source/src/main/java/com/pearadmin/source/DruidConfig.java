package com.pearadmin.source;

import com.pearadmin.source.domain.DruidProperties;
import com.pearadmin.source.handler.DynamicDataSource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;

/**
 * Describe: Druid 配 置 文 件
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */

@Configuration
public class DruidConfig {

    /**
     * Describe: 数据集注册
     * */
    @Bean(name = "dynamicDataSource")
    @Primary
    public DynamicDataSource dataSource(DruidProperties druidProperties)
    {
        return new DynamicDataSource(druidProperties.defaultDataSource(),druidProperties.otherDataSource());
    }
}
