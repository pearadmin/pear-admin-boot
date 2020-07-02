package com.pearadmin.resource.logging.utils;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.context.request.ServletWebRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;

/**
 * Servlet 工具类 , 用于获取相关信息
 * */
public class ServletContext {

    /**
     * 获取 Request 对象
     * */
    private static HttpServletRequest getRequest(){
        HttpServletRequest req = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        return req;
    }

    /**
     * 获取 Response 对象
     * */
    private static HttpServletResponse getResponse(){
        HttpServletResponse resp = ((ServletWebRequest)RequestContextHolder.getRequestAttributes()).getResponse();
        return resp;
    }

    /**
     * 获取查询参数
     * */
    public static String getQueryParam(){
        return getRequest().getQueryString();
    }

    /**
     * 获取请求地址
     * */
    public static String getRequestURI() {
        return getRequest().getRequestURI();
    }

    /**
     * 获取客户端地址
     * */
    public static String getRemoteHost(){
        return getRequest().getRemoteHost();
    }

    /**
     * 获取当前请求方法
     * */
    public static String getMethod(){
        return getRequest().getMethod();
    }

    /**
     * 获取请求头
     * */
    public static String getHeader(String name){
        return getRequest().getHeader(name);
    }

    /**
     * 获取 UserAgent
     * */
    public static String getAgent(){
        return getHeader("User-Agent");
    }

    /**
     * 获取浏览器类型
     * */
    public static String getBrowser(){
        String userAgent = getAgent();
        if (userAgent.contains("Firefox")){
            return "火狐浏览器";
        }else if (userAgent.contains("Chrome")){
            return "谷歌浏览器";
        }else if (userAgent.contains("Trident")){
            return "IE 浏览器";
        }else{
            return "你用啥浏览器";
        }
    }

    /**
     * 获取浏览器类型
     * */
    public static String getSystem(){
        String userAgent = getAgent();
        if (userAgent.toLowerCase().contains("windows" )) {
            return "Windows";
        } else if (userAgent.toLowerCase().contains("mac" )) {
            return "Mac";
        } else if (userAgent.toLowerCase().contains("x11" )) {
            return "Unix";
        } else if (userAgent.toLowerCase().contains("android" )) {
            return "Android";
        } else if (userAgent.toLowerCase().contains("iphone" )) {
            return "IPhone";
        } else {
            return "UnKnown, More-Info: " + userAgent;
        }
    }



    public static String getBody(){

        BufferedReader br = null;
        StringBuilder sb = new StringBuilder("");
        try
        {
            br = getRequest().getReader();
            String str;
            while ((str = br.readLine()) != null)
            {
                sb.append(str);
            }
            br.close();
        }
        catch (IOException e)
        {
            e.printStackTrace();
        }
        finally
        {
            if (null != br)
            {
                try
                {
                    br.close();
                }
                catch (IOException e)
                {
                    e.printStackTrace();
                }
            }
        }
        return sb.toString();
    }

}
