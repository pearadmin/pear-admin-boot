package com.pearadmin.system.service;

import com.pearadmin.system.domain.SysPower;
import com.pearadmin.system.domain.SysRole;
import com.pearadmin.system.domain.SysUser;

import java.util.List;

public interface ISysPowerService {

    /**
     * Describe: 根据条件查询权限列表数据
     * Param: SysPower
     * Return: 返回用户列表数据
     * */
    List<SysPower> list(SysPower sysPower);

    /**
     * Describe: 保存权限数据
     * Param: SysPower
     * Return: 操作结果
     * */
    boolean save(SysPower sysPower);

    /**
     * Describe: 根据 id 获取权限数据
     * Param: SysPower
     * Return: 操作结果
     * */
    SysPower getById(String id);

    /**
     * Describe: 修改权限数据
     * Param: SysPower
     * Return: 操作结果
     * */
    boolean update(SysPower sysPower);

    /**
     * Describe: 根据 id 删除用户数据
     * Param: id
     * Return: 操作结果
     * */
    boolean remove(String id);
}
