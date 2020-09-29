package com.pearadmin.system.mapper;

import com.pearadmin.system.domain.SysNotice;
import com.pearadmin.system.param.QueryNoticeParam;
import io.swagger.models.auth.In;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import java.util.List;

@Mapper
public interface SysNoticeMapper {

    List<SysNotice> selectList(QueryNoticeParam queryNoticeParam);


    List<SysNotice> selectTop(Integer size);

    /**
     * Describe: 添加公告数据
     * Param: SysNotice
     * Return: 执行结果
     * */
    Integer insert(SysNotice sysNotice);

    /**
     * Describe: 根据 Id 查询公告
     * Param: id
     * Return: SysNotice
     * */
    SysNotice selectById(@Param("id") String id);

    /**
     * Describe: 根据 Id 修改公告
     * Param: SysNotice
     * Return: Integer
     * */
    Integer updateById(SysNotice sysNotice);

    /**
     * Describe: 根据 Id 删除用户
     * Param: id
     * Return: Integer
     * */
    Integer deleteById(String id);

    /**
     * Describe: 根据 Id 批量删除
     * Param: ids
     * Return: Integer
     * */
    Integer deleteByIds(String[] ids);
}
