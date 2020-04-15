package com.pearadmin.generator.utils;

/**
 * 自定义异常
 * 
 * @author chenjunfei
 * @email kkomge@qq.com
 * @date 2016年10月27日 下午10:11:27
 */
public class RRException extends RuntimeException {
	private static final long serialVersionUID = 1L;
	/**
	 * 框架错误
	 */
	public static final int CODE_TYPE_FRAMEWORK=10;
	/**
	 * 数据库错误
	 */
	public static final int CODE_TYPE_DATABASE=100;
	/**
	 * 权限错误
	 */
	public static final int CODE_TYPE_AUTHORIZATION=200;
	/**
	 * 工具错误
	 */
	public static final int CODE_TYPE_UTILS=300;
	/**
	 * 其他内部错误
	 */
	public static final int CODE_TYPE_OTHER=400;
	/**
	 * api授权错误
	 */
	public static final int CODE_TYPE_API_TOKEN=500;
	/**
	 * 业务错误
	 */
	public static final int CODE_TYPE_BUSINESS=600;
	
    private String msg;
    private int code = CODE_TYPE_OTHER;
    
    /**
	 * 在错误的情况下，不允许直接返回未知异常，要定义错误代码和消息
	 */
	@Deprecated
    public RRException(String msg) {
		super(msg);
		this.msg = msg;
	}
	/**
	 * 在错误的情况下，不允许直接返回未知异常，要定义错误代码和消息
	 */
	@Deprecated
    public RRException(Throwable e) {
		super(e);
	}
	/**
	 * 在错误的情况下，不允许直接返回未知异常，要定义错误代码和消息
	 */
   	@Deprecated
	public RRException(String msg, Throwable e) {
		super(msg, e);
		this.msg = msg;
	}
	
	public RRException(String msg, int code) {
		super(msg);
		this.msg = msg;
		this.code = code;
	}
	
	public RRException(String msg, int code, Throwable e) {
		super(msg, e);
		this.msg = msg;
		this.code = code;
	}

	public RRException(R r) {
   		if(null == r.get(R.MSG) || null == r.get(R.CODE)) {
			throw new NullPointerException("无效的构造参数");
		}

		this.msg = r.get(R.MSG) + "";
		this.code = Integer.parseInt(r.get(R.CODE) + "");
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}
	
	
}