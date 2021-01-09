package com.pearadmin.common.web.listener;

import com.pearadmin.common.web.session.HttpSessionContext;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

@WebListener
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
