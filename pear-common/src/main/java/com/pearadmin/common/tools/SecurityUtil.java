package com.pearadmin.common.tools;

import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

import java.util.Objects;

/**
 * Describe: Security 工 具 类
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 */
public class SecurityUtil {

    /**
     * 获取当前登录用户的信息，如果未登录返回null
     *
     * @return Object 当前登录用户
     */
    public static Object currentUser() {
        return null!=getAuthentication()?getAuthentication().getPrincipal():null;
    }

    /**
     * 获取当前登录用户的信息
     *
     * @return Authentication 权鉴对象
     */
    public static Authentication getAuthentication() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (!(authentication instanceof AnonymousAuthenticationToken))
            return authentication;
        return null;
    }

    /**
     * 验证当前用户是否登录
     *
     * @return boolean 是否登录
     */
    public static boolean isAuthentication() {
        // if security session eq s-id is not null to index
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        return !(auth instanceof AnonymousAuthenticationToken);
    }


}
