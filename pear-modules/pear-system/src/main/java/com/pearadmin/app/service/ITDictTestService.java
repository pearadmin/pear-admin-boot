package com.pearadmin.app.service;

import java.util.List;
import com.github.pagehelper.PageInfo;
import com.pearadmin.common.web.domain.request.PageDomain;
import com.pearadmin.app.domain.TDictTest;

/**
 * 单表字典测试Service接口
 * 
 * @author Songaw
 * @date 2020-12-04
 */
public interface ITDictTestService 
{
    /**
     * 查询单表字典测试
     * 
     * @param id 单表字典测试ID
     * @return 单表字典测试
     */
    TDictTest selectTDictTestById(Long id);


    /**
    * 查询单表字典测试
     * @param ${classsName} 单表字典测试
     * @param pageDomain
     * @return 单表字典测试 分页集合
     * */
    PageInfo<TDictTest> selectTDictTestPage(TDictTest tDictTest, PageDomain pageDomain);

    /**
     * 查询单表字典测试列表
     * 
     * @param tDictTest 单表字典测试
     * @return 单表字典测试集合
     */
    List<TDictTest> selectTDictTestList(TDictTest tDictTest);

    /**
     * 新增单表字典测试
     * 
     * @param tDictTest 单表字典测试
     * @return 结果
     */
    int insertTDictTest(TDictTest tDictTest);

    /**
     * 修改单表字典测试
     * 
     * @param tDictTest 单表字典测试
     * @return 结果
     */
    int updateTDictTest(TDictTest tDictTest);

    /**
     * 批量删除单表字典测试
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    int deleteTDictTestByIds(String[] ids);

    /**
     * 删除单表字典测试信息
     * 
     * @param id 单表字典测试ID
     * @return 结果
     */
    int deleteTDictTestById(Long id);

}
