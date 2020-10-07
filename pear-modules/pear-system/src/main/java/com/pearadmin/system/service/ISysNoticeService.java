package com.pearadmin.system.service;


import com.github.pagehelper.PageInfo;
import com.pearadmin.common.web.domain.request.PageDomain;
import com.pearadmin.system.domain.SysNotice;

import java.util.List;

public interface ISysNoticeService {

    /**
     * Describe: 查询角色数据
     * Param: queryRoleParam
     * Return: 操作结果
     * */
    List<SysNotice> list(SysNotice param);

    /**
     * Describe: 查询角色数据
     * Param: queryRoleParam
     * Return: 操作结果
     * */
    List<SysNotice> top(Integer size);

    /**
     * Describe: 分页查询角色数据
     * Param: queryRoleParam
     * Param: pageDomain
     * Return: 操作结果
     * */
    PageInfo<SysNotice> page(SysNotice param, PageDomain pageDomain);

    /**
     * Describe: 保存角色数据
     * Param: SysRole
     * Return: 操作结果
     * */
    boolean save(SysNotice sysNotice);

    /**
     * Describe: 根据 id 获取角色信息
     * Param: id
     * Return: 操作结果
     * */
    SysNotice getById(String id);

    /**
     * Describe: 根据 id 修改用户数据
     * Param: ids
     * Return: 操作结果
     * */
    boolean update(SysNotice sysNotice);

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
