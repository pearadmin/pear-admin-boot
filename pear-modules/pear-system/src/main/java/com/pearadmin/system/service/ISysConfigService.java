package com.pearadmin.system.service;

import com.github.pagehelper.PageInfo;
import com.pearadmin.common.web.domain.request.PageDomain;
import com.pearadmin.system.domain.SysConfig;

import java.util.List;

public interface ISysConfigService {

    List<SysConfig> list(SysConfig sysConfig);

    PageInfo<SysConfig> page(SysConfig sysConfig, PageDomain pageDomain);

    Boolean save(SysConfig sysConfig);

    SysConfig getById(String configId);

    Boolean update(SysConfig sysConfig);

    Boolean remove(String id);
}
