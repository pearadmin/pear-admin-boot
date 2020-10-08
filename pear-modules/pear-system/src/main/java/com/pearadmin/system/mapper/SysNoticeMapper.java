package com.pearadmin.system.mapper;

import com.pearadmin.system.domain.SysNotice;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import java.util.List;

/**
 * Describe: 公告接口
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */
@Mapper
public interface SysNoticeMapper {

    /**
     * Describe: 公告列表
     * Param: SysNotice
     * Return: List<SysNotice>
     * */
    List<SysNotice> selectList(SysNotice param);

    /**
     * Describe: 查询 Top 排行，最新公告
     * Param: SysNotice
     * Return: 执行结果
     * */
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
