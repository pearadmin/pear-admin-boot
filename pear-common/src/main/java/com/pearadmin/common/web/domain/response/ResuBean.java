package com.pearadmin.common.web.domain.response;

import com.pearadmin.common.web.base.BaseDomain;

/**
 * Describe: Ajax 返回 JSON 结果封装数据
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */

public class ResuBean extends BaseDomain {

    /**
     * 身份令牌
     * */
    private String token;

    /**
     * 状态码
     * */
    private Integer code;

    /**
     * 提示消息
     * */
    private String msg;

    /**
     * 返回结果
     * */
    private boolean success;

    /**
     * 携带数据
     * */
    private Object data;

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public boolean isSuccess() {
        return success;
    }

    public void setSuccess(boolean success) {
        this.success = success;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }
}
