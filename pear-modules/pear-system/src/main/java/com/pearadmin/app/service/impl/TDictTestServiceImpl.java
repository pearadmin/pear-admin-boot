package com.pearadmin.app.service.impl;

import java.util.List;
import java.util.ArrayList;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pearadmin.common.web.domain.request.PageDomain;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.pearadmin.app.mapper.TDictTestMapper;
import com.pearadmin.app.domain.TDictTest;
import com.pearadmin.app.service.ITDictTestService;

/**
 * 单表字典测试Service业务层处理
 * 
 * @author Songaw
 * @date 2020-12-04
 */
@Service
public class TDictTestServiceImpl implements ITDictTestService 
{
    @Autowired
    private TDictTestMapper tDictTestMapper;

    /**
     * 查询单表字典测试
     * 
     * @param id 单表字典测试ID
     * @return 单表字典测试
     */
    @Override
    public TDictTest selectTDictTestById(Long id)
    {
        return tDictTestMapper.selectTDictTestById(id);
    }

    /**
     * 查询单表字典测试列表
     * 
     * @param tDictTest 单表字典测试
     * @return 单表字典测试
     */
    @Override
    public List<TDictTest> selectTDictTestList(TDictTest tDictTest)
    {
        return tDictTestMapper.selectTDictTestList(tDictTest);
    }

    /**
     * 查询单表字典测试
     * @param tDictTest 单表字典测试
     * @param pageDomain
     * @return 单表字典测试 分页集合
     * */
    @Override
    public PageInfo<TDictTest> selectTDictTestPage(TDictTest tDictTest, PageDomain pageDomain)
    {
        PageHelper.startPage(pageDomain.getPage(),pageDomain.getLimit());
        List<TDictTest> data = tDictTestMapper.selectTDictTestList(tDictTest);
        return new PageInfo<>(data);
    }

    /**
     * 新增单表字典测试
     * 
     * @param tDictTest 单表字典测试
     * @return 结果
     */

    @Override
    public int insertTDictTest(TDictTest tDictTest)
    {
        return tDictTestMapper.insertTDictTest(tDictTest);
    }

    /**
     * 修改单表字典测试
     * 
     * @param tDictTest 单表字典测试
     * @return 结果
     */
    @Override
    public int updateTDictTest(TDictTest tDictTest)
    {
        return tDictTestMapper.updateTDictTest(tDictTest);
    }

    /**
     * 删除单表字典测试对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTDictTestByIds(String[] ids)
    {
        return tDictTestMapper.deleteTDictTestByIds(ids);
    }

    /**
     * 删除单表字典测试信息
     * 
     * @param id 单表字典测试ID
     * @return 结果
     */
    @Override
    public int deleteTDictTestById(Long id)
    {
        return tDictTestMapper.deleteTDictTestById(id);
    }
}
