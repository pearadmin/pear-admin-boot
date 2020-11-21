package com.pearadmin.security;

import com.pearadmin.common.config.proprety.SecurityProperty;
import com.pearadmin.security.domain.SecurityUserDetailsService;
import com.pearadmin.security.process.*;
import com.pearadmin.security.support.SecurityPermissionEvaluator;
import com.pearadmin.security.support.SecurityVerifyCodeFilter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.session.SessionRegistry;
import org.springframework.security.core.session.SessionRegistryImpl;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.access.expression.DefaultWebSecurityExpressionHandler;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.security.web.authentication.rememberme.JdbcTokenRepositoryImpl;
import org.springframework.security.web.authentication.rememberme.PersistentTokenRepository;

import javax.annotation.Resource;
import javax.sql.DataSource;

/**
 * Describe: Security 安全配置
 * Author: 就免仪式
 * CreateTime: 2019/10/23
 * */
@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
@EnableConfigurationProperties(SecurityProperty.class)
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Resource
    private SecurityPermissionEvaluator securityPermissionEvaluator; //注解权限

    @Resource
    private SecurityAuthenticationEntryPoint securityAuthenticationEntryPoint; //配置未登录自定义处理类

    @Resource
    private SecurityAuthenticationSuccessHandler securityAccessSuccessHander; //登录成功处理类

    @Resource
    private SecurityAuthenticationFailureHandler securityAccessFailureHander; //登录失败处理类

    @Resource
    private SecurityLogoutSuccessHandler securityAccessLogoutHander; //退出登录处理类

    @Resource
    private SecurityAccessDeniedHandler securityAccessDeniedHander; //没有权限处理类

    @Resource
    private SecurityProperty securityProperty; //配置不拦截url

    @Autowired
    private SecurityVerifyCodeFilter securityVerifyCodeFilter; //自定义验证码验证

    @Autowired
    private SecurityUserDetailsService securityUserDetailsService; //实现userservice
    @Resource
    private DataSource dataSource; // 数据源

    /**
     * Describe: 自定义权限注解实现
     */
    @Bean
    public DefaultWebSecurityExpressionHandler userSecurityExpressionHandler(){
        DefaultWebSecurityExpressionHandler handler = new DefaultWebSecurityExpressionHandler();
        handler.setPermissionEvaluator(securityPermissionEvaluator);
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
     * 身份认证接口
     */
    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(securityUserDetailsService).passwordEncoder(passwordEncoder());
    }


    /**
     * 持久化token
     *
     * Security中，默认是使用PersistentTokenRepository的子类InMemoryTokenRepositoryImpl，将token放在内存中
     * 如果使用JdbcTokenRepositoryImpl，会创建表persistent_logins，将token持久化到数据库
     */
    @Bean
    public PersistentTokenRepository persistentTokenRepository() {
        JdbcTokenRepositoryImpl tokenRepository = new JdbcTokenRepositoryImpl();
        tokenRepository.setDataSource(dataSource); // 设置数据源
//    tokenRepository.setCreateTableOnStartup(true); // 启动创建表，创建成功后注释掉
        return tokenRepository;
    }

    /** 注册SessionRegistry*/
    @Bean
    public SessionRegistry sessionRegistry(){
        return new SessionRegistryImpl();
    }


    /**
     * Describe: 配置 Security 控制逻辑
     * */
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers(securityProperty.getOpenApi()).permitAll()
                // 其他的需要登录后才能访问
                .anyRequest().authenticated()
                .and()
                .addFilterBefore(securityVerifyCodeFilter, UsernamePasswordAuthenticationFilter.class) //验证码验证类
                //配置未登录自定义处理类
                .httpBasic().authenticationEntryPoint(securityAuthenticationEntryPoint)
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
                .rememberMe().rememberMeParameter("remember-me")
                .tokenRepository(persistentTokenRepository())
                .key(securityProperty.getRememberKey())
                .and()
                // 防止iframe 造成跨域
                .headers()
                .frameOptions()
                .disable()
                .and()
                // 取消跨站请求伪造防护
                .csrf().disable()
                .sessionManagement()
                .invalidSessionUrl("/login") //无效session要跳转到login
                .maximumSessions(1)//同时登陆多个只保留一个
                .expiredUrl("/login")//过期session跳转
                .sessionRegistry(sessionRegistry())

;
        http.headers().frameOptions().disable();
    }


}
