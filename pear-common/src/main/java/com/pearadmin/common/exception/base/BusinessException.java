package com.pearadmin.common.exception.base;

public class BusinessException extends RuntimeException {

    protected final String message;

    public BusinessException(String message){

        this.message = message;
    }

    @Override
    public String getMessage() {

        return message;
    }
}
