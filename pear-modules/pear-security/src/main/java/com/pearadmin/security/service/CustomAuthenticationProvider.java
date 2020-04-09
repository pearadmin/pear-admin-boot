package com.pearadmin.security.service;

import com.pearadmin.security.domain.SecurityUserDetailsService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;
import javax.annotation.Resource;


/**
 * Describe: 自定义 Security 登陆认证实现
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */
@Component
public class CustomAuthenticationProvider implements AuthenticationProvider {

    public static final Logger log = LoggerFactory.getLogger(CustomAuthenticationProvider.class);

    @Resource
    private SecurityUserDetailsService securityUserDetailsService;

    @Resource
    private PasswordEncoder passwordEncoder;

    /**
     * Describe: 自定义 Security 登陆逻辑
     * Param: Authentication
     * Return Authentication
     * */
    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {

        String username = (String) authentication.getPrincipal();
        String password = (String) authentication.getCredentials();

        UserDetails userInfo = securityUserDetailsService.loadUserByUsername(username);

        if(!passwordEncoder.matches(password,userInfo.getPassword())){
            throw new BadCredentialsException(" Password Not Found ");
        }
        return new UsernamePasswordAuthenticationToken(userInfo,password,userInfo.getAuthorities());
    }

    @Override
    public boolean supports(Class<?> aClass) {
        return true;
    }
}
