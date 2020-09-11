package com.pearadmin.common.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;
import java.util.ArrayList;

/**
 * Describe: 接 口 文 档 配 置 文 件
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */
@Configuration
@EnableSwagger2
public class SwaggerConfig {

    /**
     * 基 本 信 息
     * */
    @Bean
    public Docket docker(){
        return new Docket(DocumentationType.SWAGGER_2)
                .apiInfo(apiInfo())
                .groupName("DEFAULT")
                .enable(true)
                .select()
                .apis(RequestHandlerSelectors.basePackage("com.pearadmin"))
                .build();
    }

    /**
     * 扩 展 信 息
     * */
    private ApiInfo apiInfo(){
        return new ApiInfo(
                "Pear Admin Boot",
                "企业级快速开发平台",
                "2.2.0",
                "www.pearadmin.com",new Contact("就眠仪式","www.pearadmin,com","jmys1992@gmail.com"),"apache","",
                new ArrayList<>()
        );
    }
}
