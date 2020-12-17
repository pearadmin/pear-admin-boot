package com.pearadmin;

import org.springframework.boot.SpringApplication;
import org.activiti.spring.boot.SecurityAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.boot.web.servlet.ServletComponentScan;

/**
 * Describe: 入 口 启 动 类
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 */

@ServletComponentScan
@SpringBootApplication(exclude = {DataSourceAutoConfiguration.class, org.activiti.spring.boot.SecurityAutoConfiguration.class, SecurityAutoConfiguration.class})
public class PearEntranceApplication {

    public static void main(String[] args) {
        SpringApplication.run(PearEntranceApplication.class, args);
    }

}
