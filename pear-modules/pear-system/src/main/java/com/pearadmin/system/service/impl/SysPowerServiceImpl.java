package com.pearadmin.system.service.impl;

import com.pearadmin.system.domain.SysPower;
import com.pearadmin.system.domain.SysRole;
import com.pearadmin.system.mapper.SysPowerMapper;
import com.pearadmin.system.service.ISysPowerService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class SysPowerServiceImpl implements ISysPowerService {

    @Resource
    private SysPowerMapper sysPowerMapper;

    @Override
    public List<SysPower> list(SysPower sysPower) {

        return sysPowerMapper.selectList(sysPower);
    }

    @Override
    public boolean save(SysPower sysPower) {
        int result =  sysPowerMapper.insert(sysPower);
        if(result>0){
            return true;
        }else{
            return false;
        }
    }

    /**
     * Describe: 根据 ID 查询角色
     * Param: id
     * Return: 返回角色信息
     * */
    @Override
    public SysPower getById(String id) {
        return sysPowerMapper.selectById(id);
    }

    @Override
    public boolean update(SysPower sysPower) {
        int result = sysPowerMapper.updateById(sysPower);
        if(result > 0){
            return true;
        }else{
            return false;
        }
    }

    @Override
    public boolean remove(String id) {
        int result = sysPowerMapper.deleteById(id);
        if(result > 0){
            return true;
        }else{
            return false;
        }
    }
}
