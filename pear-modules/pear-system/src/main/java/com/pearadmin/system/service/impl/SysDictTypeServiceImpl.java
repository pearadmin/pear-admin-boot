package com.pearadmin.system.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pearadmin.common.tools.serial.SnowFlake;
import com.pearadmin.common.web.domain.request.PageDomain;
import com.pearadmin.system.domain.SysDictType;
import com.pearadmin.system.mapper.SysDictTypeMapper;
import com.pearadmin.system.service.ISysDictTypeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class SysDictTypeServiceImpl implements ISysDictTypeService {

    @Resource
    private SysDictTypeMapper sysDictTypeMapper;

    /**
     * Describe: 根据条件查询用户列表数据
     * Param: SysDictType
     * Return: List<SysDictType>
     * */
    @Override
    public List<SysDictType> list(SysDictType sysDictType) {
        return sysDictTypeMapper.selectList(sysDictType);
    }

    /**
     * Describe: 根据条件查询用户列表数据 分页
     * Param: SysDictType
     * Return: PageInfo<SysDictType>
     * */
    @Override
    public PageInfo<SysDictType> page(SysDictType sysDictType, PageDomain pageDomain) {
        PageHelper.startPage(pageDomain.getPage(),pageDomain.getLimit());
        List<SysDictType> list = sysDictTypeMapper.selectList(sysDictType);
        return new PageInfo<>(list);
    }

    /**
     * Describe: 保存字典数据
     * Param: SysDictType
     * Return: Boolean
     * */
    @Override
    public Boolean save(SysDictType sysDictType) {
        sysDictType.setId("" + new SnowFlake().nextId());
        Integer result = sysDictTypeMapper.insert(sysDictType);
        if(result > 0){
            return true;
        }else{
            return false;
        }
    }

    /**
     * Describe: 根据 ID 查询字典类型
     * Param: id
     * Return: 返回字典类型信息
     * */
    @Override
    public SysDictType getById(String id) {
        return sysDictTypeMapper.selectById(id);
    }


    /**
     * Describe: 根据 ID 修改字典类型
     * Param: SysDictType
     * Return: Boolean
     * */
    @Override
    public Boolean updateById(SysDictType sysDictType) {
        int result = sysDictTypeMapper.updateById(sysDictType);
        if(result > 0){
            return true;
        }else{
            return false;
        }
    }

    @Override
    public Boolean remove(String id) {
        Integer result = sysDictTypeMapper.deleteById(id);
        if(result>0){
            return true;
        }else{
            return false;
        }
    }
}
