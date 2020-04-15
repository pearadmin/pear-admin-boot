package com.pearadmin.generator.utils;

import java.util.HashMap;
import java.util.Map;

/**
 * 返回数据
 * 
 * @author chenjunfei
 * @email kkomge@qq.com
 * @date 2016年10月27日 下午9:59:27
 */
public class R extends HashMap<String, Object> {
	private static final long serialVersionUID = 1L;

	public final static String CODE = "code";
	public final static String MSG = "msg";

	public R() {
		put(CODE, 0);
	}
	
	/*
	 * 在错误的情况下，不允许直接返回未知异常，要定义错误代码和消息
	 */
	@Deprecated
	public static R error() {
		return error(RRException.CODE_TYPE_OTHER, "未知异常，请联系管理员");
	}
	
	/*
	 * 在错误的情况下，不允许直接返回未知异常，要定义错误代码和消息
	 */
	@Deprecated
	public static R error(String msg) {
		return error(RRException.CODE_TYPE_OTHER, msg);
	}
	
	public static R error(int code, String msg) {
		R r = new R();
		r.put(CODE, code);
		r.put(MSG, msg);
		return r;
	}

	public static R ok(String msg) {
		R r = new R();
		r.put(MSG, msg);
		return r;
	}
	
	public static R ok(Map<String, Object> map) {
		R r = new R();
		r.putAll(map);
		return r;
	}

	public static R ok() {
		return new R();
	}
	@Override
	public R put(String key, Object value) {
		super.put(key, value);
		return this;
	}

}
