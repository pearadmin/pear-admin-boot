package com.pearadmin.generator.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pearadmin.common.web.domain.request.PageDomain;
import com.pearadmin.generator.mapper.GeneratorMapper;
import com.pearadmin.generator.service.IGeneratorService;
import com.pearadmin.generator.tools.GenUtils;
import org.apache.commons.io.IOUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.io.ByteArrayOutputStream;
import java.util.List;
import java.util.Map;
import java.util.zip.ZipOutputStream;

@Service
public class GeneratorServiceImpl implements IGeneratorService {
	@Resource
	private GeneratorMapper generatorMapper;

	@Override
    public PageInfo<Map<String, Object>> queryList(Map<String, Object> map, PageDomain pageDomain) {
		PageHelper.startPage(pageDomain.getPage(),pageDomain.getLimit());
		List<Map<String,Object>> list = generatorMapper.selectList(map);

		return new PageInfo<>(list);
	}

	@Override
    public int queryTotal(Map<String, Object> map) {

		return generatorMapper.count(map);
	}

	@Override
    public Map<String, String> queryTable(String tableName) {

		return generatorMapper.selectTable(tableName);
	}

	@Override
    public List<Map<String, String>> queryColumns(String tableName) {

		return generatorMapper.selectColumn(tableName);
	}

	@Override
	public byte[] generatorCode(String[] tableNames) {
		ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
		ZipOutputStream zip = new ZipOutputStream(outputStream);

		for(String tableName : tableNames){
			//查询表信息
			Map<String, String> table = queryTable(tableName);
			//查询列信息
			List<Map<String, String>> columns = queryColumns(tableName);
			//生成代码
			GenUtils.generatorCode(table, columns, zip);
		}
		IOUtils.closeQuietly(zip);
		return outputStream.toByteArray();
	}
}
