package com.pearadmin.common.web.session;

/**
 * @Author: Heiky
 * @Date: 2020/12/17 17:47
 * @Description: HttpSessionContext对象持有者
 */
public class HttpSessionContextHolder {

    public static HttpSessionContext currentSessionContext() {
        return HttpSessionContext.getInstance();
    }

}
