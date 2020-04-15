package com.pearadmin.generator.utils;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

import javax.sql.DataSource;

/**
 * springBoot启动成功后执行的事件
 */
@Component
public class init implements ApplicationRunner {

    Logger logger= LoggerFactory.getLogger(getClass());

    @Autowired
    private DataSource dataSource;

    @Override
    public void run(ApplicationArguments args) throws Exception {
        //设置数据库的类型
        String url = dataSource.getConnection().getMetaData().getURL();
        if (url.contains("jdbc:oracle")) {
            initContants.databaseType = initContants.DatabaseType.ORACLE;
            logger.info("----------------系统使用oracle数据库----------------");
        }else {
            logger.info("----------------系统使用mysql数据库----------------");
            initContants.databaseType = initContants.DatabaseType.MYSQL;
        }
    }

}
