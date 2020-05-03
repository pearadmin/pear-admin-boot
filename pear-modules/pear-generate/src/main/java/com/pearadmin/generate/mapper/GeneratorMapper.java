package com.pearadmin.generate.mapper;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

/**
 * 代码生成器
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2016年12月19日 下午3:32:04
 */
@Mapper
public interface GeneratorMapper {
	
	List<Map<String, Object>> selectList(Map<String, Object> map);
	
	int count(Map<String, Object> map);
	
	Map<String, String> selectTable(String tableName);
	
	List<Map<String, String>> selectColumn(String tableName);
}
