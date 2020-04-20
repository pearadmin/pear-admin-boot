package com.pearadmin.generator.mapper;

import com.pearadmin.generator.domain.GenTable;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface GenTableMapper {

    List<GenTable> selectList(GenTable genTable);

    GenTable selectById(@Param("tableId") String tableId);

    Integer insert(GenTable genTable);

}
