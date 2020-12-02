package com.pearadmin.security;

import com.pearadmin.common.config.proprety.SecurityProperty;
import com.pearadmin.security.domain.SecurityUserDetailsService;
import com.pearadmin.security.process.*;
import com.pearadmin.security.domain.SecurityUserTokenService;
import com.pearadmin.security.support.SecurityPermissionEvaluator;
import com.pearadmin.security.support.SecurityCaptchaSupport;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.core.session.SessionRegistry;
import org.springframework.security.core.session.SessionRegistryImpl;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.access.expression.DefaultWebSecurityExpressionHandler;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.thymeleaf.extras.springsecurity5.dialect.SpringSecurityDialect;
import org.thymeleaf.spring5.ISpringTemplateEngine;
import org.thymeleaf.spring5.SpringTemplateEngine;
import org.thymeleaf.templateresolver.ITemplateResolver;

import javax.annotation.Resource;

/**
 * Describe: Security 安全配置
 * Author: 就眠仪式
 * CreateTime: 2019/10/23
 */
@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
@EnableConfigurationProperties(SecurityProperty.class)
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

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

    @Resource
    private SecurityUserDetailsService securityUserDetailsService; //实现userservice

    @Resource
    private SecurityUserTokenService securityUserTokenService;//remember me redis持久化

    @Resource
    private SecurityCaptchaSupport securityCaptchaSupport; //自定义验证码验证

    @Resource
    private SecurityExpiredSessionHandler securityExpiredSessionHandler;


    /**
     * Describe: 自定义权限注解实现
     */
    @Bean
    public DefaultWebSecurityExpressionHandler userSecurityExpressionHandler() {
        DefaultWebSecurityExpressionHandler handler = new DefaultWebSecurityExpressionHandler();
        handler.setPermissionEvaluator(securityPermissionEvaluator);
        return handler;
    }

    /**
     * Describe: 加密方式
     */
    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
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
     * 注册SessionRegistry
     */
    @Bean
    public SessionRegistry sessionRegistry() {
        return new SessionRegistryImpl();
    }

    /**
     * thymeleaf security 别名注册，方便前端使用
     */
    @Bean
    public ISpringTemplateEngine templateEngine(ITemplateResolver templateResolver) {
        SpringTemplateEngine templateEngine = new SpringTemplateEngine();
        templateEngine.setTemplateResolver(templateResolver);
        templateEngine.setEnableSpringELCompiler(true);
        templateEngine.addDialect(new SpringSecurityDialect());
        return templateEngine;
    }

    /**
     * Describe: 配置 Security 控制逻辑
     */
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers(securityProperty.getOpenApi()).permitAll()
                // 其他的需要登录后才能访问
                .anyRequest().authenticated()
                .and()
                .addFilterBefore(securityCaptchaSupport, UsernamePasswordAuthenticationFilter.class)//验证码验证类
            .httpBasic()
                .authenticationEntryPoint(securityAuthenticationEntryPoint)
                .and()
            .formLogin()
                //登录页面
                .loginPage("/login")
                //登录接口
                .loginProcessingUrl("/login")
                //配置登录成功自定义处理类
                .successHandler(securityAccessSuccessHander)
                //配置登录失败自定义处理类
                .failureHandler(securityAccessFailureHander)
                .and()
            .logout()
                .deleteCookies("JSESSIONID") //退出登录删除 cookie缓存
                .logoutSuccessHandler(securityAccessLogoutHander) //配置用户登出自定义处理类
                .and()
            .exceptionHandling()
                .accessDeniedHandler(securityAccessDeniedHander) //配置没有权限自定义处理类
                .and()
            .rememberMe()
                .rememberMeParameter("remember-me")
                .rememberMeCookieName("rememberme-token")
                .tokenRepository(securityUserTokenService)
                .key(securityProperty.getRememberKey())
                .and()
            .sessionManagement()
                .sessionFixation()
                .migrateSession()
                .sessionCreationPolicy(SessionCreationPolicy.IF_REQUIRED) //在需要使用到session时才创建session
                .maximumSessions(1)//同时登陆多个只保留一个
                .maxSessionsPreventsLogin(false)
                .expiredSessionStrategy(securityExpiredSessionHandler) // //踢出用户操作
                .sessionRegistry(sessionRegistry()); //用于统计在线

        // 取消跨站请求伪造防护
        http.csrf().disable();
        // 防止iframe 造成跨域
        http.headers().frameOptions().disable();
    }


}
