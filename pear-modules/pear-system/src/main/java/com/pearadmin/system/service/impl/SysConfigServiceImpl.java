package com.pearadmin.system.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pearadmin.common.tools.serial.SnowFlake;
import com.pearadmin.common.web.domain.request.PageDomain;
import com.pearadmin.system.domain.SysConfig;
import com.pearadmin.system.mapper.SysConfigMapper;
import com.pearadmin.system.service.ISysConfigService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class SysConfigServiceImpl implements ISysConfigService {

    @Resource
    private SysConfigMapper sysConfigMapper;

    @Override
    public List<SysConfig> list(SysConfig sysConfig) {
        return sysConfigMapper.selectList(sysConfig);
    }

    @Override
    public PageInfo<SysConfig> page(SysConfig sysConfig, PageDomain pageDomain) {
        PageHelper.startPage(pageDomain.getPage(),pageDomain.getLimit());
        List<SysConfig> list = sysConfigMapper.selectList(sysConfig);
        return new PageInfo<>(list);
    }

    @Override
    public Boolean save(SysConfig sysConfig) {
        sysConfig.setConfigId("" + new SnowFlake().nextId());
       Integer result = sysConfigMapper.insert(sysConfig);
       if(result>0){
           return true;
       }else{
           return false;
       }
    }

    @Override
    public SysConfig getById(String configId) {
       return sysConfigMapper.selectById(configId);
    }

    @Override
    public Boolean update(SysConfig sysConfig) {
        Integer result = sysConfigMapper.updateById(sysConfig);
        if(result>0){
            return true;
        }else{
            return false;
        }
    }

    @Override
    public Boolean remove(String id) {
        Integer result = sysConfigMapper.deleteById(id);
        if(result>0){
            return true;
        }else{
            return false;
        }
    }
}
