package com.pearadmin.document;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;
/**
 * Describe: API 文 档
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */
@Configuration
@EnableSwagger2
public class EntranceDocument {

    /**
     * Describe: 接口文档配置
     * */
    @Bean
    public Docket createRestApi() {
        return new Docket(DocumentationType.SWAGGER_2)
                .apiInfo(apiInfo())
                .select()
                .apis(RequestHandlerSelectors.basePackage("com.pearadmin"))
                .paths(PathSelectors.any())
                .build();
    }

    /**
     * Describe: 生成 API 文档信息
     * */
    private ApiInfo apiInfo() {
        return new ApiInfoBuilder().title("接口文档").version("2.0").build();
    }

}
