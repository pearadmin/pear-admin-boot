package com.pearadmin.system.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pearadmin.common.web.domain.request.PageDomain;
import com.pearadmin.system.domain.SysOperLog;
import com.pearadmin.system.mapper.SysOperLogMapper;
import com.pearadmin.system.service.ISysOperLogService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class SysOperLogServiceImpl implements ISysOperLogService {

    @Resource
    private SysOperLogMapper sysOperLogMapper;

    @Override
    public PageInfo<SysOperLog> page(SysOperLog sysOperLog, PageDomain pageDomain) {

        PageHelper.startPage(pageDomain.getPage(),pageDomain.getLimit());
        List<SysOperLog> list = sysOperLogMapper.selectList(sysOperLog);
        return new PageInfo<>(list);
    }

    @Override
    public List<SysOperLog> list(SysOperLog sysOperLog) {
        return sysOperLogMapper.selectList(sysOperLog);
    }

    @Override
    public Boolean save(SysOperLog sysOperLog) {
        Integer result = sysOperLogMapper.insert(sysOperLog);

        if(result>0){
            return true;
        }else{
            return false;
        }

    }
}
