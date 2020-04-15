package com.pearadmin.generator.utils;


import java.util.LinkedHashMap;
import java.util.Map;

/**
 * 查询参数
 *
 * @author chenjunfei
 * @email kkomge@qq.com
 * @date 2017-08-14 23:15
 */
public class Query extends LinkedHashMap<String, Object> {
	private static final long serialVersionUID = 1L;
	//当前页码
    private int page;
    //每页条数
    private int limit;

    public Query(Map<String, Object> params){
        this.putAll(params);

        //分页参数
        this.page = Integer.parseInt(params.get("page")+"");
        this.limit = Integer.parseInt(params.get("limit")+"");
        //this.put("offset", (page - 1) * limit);//框架升级，不使用mysql直接分页，使用com.github.pagehelper.PageInterceptor进行统一分页，兼容oracle
        this.put("page", page);
        this.put("limit", limit);

        //防止SQL注入（因为sidx、order是通过拼接SQL实现排序的，会有SQL注入风险）
        String sidx = params.get("sidx")+"";
        String order = params.get("order")+"";
        this.put("sidx", SQLFilter.sqlInject(sidx));
        this.put("order", SQLFilter.sqlInject(order));
    }


    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getLimit() {
        return limit;
    }

    public void setLimit(int limit) {
        this.limit = limit;
    }
}
