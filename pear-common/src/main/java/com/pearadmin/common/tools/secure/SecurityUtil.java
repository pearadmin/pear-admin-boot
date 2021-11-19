package com.pearadmin.common.tools.secure;


import com.pearadmin.common.plugin.system.domain.SysBaseUser;
import org.springframework.beans.BeanUtils;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

/**
 * Describe: Security 工 具 类
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 */
public class SecurityUtil {

    /**
     * 获取当前登录用户的信息
     *
     * @return Authentication 权鉴对象
     */
    public static Authentication currentUser() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (!(authentication instanceof AnonymousAuthenticationToken)) return authentication;
        return null;
    }

    /**
     * 验证当前用户是否登录
     *
     * @return boolean 是否登录
     */
    public static boolean isAuthentication() {
        // if security session eq s-id is not null to index
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        return !(auth instanceof AnonymousAuthenticationToken);
    }

    /**
     * 获取当前登录用户对象
     *
     * @return SysUser
     */
    public static Object currentUserObj() {
        Authentication authentication = currentUser();
        if (null != authentication) return authentication.getPrincipal();
        return null;
    }

    /**
     * 获取当前用户
     *
     * @return SysBaseUser
     */
    public static SysBaseUser getPrincipal() {
        Object user = currentUserObj();
        if(null==user) return null;
        SysBaseUser sysBaseUser = new SysBaseUser();
        BeanUtils.copyProperties(user,sysBaseUser);
        return sysBaseUser;
        //return JSONObject.toJavaObject((JSON)JSONObject.toJSON(currentUserObj()),SysBaseUser.class);
    }

    /**
     * 获取用户编号
     *
     * @return {@link String}
     */
    public static String getUserId() {
        SysBaseUser sysBaseUser = getPrincipal();
        return sysBaseUser==null?null:sysBaseUser.getUserId();
    }

}
