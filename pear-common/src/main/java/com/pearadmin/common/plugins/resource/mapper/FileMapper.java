package com.pearadmin.common.plugins.resource.mapper;

import com.pearadmin.common.plugins.resource.domain.File;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import java.util.List;

/**
 * Describe: 文件服务接口
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */
@Mapper
public interface FileMapper {

    /**
     * Describe: 插入文件信息
     * Param: File
     * Return: int
     * */
    int insert(File file);

    /**
     * Describe: 查询文件列表
     * Param: null
     * Return: List<File>
     * */
    List<File> selectList();

    /**
     * Describe: 根据 Id 查询文件信息
     * Param: id
     * Return: File
     * */
    File selectById(@Param("id") String id);

    /**
     * Describe: 根据 Id 删除文件信息
     * Param: id
     * Return: int
     * */
    int deleteById(@Param("id") String id);

}
