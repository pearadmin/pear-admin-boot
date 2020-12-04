package com.pearadmin.app.mapper;

import org.apache.ibatis.annotations.Mapper;
import java.util.List;
import com.pearadmin.app.domain.TDictTest;

/**
 * 单表字典测试Mapper接口
 * 
 * @author Songaw
 * @date 2020-12-04
 */
@Mapper
public interface TDictTestMapper 
{
    /**
     * 查询单表字典测试
     * 
     * @param id 单表字典测试ID
     * @return 单表字典测试
     */
    public TDictTest selectTDictTestById(Long id);

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
     * 删除单表字典测试
     * 
     * @param id 单表字典测试ID
     * @return 结果
     */
    int deleteTDictTestById(Long id);

    /**
     * 批量删除单表字典测试
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    int deleteTDictTestByIds(String[] ids);

}
