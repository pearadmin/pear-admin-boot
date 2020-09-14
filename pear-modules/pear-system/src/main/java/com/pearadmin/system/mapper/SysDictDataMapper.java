package com.pearadmin.system.mapper;

import com.pearadmin.system.domain.SysDictData;
import com.pearadmin.system.domain.SysDictType;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface SysDictDataMapper {

    List<SysDictData> selectList(SysDictData sysDictData);

    Integer insert(SysDictData sysDictData);

    SysDictData selectById(String id);

    Integer deleteById(String id);

}
