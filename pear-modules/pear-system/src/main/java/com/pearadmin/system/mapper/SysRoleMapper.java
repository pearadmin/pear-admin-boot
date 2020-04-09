package com.pearadmin.system.mapper;

import com.pearadmin.system.domain.SysRole;
import com.pearadmin.system.domain.SysUser;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface SysRoleMapper {

     List<SysRole> selectList(SysRole sysRole);

    /**
     * Describe: 添加角色数据
     * Param: SysRole
     * Return: 执行结果
     * */
    Integer insert(SysRole sysRole);

    /**
     * Describe: 根据 Id 查询角色
     * Param: id
     * Return: SysRole
     * */
    SysRole selectById(@Param("id") String id);

    /**
     * Describe: 根据 Id 修改角色
     * Param: username
     * Return: SysUser
     * */
    Integer updateById(SysRole sysRole);

    /**
     * Describe: 根据 Id 删除用户
     * Param: username
     * Return: SysUser
     * */
    Integer deleteById(String id);



}
