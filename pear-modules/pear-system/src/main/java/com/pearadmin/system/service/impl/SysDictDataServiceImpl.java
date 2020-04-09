package com.pearadmin.system.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pearadmin.common.web.domain.request.PageDomain;
import com.pearadmin.system.domain.SysDictData;
import com.pearadmin.system.mapper.SysDictDataMapper;
import com.pearadmin.system.service.ISysDictDataService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

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
}
