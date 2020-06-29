package com.pearadmin;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

/**
 * Describe: 启 动 类 -- [就眠仪式]
 * */
@SpringBootApplication(exclude = {DataSourceAutoConfiguration.class})
public class PearEntranceApplication {

    public static void main(String[] args) {

        SpringApplication.run(PearEntranceApplication.class, args);
    }
}
