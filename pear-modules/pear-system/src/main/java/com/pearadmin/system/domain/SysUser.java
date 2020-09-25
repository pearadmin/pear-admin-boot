package com.pearadmin.system.domain;

import com.pearadmin.common.web.base.BaseDomain;
import lombok.Data;
import org.apache.ibatis.type.Alias;

/**
 * Describe: 用户领域模型
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */

@Data
@Alias("SysUser")
public class SysUser extends BaseDomain {

    /**
     * 编号
     * */
    private String userId;

    /**
     * 账户
     * */
    private String username;

    /**
     * 密码
     * */
    private String password;

    /**
     * 盐
     * */
    private String salt;

    /**
     * 状态
     * */
    private String status;

    /**
     * 姓名
     * */
    private String realName;

    /**
     * 邮箱
     * */

    private String email;

    /**
     * 头像
     * */
    private String avatar;

    /**
     * 性别
     * */
    private String sex;

    /**
     * 电话
     * */
    private String phone;

    /**
     * 是否启用
     * */
    private Boolean enable;

    /**
     * 是否登录
     * */
    private String login;

    /**
     * 计算列
     * */
    private String roleIds;

}
