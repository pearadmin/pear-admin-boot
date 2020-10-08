package com.pearadmin.system.service;


import com.github.pagehelper.PageInfo;
import com.pearadmin.common.web.domain.request.PageDomain;
import com.pearadmin.system.domain.SysNotice;

import java.util.List;

/**
 * Describe: 公告服务接口类
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */
public interface ISysNoticeService {

    /**
     * Describe: 查询公告数据
     * Param: queryNoticeParam
     * Return: 操作结果
     * */
    List<SysNotice> list(SysNotice param);

    /**
     * Describe: 查询公告数据
     * Param: queryNoticeParam
     * Return: 操作结果
     * */
    List<SysNotice> top(Integer size);

    /**
     * Describe: 分页查询公告数据
     * Param: queryNoticeParam
     * Param: pageDomain
     * Return: 操作结果
     * */
    PageInfo<SysNotice> page(SysNotice param, PageDomain pageDomain);

    /**
     * Describe: 保存公告数据
     * Param: SysNotice
     * Return: 操作结果
     * */
    boolean save(SysNotice sysNotice);

    /**
     * Describe: 根据 id 获取公告信息
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
     * Describe: 根据 id 删除公告数据
     * Param: id
     * Return: 操作结果
     * */
    Boolean remove(String id);

    /**
     * Describe: 根据 id 删除公告数据
     * Param: ids
     * Return: 操作结果
     * */
    boolean batchRemove(String[] ids);



}
