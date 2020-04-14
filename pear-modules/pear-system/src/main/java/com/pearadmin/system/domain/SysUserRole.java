package com.pearadmin.system.domain;

import lombok.Data;
import org.apache.ibatis.type.Alias;

@Data
@Alias("SysUserRole")
public class SysUserRole {

    /**
     * 映射标识
     * */
    private String id;

    /**
     * 用户编号
     * */
    private String userId;

    /**
     * 角色编号
     * */
    private String roleId;

}
