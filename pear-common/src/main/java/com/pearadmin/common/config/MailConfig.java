package com.pearadmin.common.config;

import cn.hutool.extra.mail.Mail;
import cn.hutool.extra.mail.MailAccount;
import com.pearadmin.common.config.proprety.MailProperties;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.annotation.Resource;
import java.nio.charset.Charset;

/**
 * @Author: Heiky
 * @Date: 2021/1/14 9:14
 * @Description:
 */

@Configuration
@EnableConfigurationProperties(MailProperties.class)
public class MailConfig {

    @Resource
    private MailProperties mailProperties;

    @Bean
    public MailAccount mailAccount() {
        MailAccount mailAccount = new MailAccount();
        mailAccount.setHost(mailProperties.getHost());
        mailAccount.setPort(mailProperties.getPort());
        mailAccount.setAuth(true);
        mailAccount.setFrom(mailProperties.getFrom());
        mailAccount.setUser(mailProperties.getUser());
        mailAccount.setPass(mailProperties.getPass());
        mailAccount.setCharset(Charset.forName("UTF-8"));
        return mailAccount;
    }

}
