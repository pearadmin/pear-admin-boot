package com.pearadmin.system.mapper;

import com.pearadmin.system.domain.SysRolePower;
import com.pearadmin.system.domain.SysUserRole;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface SysUserRoleMapper {

    int batchInsert(List<SysUserRole> sysUserRoles);

    int deleteByUserId(String userId);

    List<SysUserRole> selectByUserId(String userId);

}
