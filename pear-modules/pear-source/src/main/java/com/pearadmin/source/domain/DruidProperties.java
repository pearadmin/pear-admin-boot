package com.pearadmin.source.domain;

import com.alibaba.druid.pool.DruidDataSource;
import com.alibaba.druid.pool.DruidDataSourceStatLogger;
import com.pearadmin.source.DruidConfig;
import lombok.Data;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;

import javax.xml.transform.Source;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Describe: Druid 配置文件
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */
@Data
@Configuration
@ConfigurationProperties("spring.datasource.druid")
public class DruidProperties {

    private final Logger log = LoggerFactory.getLogger(DruidProperties.class);

    private int initialSize;

    private int minIdle;

    private int maxActive;

    private int maxWait;

    private int timeBetweenEvictionRunsMillis;

    private int minEvictableIdleTimeMillis;

    private int maxEvictableIdleTimeMillis;

    private String validationQuery;

    private boolean testWhileIdle;

    private boolean testOnBorrow;

    private boolean testOnReturn;

    private String defaultSource;

    private Map<String,DataSource> sources;

    public DruidDataSource defaultDataSource(){
        for(String key:sources.keySet()){
            DataSource dataSource = sources.get(key);
            if(key.equals(defaultSource)){
                DruidDataSource druidDataSource = new DruidDataSource();
                druidDataSource.setUsername(dataSource.getUsername());
                druidDataSource.setPassword(dataSource.getPassword());
                druidDataSource.setUrl(dataSource.getUrl());
                druidDataSource.setDriver(dataSource.getDriver());
                log.info("Register "+ key +" data source");
                return druidDataSource;
            }
        }
        return null;
    }

    public Map<Object,Object> otherDataSource(){
        Map<Object, Object> datasource = new HashMap<>();
        for(String key:sources.keySet()){
            DataSource dataSource = sources.get(key);
            if(!key.equals(defaultSource)){
                DruidDataSource druidDataSource = new DruidDataSource();
                druidDataSource.setUsername(dataSource.getUsername());
                druidDataSource.setPassword(dataSource.getPassword());
                druidDataSource.setUrl(dataSource.getUrl());
                druidDataSource.setDriver(dataSource.getDriver());
                datasource.put(key,druidDataSource);
                log.info("Register "+ key +" data source");
            }
        }
        return datasource;
    }
}
