package com.pearadmin.operate.service;

import com.github.pagehelper.PageInfo;
import com.pearadmin.common.web.domain.request.PageDomain;
import com.pearadmin.operate.domain.SysOperLog;

import java.util.List;

public interface ISysOperLogService {

    PageInfo<SysOperLog> page(SysOperLog sysOperLog, PageDomain pageDomain);

    List<SysOperLog> list(SysOperLog sysOperLog);

    Boolean save(SysOperLog sysOperLog);

}
