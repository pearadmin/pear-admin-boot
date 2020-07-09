package com.pearadmin.resource.document;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
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
 * 文 档 自 动 配 置 类
 * */

@Slf4j
@Configuration
@EnableSwagger2
@EnableConfigurationProperties(DocumentAutoProperties.class)
public class DocumentAutoConfiguration {

    @Autowired
    private DocumentAutoProperties documentAutoProperties;

    @Bean
    public Docket docker(){
        log.info("Read document configuration information");
        printConfig();
        return new Docket(DocumentationType.SWAGGER_2)
                .apiInfo(apiInfo())
                .groupName(documentAutoProperties.getGroupName())
                .enable(documentAutoProperties.getEnable())
                .select()
                .apis(RequestHandlerSelectors.basePackage(documentAutoProperties.getScanPackage()))
                .build();
    }

    private ApiInfo apiInfo(){
         return new ApiInfo(
                documentAutoProperties.getTitle(),
                documentAutoProperties.getDescribe() ,
                documentAutoProperties.getVersion(),
                documentAutoProperties.getTermsOfServiceUrl(),documentAutoProperties.getContact(),documentAutoProperties.getLicence(),documentAutoProperties.getLicenceUrl(),
                new ArrayList<>()
        );
    }

    public void printConfig(){
        log.info("组 件 名 称 : 接口文档" );
        log.info("是 否 开 启 : " + ( documentAutoProperties.getEnable() ? "开 启" : "关 闭"));
        log.info("文 档 标 题 : " + documentAutoProperties.getTitle());
        log.info("描 述 信 息 : " + documentAutoProperties.getDescribe());
        log.info("文 档 版 本 : " + documentAutoProperties.getVersion());
        log.info("扫 包 路 径 : " + documentAutoProperties.getScanPackage());
        log.info("开 源 协 议 : " + documentAutoProperties.getLicence());
    }
}
