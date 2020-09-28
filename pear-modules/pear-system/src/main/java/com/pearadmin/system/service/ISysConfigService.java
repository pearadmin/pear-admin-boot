package com.pearadmin.system.service;

import com.github.pagehelper.PageInfo;
import com.pearadmin.common.web.domain.request.PageDomain;
import com.pearadmin.system.domain.SysConfig;
import com.pearadmin.system.param.QueryConfigParam;
import java.util.List;

/**
 * Describe: 系统配置服务接口
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */

public interface ISysConfigService {

    /**
     * Describe: 根据条件查询系统配置列表数据
     * Param: SysConfig
     * Return: List<SysConfig>
     * */
    List<SysConfig> list(QueryConfigParam param);

    /**
     * Describe: 根据条件查询系统配置列表数据 分页
     * Param: SysConfig
     * Return: PageInfo<SysConfig>
     * */
    PageInfo<SysConfig> page(QueryConfigParam param, PageDomain pageDomain);

    /**
     * Describe: 根据 Id 查询系统配置
     * Param: SysConfig
     * Return: List<SysConfig>
     * */
    SysConfig getById(String id);

    /**
     * Describe: 插入 SysConfig 数据
     * Param: SysConfig
     * Return: List<SysConfig>
     * */
    Boolean save(SysConfig sysConfig);

    /**
     * Describe: 修改 SysConfig 数据
     * Param: SysConfig
     * Return: Boolean
     * */
    Boolean updateById(SysConfig sysConfig);

    /**
     * Describe: 删除 SysConfig 数据
     * Param: SysConfig
     * Return: Boolean
     * */
    Boolean remove(String id);
}
