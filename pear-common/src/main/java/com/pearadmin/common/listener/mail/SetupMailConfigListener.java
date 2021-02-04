package com.pearadmin.common.listener.mail;

import cn.hutool.extra.mail.MailAccount;
import com.pearadmin.common.constant.ConfigurationConstant;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.context.ApplicationListener;
import org.springframework.stereotype.Component;

/**
 * @Author: Heiky
 * @Date: 2021/2/4 11:22
 * @Description:
 */

@Component
public class SetupMailConfigListener implements ApplicationListener<MailConfigEvent>, ApplicationContextAware {

    private ApplicationContext applicationContext;

    @Override
    public void onApplicationEvent(MailConfigEvent mailConfigEvent) {
        MailAccount mailAccount = applicationContext.getBean("mailAccount", MailAccount.class);
        mailAccount.setHost(mailConfigEvent.getMailConfig().get(ConfigurationConstant.MAIN_HOST));
        mailAccount.setPort(Integer.parseInt(mailConfigEvent.getMailConfig().get(ConfigurationConstant.MAIN_PORT)));
        mailAccount.setFrom(mailConfigEvent.getMailConfig().get(ConfigurationConstant.MAIN_FROM));
        mailAccount.setUser(mailConfigEvent.getMailConfig().get(ConfigurationConstant.MAIN_USER));
        mailAccount.setPass(mailConfigEvent.getMailConfig().get(ConfigurationConstant.MAIN_PASS));
    }

    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        this.applicationContext = applicationContext;
    }
}
