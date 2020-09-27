package com.pearadmin.system.service;

import com.github.pagehelper.PageInfo;
import com.pearadmin.common.web.domain.request.PageDomain;
import com.pearadmin.system.domain.SysPower;
import com.pearadmin.system.domain.SysRole;
import com.pearadmin.system.domain.SysUser;
import com.pearadmin.system.param.QueryRoleParam;

import java.util.List;

public interface ISysRoleService {

    public List<SysRole> list(QueryRoleParam queryRoleParam);

    public PageInfo<SysRole> page(QueryRoleParam queryRoleParam, PageDomain pageDomain);

    /**
     * Describe: 保存角色数据
     * Param: SysRole
     * Return: 操作结果
     * */
    boolean save(SysRole sysRole);

    SysRole getById(String id);

    /**
     * Describe: 根据 id 修改用户数据
     * Param: ids
     * Return: 操作结果
     * */
    boolean update(SysRole sysRole);

    List<SysPower> getRolePower(String roleId);

    Boolean saveRolePower(String roleId,List<String> powerIds);

    Boolean remove(String id);

    /**
     * Describe: 根据 id 删除角色数据
     * Param: ids
     * Return: 操作结果
     * */
    boolean batchRemove(String[] ids);
}
