package com.pearadmin.common.tools.security;

import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

/**
 * Describe: Security 工 具 类
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */
public class SecurityUtil {

    /**
     * 获取当前登录用户的信息
     * */
    public static Authentication currentUser(){
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (!(authentication instanceof AnonymousAuthenticationToken)) {
            return authentication;
        }
        return null;
    }

}
