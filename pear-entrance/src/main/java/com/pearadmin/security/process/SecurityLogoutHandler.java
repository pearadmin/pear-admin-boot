package com.pearadmin.security.process;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.LogoutHandler;
import org.springframework.security.web.session.HttpSessionEventPublisher;
import org.springframework.util.Assert;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;

/**
 * @Author: Heiky
 * @Date: 2020/12/17 10:33
 * @Description: 自定义用户注销处理类
 */
public class SecurityLogoutHandler implements LogoutHandler {

    private static final Logger log = LoggerFactory.getLogger(SecurityLogoutHandler.class);


    private boolean invalidateHttpSession = true;

    private boolean clearAuthentication = true;

    private HttpSessionEventPublisher httpSessionEventPublisher;

    public SecurityLogoutHandler() {
    }

    public SecurityLogoutHandler(HttpSessionEventPublisher httpSessionEventPublisher) {
        this.httpSessionEventPublisher = httpSessionEventPublisher;
    }

    @Override
    public void logout(HttpServletRequest request, HttpServletResponse response, Authentication authentication) {
        Assert.notNull(request, "HttpServletRequest required");
        if (httpSessionEventPublisher != null) {
            // 构建要销毁的session
            HttpSessionEvent sessionEvent = new HttpSessionEvent(request.getSession());
            httpSessionEventPublisher.sessionDestroyed(sessionEvent);
        }
        if (invalidateHttpSession) {
            HttpSession session = request.getSession(false);
            if (session != null) {
                log.debug("Invalidating session: " + session.getId());
                session.invalidate();
            }
        }

        if (clearAuthentication) {
            SecurityContext context = SecurityContextHolder.getContext();
            context.setAuthentication(null);
        }
        SecurityContextHolder.clearContext();
    }

    public boolean isInvalidateHttpSession() {
        return invalidateHttpSession;
    }

    public void setInvalidateHttpSession(boolean invalidateHttpSession) {
        this.invalidateHttpSession = invalidateHttpSession;
    }

    public void setClearAuthentication(boolean clearAuthentication) {
        this.clearAuthentication = clearAuthentication;
    }


}
