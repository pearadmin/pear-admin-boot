package com.pearadmin.generator.domain;

import com.pearadmin.common.web.base.BaseDomain;

/**
 * 列的属性
 * 
 * @author chenjunfei
 * @email kkomge@qq.com
 * @date 2016年12月20日 上午12:01:45
 */
public class GenTableColumn extends BaseDomain {

	private String columnId;
	//列名
    private String columnName;
    //列名类型
    private String dataType;
    //列名备注
    private String columnComment;
    //属性名称(第一个字母大写)，如：user_name => UserName
    private String attrName;
    //属性名称(第一个字母小写)，如：user_name => userName
    private String attrname;
    //属性类型
    private String attrType;
    //auto_increment
    private String extra;

	public String getColumnId() {
		return columnId;
	}
	public void setColumnId(String columnId) {
		this.columnId = columnId;
	}
	public String getColumnName() {
		return columnName;
	}
	public void setColumnName(String columnName) {
		this.columnName = columnName;
	}
	public String getDataType() {
		return dataType;
	}
	public void setDataType(String dataType) {
		this.dataType = dataType;
	}
    public String getAttrname() {
		return attrname;
	}
	public void setAttrname(String attrname) {
		this.attrname = attrname;
	}
	public String getAttrName() {
		return attrName;
	}
	public void setAttrName(String attrName) {
		this.attrName = attrName;
	}
	public String getAttrType() {
		return attrType;
	}
	public void setAttrType(String attrType) {
		this.attrType = attrType;
	}
	public String getExtra() {
		return extra;
	}
	public void setExtra(String extra) {
		this.extra = extra;
	}
	public String getColumnComment() { return columnComment; }
	public void setColumnComment(String columnComment) { this.columnComment = columnComment; }
}
