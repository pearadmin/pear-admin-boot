package com.pearadmin;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

/**
 * Describe: 启 动 类
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */

@SpringBootApplication(exclude = {DataSourceAutoConfiguration.class})
public class PearEntranceApplication {

    /**
     * Describe: 程 序 入 口
     * */
    public static void main(String[] args) {
        SpringApplication.run(PearEntranceApplication.class, args);
    }

}
