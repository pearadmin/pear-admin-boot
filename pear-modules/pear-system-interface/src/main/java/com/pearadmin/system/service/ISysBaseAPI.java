package com.pearadmin.system.service;

import com.alibaba.fastjson.JSONObject;
import com.pearadmin.common.plugins.logging.enums.BusinessType;
import com.pearadmin.common.plugins.logging.enums.LoggingType;
import com.pearadmin.system.domain.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.List;

/**
 * @Description: 底层共通业务API，提供其他独立模块调用
 * @Author: Songaw
 * @Date:2020年12月1日14:33:12
 * @Version:V1.0
 */
public interface ISysBaseAPI {

	/**
	 * 日志添加
	 * @param title 标题
	 * @param description 描述
	 * @param logType 日志类型(0:操作日志;1:登录日志;2:定时任务)
	 * @param operatetype 操作类型(1:添加;2:修改;3:删除;)
	 */
	void addLog(String title,String description, LoggingType logType, BusinessType operatetype);
	
	/**
	  * 根据用户账号查询用户信息
	 * @param username
	 * @return
	 */
	public SysUserModel getUserByName(String username);
	
	/**
	  * 根据用户id查询用户信息
	 * @param id
	 * @return
	 */
	public SysUserModel getUserById(String id);
	
	/**
	 * 通过用户账号查询角色集合
	 * @param username
	 * @return
	 */
	public List<SysRoleModel> getRolesByUsername(String username);

	/**
	 * 通过用户账号查询部门集合
	 * @param username
	 * @return 部门 id
	 */
	List<String> getDepartIdsByUsername(String username);

	/**
	 * 通过用户账号查询部门 name
	 * @param username
	 * @return 部门 name
	 */
	List<String> getDepartNamesByUsername(String username);

	/**
	 * 获取当前数据库类型
	 * @return
	 * @throws Exception 
	 */
	public String getDatabaseType() throws SQLException;

	/**
	 * 根据字典code获取可用的字典列表数据
	 * @param typeCode
	 * @return
	 */
	List<SysDictDataModel> selectByCode(String typeCode);

	/** 查询所有的父级字典，按照create_time排序 */
	public List<SysDictDataModel> queryAllDict();

    /**
     * 查询所有分类字典
     * @return
     */
	public List<SysDictTypeModel> queryAllSysDictType();

	/**
	  * 获取表数据字典
	 * @param table
	 * @param text
	 * @param code
	 * @return
	 */
    List<SysDictDataModel> queryTableDictItemsByCode(String table, String text, String code);
    
    /**
   	 * 查询所有部门 作为字典信息 id -->value,departName -->text
   	 * @return
   	 */
   	public List<SysDictDataModel> queryAllDepartBackDictModel();


	/**
	 * 查询表字典 支持过滤数据
	 * @param table
	 * @param text
	 * @param code
	 * @param filterSql
	 * @return
	 */
	public List<SysDictDataModel> queryFilterTableDictInfo(String table, String text, String code, String filterSql);

	/**
	 * 查询指定table的 text code 获取字典，包含text和value
	 * @param table
	 * @param text
	 * @param code
	 * @param keyArray
	 * @return
	 */
	@Deprecated
	public List<String> queryTableDictByKeys(String table, String text, String code, String[] keyArray);



	/**
	 * 通过用户账号查询角色Id集合
	 * @param username
	 * @return
	 */
	public List<String> getRoleIdsByUsername(String username);

	/**
	 * 通过部门编号查询部门id
	 * @param orgCode
	 * @return
	 */
	public String getDepartIdsByOrgCode(String orgCode);

	/**
	 * 查询上一级部门
	 * @param departId
	 * @return
	 */
	public SysDeptModel getParentDepartId(String departId);

	/**
	 * 查询所有部门
	 * @return
	 */
	public List<SysDeptModel> getAllSysDepart();



	/**
	 * 根据部门Id获取部门负责人
	 * @param deptId
	 * @return
	 */
	public List<String> getDeptHeadByDepId(String deptId);

	/**
	 * 文件上传
	 * @param file 文件
	 * @param bizPath 自定义路径
	 * @param uploadType 上传方式
	 * @return
	 */
	public String upload(MultipartFile file, String bizPath, String uploadType);

	/**
	 * 文件上传 自定义桶
	 * @param file
	 * @param bizPath
	 * @param uploadType
	 * @param customBucket
	 * @return
	 */
	public String upload(MultipartFile file, String bizPath, String uploadType, String customBucket);

	/**
	 * 文档管理文件下载预览
	 * @param filePath
	 * @param uploadpath
	 * @param response
	 */
	public void viewAndDownload(String filePath, String uploadpath, String uploadType, HttpServletResponse response);



	/**
	 * 根据id获取用户
	 * userIds
	 * @return
	 */
	public List<SysUserModel> queryAllUserByIds(String[] userIds);

	/**
	 * 根据name获取用户
	 * userNames
	 * @return
	 */
	List<SysUserModel> queryUserByNames(String[] userNames);
}
