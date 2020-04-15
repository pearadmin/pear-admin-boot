package com.pearadmin.generator.dao;

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
public interface SysGeneratorDao {
	
	List<Map<String, Object>> queryMySQLList(Map<String, Object> map);
	
	int queryMySQLTotal(Map<String, Object> map);
	
	Map<String, String> queryMySQLTable(String tableName);
	
	List<Map<String, String>> queryMySQLColumns(String tableName);
	
	List<Map<String, Object>> queryOracleList(Map<String, Object> map);
	
	int queryOracleTotal(Map<String, Object> map);
	
	Map<String, String> queryOracleTable(String tableName);
	
	List<Map<String, String>> queryOracleColumns(String tableName);
}
