package com.pearadmin.system.controller;

import com.pearadmin.common.web.base.BaseController;
import com.pearadmin.common.web.domain.response.Result;
import com.pearadmin.common.web.domain.response.ResultTable;
import com.pearadmin.system.domain.SysOnlineUser;
import com.pearadmin.system.domain.SysUser;
import io.swagger.annotations.ApiOperation;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.session.SessionRegistry;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * Describe: 在线用户控制器
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */

@RestController
@RequestMapping("system/online")
public class SysOnlineUserController extends BaseController {

    @Resource
    private SessionRegistry sessionRegistry;

    /**
     * Describe: 在线用户列表
     * Param: username
     * Return: ModelAndView
     * */
    @GetMapping("data")
    @PreAuthorize("hasPermission('/system/online/data','sys:online:data')")
    public ResultTable data(String username){
        List<Object> allPrincipalsUser = sessionRegistry.getAllPrincipals();
        List<SysOnlineUser>  onlineUser= new ArrayList<>();
        for (Object obj : allPrincipalsUser ){
            SysOnlineUser sysOnlineUser = new SysOnlineUser();
            SysUser objs = (SysUser) obj;
            sysOnlineUser.setUserId(objs.getUserId());
            sysOnlineUser.setUsername(objs.getUsername());
            sysOnlineUser.setRealName(objs.getRealName());
            onlineUser.add(sysOnlineUser);
        }
        // TODO 使用 Stream 进行内存数据过滤
        return dataTable(onlineUser);
    }

    @GetMapping("main")
    @PreAuthorize("hasPermission('/system/online/main','sys:online:main')")
    public ModelAndView main(){
        return JumpPage("system/user/online");
    }
}
