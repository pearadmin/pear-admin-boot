package com.pearadmin.security.session;

import com.pearadmin.system.domain.SysUser;
import org.activiti.engine.impl.util.CollectionUtil;
import org.springframework.security.core.session.SessionInformation;
import org.springframework.security.core.session.SessionRegistry;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Describe: Session 自定义工具类
 * Author: Heiky
 * CreateTime: 2020/12/17
 * */
public class HttpSessionUtil {

    /**
     * 从sessionRegistry中清除session信息
     *
     * @param request
     * @param sessionRegistry
     */
    public static void expiredSession(HttpServletRequest request, SessionRegistry sessionRegistry) {
        SysUser currentUser = (SysUser) request.getSession().getAttribute("currentUser");
        String sessionId = request.getSession().getId();
        List<Object> principals = sessionRegistry.getAllPrincipals();
        for (Object principal : principals) {
            SysUser userDetails = (SysUser) principal;
            if (userDetails != null && userDetails.getUsername().equals(currentUser.getUsername())) {
                List<SessionInformation> sessionInformationList = sessionRegistry.getAllSessions(userDetails, true);
                if (CollectionUtil.isNotEmpty(sessionInformationList)) {
                    for (SessionInformation sessionInformation : sessionInformationList) {
                        if (sessionId.equals(sessionInformation.getSessionId())) {
                            continue;
                        }
                        sessionInformation.expireNow();
                        sessionRegistry.removeSessionInformation(sessionInformation.getSessionId());
                    }
                }
            }
        }
    }

}
