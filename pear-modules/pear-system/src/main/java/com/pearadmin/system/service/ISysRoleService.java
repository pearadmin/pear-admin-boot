package com.pearadmin.system.service;

import com.github.pagehelper.PageInfo;
import com.pearadmin.common.web.domain.request.PageDomain;
import com.pearadmin.system.domain.SysPower;
import com.pearadmin.system.domain.SysRole;
import com.pearadmin.system.domain.SysUser;
import com.pearadmin.system.param.QueryRoleParam;

import java.util.List;

public interface ISysRoleService {

    /**
     * Describe: 查询角色数据
     * Param: queryRoleParam
     * Return: 操作结果
     * */
    public List<SysRole> list(QueryRoleParam queryRoleParam);

    /**
     * Describe: 分页查询角色数据
     * Param: queryRoleParam
     * Param: pageDomain
     * Return: 操作结果
     * */
    public PageInfo<SysRole> page(QueryRoleParam queryRoleParam, PageDomain pageDomain);

    /**
     * Describe: 保存角色数据
     * Param: SysRole
     * Return: 操作结果
     * */
    boolean save(SysRole sysRole);

    /**
     * Describe: 根据 id 获取角色信息
     * Param: id
     * Return: 操作结果
     * */
    SysRole getById(String id);

    /**
     * Describe: 根据 id 修改用户数据
     * Param: ids
     * Return: 操作结果
     * */
    boolean update(SysRole sysRole);

    /**
     * Describe: 获取角色权限
     * Param: roleId
     * Return: 操作结果
     * */
    List<SysPower> getRolePower(String roleId);

    /**
     * Describe: 保存角色权限
     * Param: roleId , powerIds
     * Return: 操作结果
     * */
    Boolean saveRolePower(String roleId,List<String> powerIds);

    /**
     * Describe: 根据 id 删除角色数据
     * Param: id
     * Return: 操作结果
     * */
    Boolean remove(String id);

    /**
     * Describe: 根据 id 删除角色数据
     * Param: ids
     * Return: 操作结果
     * */
    boolean batchRemove(String[] ids);
}
