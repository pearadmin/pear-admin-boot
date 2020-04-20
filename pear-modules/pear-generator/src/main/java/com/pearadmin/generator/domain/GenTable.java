package com.pearadmin.generator.domain;

import com.pearadmin.common.web.base.BaseDomain;
import org.apache.ibatis.type.Alias;

import java.util.List;

/**
 * 表数据
 * 
 * @author chenjunfei
 * @email kkomge@qq.com
 * @date 2016年12月20日 上午12:02:55
 */
@Alias("GenTable")
public class GenTable extends BaseDomain {

	//表Id
	private String tableId;
	//表的名称
	private String tableNames;
	//表的备注
	private String tableComments;
	//类名(第一个字母大写)，如：sys_user => SysUser
	private String className;
	//类名(第一个字母小写)，如：sys_user => sysUser
	private String classname;
	//包名称
	private String packageName;
	//模块名称
	private String moduleName;
	//作者名称
	private String author;
	//分类
	private String category;
    //业务名称
	private String businessName;
	//方法名称
	private String functionName;
	//表的主键
	private GenTableColumn primaryKey;
	//表的列名(不包含主键)
	private List<GenTableColumn> columns;

	public String getTableId() {
		return tableId;
	}
	public void setTableId(String tableId) {
		this.tableId = tableId;
	}
	public String getTableNames() { return tableNames; }
	public void setTableNames(String tableNames) { this.tableNames = tableNames; }
	public List<GenTableColumn> getColumns() {
		return columns;
	}
	public void setColumns(List<GenTableColumn> columns) {
		this.columns = columns;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public String getClassname() {
		return classname;
	}
	public void setClassname(String classname) {
		this.classname = classname;
	}
	public String getPackageName() { return packageName; }
	public void setPackageName(String packageName) { this.packageName = packageName; }
	public String getModuleName() { return moduleName; }
	public void setModuleName(String moduleName) { this.moduleName = moduleName; }
	public GenTableColumn getPrimaryKey() { return primaryKey; }
	public void setPrimaryKey(GenTableColumn primaryKey) { this.primaryKey = primaryKey; }
	public String getAuthor() { return author; }
	public void setAuthor(String author) { this.author = author; }
	public String getCategory() { return category; }
	public void setCategory(String category) { this.category = category; }
	public String getBusinessName() { return businessName; }
	public void setBusinessName(String businessName) { this.businessName = businessName; }
	public String getFunctionName() { return functionName; }
	public void setFunctionName(String functionName) { this.functionName = functionName; }
	public String getTableComments() { return tableComments; }
	public void setTableComments(String tableComments) { this.tableComments = tableComments; }
}
