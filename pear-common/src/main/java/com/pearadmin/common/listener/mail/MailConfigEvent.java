package com.pearadmin.common.listener.mail;

import org.springframework.context.ApplicationEvent;

import java.util.Map;

/**
 * @Author: Heiky
 * @Date: 2021/2/4 11:23
 * @Description: 添加邮箱配置之后，发布邮箱配置事件
 */
public class MailConfigEvent extends ApplicationEvent {

    private Map<String, String> mailConfig;

    public MailConfigEvent(Object source, Map<String, String> mailConfig) {
        super(source);
        this.mailConfig = mailConfig;
    }

    public Map<String, String> getMailConfig() {
        return mailConfig;
    }

}
