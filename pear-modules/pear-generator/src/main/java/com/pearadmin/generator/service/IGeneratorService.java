package com.pearadmin.generator.service;

import com.github.pagehelper.PageInfo;
import com.pearadmin.common.web.domain.request.PageDomain;

import java.util.List;
import java.util.Map;

/**
 * 代码生成器
 * 
 * @author chenjunfei
 * @email kkomge@qq.com
 * @date 2016年12月19日 下午3:33:38
 */
public interface IGeneratorService {
	
	PageInfo<Map<String, Object>> queryList(Map<String, Object> map, PageDomain pageDomain);
	
	int queryTotal(Map<String, Object> map);
	
	Map<String, String> queryTable(String tableName);
	
	List<Map<String, String>> queryColumns(String tableName);

	byte[] generatorCode(String[] tableNames);

}
