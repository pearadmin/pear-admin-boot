package com.pearadmin.system.param;

import lombok.Data;

/**
 * Describe: 查询用户接口参数实体
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */
@Data
public class QueryUserParam {

    /**
     * 账户
     * */
    private String username;

    /**
     * 用户名
     * */
    private String realName;

}
