package com.pearadmin.secure.process;

import com.pearadmin.common.plugins.logging.domain.Logging;
import com.pearadmin.common.plugins.logging.aop.enums.BusinessType;
import com.pearadmin.common.plugins.logging.aop.enums.LoggingType;
import com.pearadmin.common.plugins.logging.service.LoggingService;
import com.pearadmin.common.tools.secure.SecurityUtil;
import com.pearadmin.common.tools.sequence.SequenceUtil;
import com.pearadmin.secure.session.SecureSessionService;
import com.pearadmin.system.domain.SysUser;
import com.pearadmin.system.service.ISysUserService;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.session.SessionRegistry;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;
import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDateTime;

/**
 * Describe: 自定义remember-me成功处理类
 * Author: Heiky
 * CreateTime: 2020/12/17
 * */
@Component
public class SecureRememberMeHandler implements AuthenticationSuccessHandler {

    @Resource
    private LoggingService loggingService;

    @Resource
    private ISysUserService sysUserService;

    @Resource
    private SessionRegistry sessionRegistry;

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException, ServletException {
        // 记录日志
        Logging logging = new Logging();
        logging.setId(SequenceUtil.makeStringId());
        logging.setTitle("Remember Me");
        logging.setDescription("登录成功");
        logging.setBusinessType(BusinessType.OTHER);
        logging.setSuccess(true);
        logging.setLoggingType(LoggingType.LOGIN);
        loggingService.save(logging);

        // 更新用户
        SysUser sysUser = new SysUser();
        // 获取最近登录时间
        LocalDateTime now = LocalDateTime.now();
        sysUser.setUserId(((SysUser) SecurityUtil.currentUser().getPrincipal()).getUserId());
        sysUser.setLastTime(now);
        sysUserService.update(sysUser);

        SysUser currentUser = (SysUser) authentication.getPrincipal();
        currentUser.setLastTime(now);
        request.getSession().setAttribute("currentUser", currentUser);

        SecureSessionService.expiredSession(request, sessionRegistry);

        // 注册新的SessionInformation
        sessionRegistry.registerNewSession(request.getSession().getId(), authentication.getPrincipal());
    }
}
