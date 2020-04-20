package com.pearadmin.generator.service;

import com.github.pagehelper.PageInfo;
import com.pearadmin.common.web.domain.request.PageDomain;
import com.pearadmin.generator.domain.GenTable;
import java.util.List;

public interface IGenTableService {

    public Boolean save(GenTable genTable);

    public List<GenTable> list();

    public PageInfo<GenTable> page(GenTable genTable, PageDomain pageDomain);

}
