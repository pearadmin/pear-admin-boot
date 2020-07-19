package com.pearadmin.document;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

import java.util.ArrayList;

@Configuration
@EnableSwagger2
public class EntranceDocument {

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
