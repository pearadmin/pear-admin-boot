package com.pearadmin.common.web.listenerr;

import com.pearadmin.common.web.session.HttpSessionContext;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * @Author: Heiky
 * @Date: 2020/12/17 17:42
 * @Description:
 */

@WebListener("自定义HttpSession监听器")
public class SecuritySessionListener implements HttpSessionListener {

    private HttpSessionContext sessionContext = HttpSessionContext.getInstance();

    @Override
    public void sessionCreated(HttpSessionEvent se) {
        sessionContext.addSession(se.getSession());
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent se) {
        sessionContext.removeSession(se.getSession());
    }
}
