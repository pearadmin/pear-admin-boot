package com.pearadmin.security;

import com.pearadmin.common.constant.SecurityConstants;
import com.pearadmin.security.handler.*;
import com.pearadmin.security.service.CustomAuthenticationProvider;
import com.pearadmin.security.service.CustomPermissionEvaluator;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.access.expression.DefaultWebSecurityExpressionHandler;

import javax.annotation.Resource;

/**
 * Describe: Security 安全配置
 * Author: 就免仪式
 * CreateTime: 2019/10/23
 * */

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Resource
    private CustomPermissionEvaluator securityPowerEvaluator;

    @Resource
    private CustomAuthenticationProvider securityAccessProvider;

    @Resource
    private CustomAuthenticationEntryPoint securityAccessEmptyHander;

    @Resource
    private CustomAuthenticationSuccessHandler securityAccessSuccessHander;

    @Resource
    private CustomAuthenticationFailureHandler securityAccessFailureHander;

    @Resource
    private CustomLogoutSuccessHandler securityAccessLogoutHander;

    @Resource
    private CustomAccessDeniedHandler securityAccessDeniedHander;


    /**
     * Describe: 自定义权限注解实现
     */
    @Bean
    public DefaultWebSecurityExpressionHandler userSecurityExpressionHandler(){
        DefaultWebSecurityExpressionHandler handler = new DefaultWebSecurityExpressionHandler();
        handler.setPermissionEvaluator(securityPowerEvaluator);
        return handler;
    }

    /**
     * Describe: 加密方式
     */
    @Bean
    public BCryptPasswordEncoder passwordEncoder(){
        return new BCryptPasswordEncoder();
    }

    /**
     * Describe: 启用自定义登录逻辑
     */
     @Override
     protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.authenticationProvider(securityAccessProvider);
     }

     /**
      * Describe: 配置 Security 控制逻辑
      * */
     @Override
     protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers(SecurityConstants.ANT_MATCHERS.split(",")).permitAll()
                // 其他的需要登录后才能访问
                .anyRequest().authenticated()
                .and()
                //配置未登录自定义处理类
                .httpBasic().authenticationEntryPoint(securityAccessEmptyHander)
                .and()
                //配置登录地址
                .formLogin()
                .loginPage("/login")
                .loginProcessingUrl("/login")
                //配置登录成功自定义处理类
                .successHandler(securityAccessSuccessHander)
                //配置登录失败自定义处理类
                .failureHandler(securityAccessFailureHander)
                .and()
                //配置登出地址
                .logout()
                .logoutUrl("/logout")
                //配置用户登出自定义处理类
                .logoutSuccessHandler(securityAccessLogoutHander)
                .and()
                //配置没有权限自定义处理类
                .exceptionHandling().accessDeniedHandler(securityAccessDeniedHander)
                .and()
                // 取消跨站请求伪造防护
                .csrf().disable();
         http.headers().frameOptions().disable();
     }

}
