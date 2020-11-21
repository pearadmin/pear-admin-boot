package com.pearadmin.system.controller;

import com.pearadmin.common.web.base.BaseController;
import com.pearadmin.common.web.domain.response.Result;
import com.pearadmin.system.domain.SysOnlineUser;
import com.pearadmin.system.domain.SysUser;
import io.swagger.annotations.ApiOperation;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.session.SessionRegistry;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("system/online")
public class SysOnlineUserController extends BaseController {


    @Resource
    private SessionRegistry sessionRegistry;

    @GetMapping("getOnlineUser")
    @ApiOperation(value="获取在线用户")
    @PreAuthorize("hasPermission('/system/online/user','sys:onlineUser:main')")
    public Result getOnlineUser(){
        List<Object> allPrincipalsUser = sessionRegistry.getAllPrincipals();
        List<SysOnlineUser>  onlineUser= new ArrayList<>();
        for (Object obj : allPrincipalsUser ){
            //暂时这样处理，主要是无法将SysUser强制转化为 sysOnline，不能直接返回sysUser 因为包含password 不安全
            SysOnlineUser sysOnlineUser = new SysOnlineUser();
            SysUser objs = (SysUser) obj;
            sysOnlineUser.setUserId(objs.getUserId());
            sysOnlineUser.setUsername(objs.getUsername());
            sysOnlineUser.setRealName(objs.getRealName());
            onlineUser.add(sysOnlineUser);
        }
        return Result.success(onlineUser);
    }



}
