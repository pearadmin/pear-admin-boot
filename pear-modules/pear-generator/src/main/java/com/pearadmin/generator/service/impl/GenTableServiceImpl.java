package com.pearadmin.generator.service.impl;

import com.github.pagehelper.PageInfo;
import com.pearadmin.common.web.domain.request.PageDomain;
import com.pearadmin.generator.domain.GenTable;
import com.pearadmin.generator.mapper.GenTableMapper;
import com.pearadmin.generator.service.IGenTableService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class GenTableServiceImpl implements IGenTableService {

    @Resource
    private GenTableMapper genTableMapper;

    @Override
    public Boolean save(GenTable genTable) {
        Integer result = genTableMapper.insert(genTable);

        if(result>0){
            return true;
        }else{
            return false;
        }
    }

    @Override
    public List<GenTable> list() {
        return null;
    }

    @Override
    public PageInfo<GenTable> page(GenTable genTable,PageDomain pageDomain) {
        List<GenTable> genTables = genTableMapper.selectList(genTable);
        return new PageInfo<>(genTables);
    }
}
