package com.pearadmin.common.web.domain.response;

import lombok.Data;

/**
 * Describe: Ajax 返回 Dtree 结果封装数据
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */
@Data
public class ResuTree {

    /**
     * 状态信息
     * */
    private Status status = new Status();

    /**
     * 返回数据
     * */
    private Object data;

    /**
     * 所需内部类
     * */
    @Data
    public class Status{

        private Integer code = 200;

        private String message = "默认";

    }

}
