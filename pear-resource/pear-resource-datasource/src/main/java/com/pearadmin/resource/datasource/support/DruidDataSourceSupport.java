package com.pearadmin.resource.datasource.support;

import com.alibaba.druid.pool.DruidDataSource;
import com.pearadmin.resource.datasource.entity.DruidDataSourceConfig;

/**
 * DruidDataSource Support -- [就眠仪式]
 */
public class DruidDataSourceSupport extends DruidDataSource implements BaseDataSourceSupport {

    /**
     * init configuration info
     * */
    public DruidDataSourceSupport(DruidDataSourceConfig config) {
        this.setUsername(config.getUsername());
        this.setPassword(config.getPassword());
        this.setUrl(config.getUrl());
        this.setDriverClassName(config.getDriverClassName());
        this.setMaxActive(config.getMaxActive());
        this.setInitialSize(config.getInitialSize());
        this.setName(config.getPoolName());
        this.setMinIdle(config.getMinIdle());
    }

    /**
     * get init configuration
     * */
    @Override
    public DruidDataSourceSupport build() {
        return this;
    }

}
