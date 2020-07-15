package com.pearadmin.resource.configure.service.impl;

import com.pearadmin.resource.configure.domain.Configure;
import com.pearadmin.resource.configure.mapper.ConfigureMapper;
import com.pearadmin.resource.configure.service.IConfigureService;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;

public class ConfigureServiceImpl implements IConfigureService {

    @Resource
    private ConfigureMapper sysConfigMapper;

    @Override
    public List<Configure> list(Configure sysConfig) {
        return sysConfigMapper.selectList(sysConfig);
    }

    @Override
    public Boolean save(Configure sysConfig) {
        sysConfig.setConfigId("1");
       Integer result = sysConfigMapper.insert(sysConfig);
       if(result>0){
           return true;
       }else{
           return false;
       }
    }

    @Override
    public Configure getById(String configId) {
       return sysConfigMapper.selectById(configId);
    }

    @Override
    public Boolean update(Configure sysConfig) {
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
