package com.pearadmin.system.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pearadmin.common.web.domain.request.PageDomain;
import com.pearadmin.system.domain.SysDictData;
import com.pearadmin.system.domain.SysDictType;
import com.pearadmin.system.mapper.SysDictDataMapper;
import com.pearadmin.system.service.ISysDictDataService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Describe: 字典值服务实现类
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */
@Service
public class SysDictDataServiceImpl implements ISysDictDataService {

    @Resource
    private SysDictDataMapper sysDictDataMapper;

    @Override
    public List<SysDictData> list(SysDictData sysDictData) {
        return sysDictDataMapper.selectList(sysDictData);
    }

    @Override
    public PageInfo<SysDictData> page(SysDictData sysDictData, PageDomain pageDomain) {
        PageHelper.startPage(pageDomain.getPage(),pageDomain.getLimit());
        List<SysDictData> list = sysDictDataMapper.selectList(sysDictData);
        return new PageInfo<>(list);
    }

    @Override
    public Boolean save(SysDictData sysDictData) {
        Integer result = sysDictDataMapper.insert(sysDictData);
        if(result>0){
            return true;
        }else{
            return false;
        }
    }

    @Override
    public SysDictData getById(String id) {
       return  sysDictDataMapper.selectById(id);
    }

    @Override
    public Boolean updateById(SysDictData sysDictData) {
        int result = sysDictDataMapper.updateById(sysDictData);
        if(result > 0){
            return true;
        }else{
            return false;
        }
    }

    @Override
    public Boolean remove(String id) {
        int result = sysDictDataMapper.deleteById(id);
        if(result>0){
            return true;
        }else{
            return false;
        }
    }
}
