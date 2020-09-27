package com.pearadmin.security.exception;

import org.springframework.security.core.AuthenticationException;

/**
 * 验证码异常
 * */
public class CaptchaException extends AuthenticationException {

    /**
     * 验证码异常构造函数
     * */
    public CaptchaException(String message){
        super(message);
    }
}
