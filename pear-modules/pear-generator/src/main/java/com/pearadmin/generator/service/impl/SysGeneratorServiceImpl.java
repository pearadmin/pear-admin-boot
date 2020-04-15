package com.pearadmin.generator.service.impl;

import com.pearadmin.generator.dao.SysGeneratorDao;
import com.pearadmin.generator.service.SysGeneratorService;
import com.pearadmin.generator.utils.GenUtils;
import com.pearadmin.generator.utils.initContants;
import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.ByteArrayOutputStream;
import java.util.List;
import java.util.Map;
import java.util.zip.ZipOutputStream;

@Service("sysGeneratorService")
public class SysGeneratorServiceImpl implements SysGeneratorService {
	@Autowired
	private SysGeneratorDao sysGeneratorDao;

	@Override
    public List<Map<String, Object>> queryList(Map<String, Object> map) {

		switch (initContants.databaseType) {
			case ORACLE:
				return sysGeneratorDao.queryOracleList(map);
			case MYSQL:
				return sysGeneratorDao.queryMySQLList(map);
			default:
				break;
		}
		return sysGeneratorDao.queryMySQLList(map);
	}

	@Override
    public int queryTotal(Map<String, Object> map) {

        switch (initContants.databaseType) {
		case ORACLE:
			return sysGeneratorDao.queryOracleTotal(map);
		case MYSQL:
			return sysGeneratorDao.queryMySQLTotal(map);
		default:
			break;
	}
		return sysGeneratorDao.queryMySQLTotal(map);
	}

	@Override
    public Map<String, String> queryTable(String tableName) {
        switch (initContants.databaseType) {
		case ORACLE:
			return sysGeneratorDao.queryOracleTable(tableName);
		case MYSQL:
			return sysGeneratorDao.queryMySQLTable(tableName);
		default:
			break;
	}
		return sysGeneratorDao.queryMySQLTable(tableName);
	}

	@Override
    public List<Map<String, String>> queryColumns(String tableName) {
        switch (initContants.databaseType) {
		case ORACLE:
			return sysGeneratorDao.queryOracleColumns(tableName);
		case MYSQL:
			return sysGeneratorDao.queryMySQLColumns(tableName);
		default:
			break;
	}
		return sysGeneratorDao.queryMySQLColumns(tableName);
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
