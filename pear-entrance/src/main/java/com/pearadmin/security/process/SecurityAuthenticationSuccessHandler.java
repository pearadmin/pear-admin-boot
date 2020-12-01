package com.pearadmin.security.process;

import com.alibaba.fastjson.JSON;
import com.pearadmin.common.plugins.logging.domain.Logging;
import com.pearadmin.common.plugins.logging.enums.BusinessType;
import com.pearadmin.common.plugins.logging.enums.LoggingType;
import com.pearadmin.common.plugins.logging.service.LoggingService;
import com.pearadmin.common.tools.security.SecurityUtil;
import com.pearadmin.common.tools.sequence.SequenceUtil;
import com.pearadmin.common.tools.servlet.ServletUtil;
import com.pearadmin.common.web.domain.response.Result;
import com.pearadmin.system.domain.SysUser;
import com.pearadmin.system.service.ISysUserService;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;
import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDateTime;

/**
 * Describe: 自定义 Security 用户未登陆处理类
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */
@Component
public class SecurityAuthenticationSuccessHandler implements AuthenticationSuccessHandler {

    @Resource
    private LoggingService loggingService;

    @Resource
    private ISysUserService sysUserService;

    @Override
    public void onAuthenticationSuccess(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Authentication authentication) throws IOException, ServletException {

        // 记录日志
        Logging logging = new Logging();
        logging.setId(SequenceUtil.makeStringId());
        logging.setTitle("登录");
        logging.setDescription("登录成功");
        logging.setBusinessType(BusinessType.OTHER);
        logging.setSuccess(true);
        logging.setLoggingType(LoggingType.LOGIN);
        loggingService.save(logging);

        // 更新用户
        SysUser sysUser = new SysUser();
        sysUser.setUserId(((SysUser)SecurityUtil.currentUser().getPrincipal()).getUserId());
        sysUser.setLastTime(LocalDateTime.now());
        sysUserService.update(sysUser);

        // 响应消息
        Result result = Result.success(200,"登录成功");
        httpServletRequest.getSession().setAttribute("currentUser",authentication.getPrincipal());
        ServletUtil.write(JSON.toJSONString(result));
    }
}
