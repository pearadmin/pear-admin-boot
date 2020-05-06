package com.pearadmin.system.mapper;

import com.pearadmin.system.domain.SysDictType;
import org.apache.ibatis.annotations.Mapper;
import java.util.List;

@Mapper
public interface SysDictTypeMapper {

    public List<SysDictType> selectList(SysDictType sysDictType);

    public SysDictType selectById(String id);

    public Integer insert(SysDictType sysDictType);

    public Integer updateById(SysDictType sysDictType);

    public Integer deleteById(String id);
}
