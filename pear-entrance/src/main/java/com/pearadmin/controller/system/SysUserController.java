package com.pearadmin.controller.system;

import com.github.pagehelper.PageInfo;
import com.pearadmin.common.constant.MessageConstants;
import com.pearadmin.common.tools.serial.SnowFlake;
import com.pearadmin.common.web.base.BaseController;
import com.pearadmin.common.web.domain.ResuBean;
import com.pearadmin.common.web.domain.ResuMenu;
import com.pearadmin.common.web.domain.ResuTable;
import com.pearadmin.common.web.domain.request.PageDomain;
import com.pearadmin.common.web.domain.request.ParamMap;
import com.pearadmin.system.domain.SysUser;
import com.pearadmin.system.service.ISysRoleService;
import com.pearadmin.system.service.ISysUserService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import javax.annotation.Resource;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Arrays;
import java.util.Date;
import java.util.Set;

/**
 * Describe: 用户控制器
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */

@RestController
@RequestMapping("system/user")
@Api(value="用户controller",tags={"用户操作接口"})
public class SysUserController extends BaseController {

    /**
     * Describe: 基础路径
     * */
    private static String MODULE_PATH = "system/user/";

    /**
     * Describe: 用户模块服务
     * */
    @Resource
    private ISysUserService sysUserService;

    @Resource
    private ISysRoleService sysRoleService;

    /**
     * Describe: 获取用户列表视图
     * Param ModelAndView
     * Return 用户列表视图
     * */
    @GetMapping("main")
    @ApiOperation(value="获取用户列表视图")
    @PreAuthorize("hasPermission('/system/user/main','sys:user:main')")
    public ModelAndView main(ModelAndView modelAndView){
        modelAndView.setViewName(MODULE_PATH + "main");
        return modelAndView;
    }

    /**
     * Describe: 获取用户列表数据
     * Param ModelAndView
     * Return 用户列表数据
     * */
    @GetMapping("data")
    @ApiOperation(value="获取用户列表数据")
    public ResuTable data(PageDomain pageDomain,SysUser sysUser){

        PageInfo<SysUser> pageInfo = sysUserService.page(sysUser,pageDomain);

        return pageTable(pageInfo.getList(),pageInfo.getTotal());
    }

    /**
     * Describe: 用户新增视图
     * Param ModelAndView
     * Return 返回用户新增视图
     * */
    @GetMapping("add")
    @ApiOperation(value="获取用户新增视图")
    public ModelAndView add(ModelAndView modelAndView){
        modelAndView.addObject("sysRoles",sysRoleService.list(null));
        modelAndView.setViewName(MODULE_PATH+"add");
        return modelAndView;
    }

    /**
     * Describe: 用户新增接口
     * Param ModelAndView
     * Return 操作结果
     * */
    @PostMapping("save")
    @ApiOperation(value="保存用户数据")
    public ResuBean save(@RequestBody SysUser sysUser){
        sysUser.setLogin("0");
        sysUser.setUserId("" + new SnowFlake().nextId());
        sysUser.setPassword(new BCryptPasswordEncoder().encode(sysUser.getPassword()));
        sysUserService.saveUserRole(sysUser.getUserId(), Arrays.asList(sysUser.getRoleIds().split(",")));
        Boolean result = sysUserService.save(sysUser);
        return decide(
                result,                            // 响应结果
                MessageConstants.SAVE_SUCCESS,     // 成功消息
                MessageConstants.SAVE_FAILURE      // 失败消息
        );
    }

    /**
     * Describe: 用户修改视图
     * Param ModelAndView
     * Return 返回用户修改视图
     * */
    @GetMapping("edit")
    @ApiOperation(value="获取用户修改视图")
    public  ModelAndView edit(ModelAndView modelAndView,String userId){
        modelAndView.addObject("sysRoles",sysUserService.getUserRole(userId));
        modelAndView.addObject("sysUser",sysUserService.getById(userId));
        modelAndView.setViewName(MODULE_PATH + "edit");
        return modelAndView;
    }

    /**
     * Describe: 用户修改接口
     * Param ModelAndView
     * Return 返回用户修改接口
     * */
    @PutMapping("update")
    @ApiOperation(value="修改用户数据")
    public ResuBean update(@RequestBody SysUser sysUser){
        sysUserService.saveUserRole(sysUser.getUserId(), Arrays.asList(sysUser.getRoleIds().split(",")));
        boolean result = sysUserService.update(sysUser);
        return decide(
                result,                            // 响应结果
                MessageConstants.UPDATE_SUCCESS,    // 成功消息
                MessageConstants.UPDATE_FAILURE     // 失败消息
        );
    }

    /**
     * Describe: 用户批量删除接口
     * Param: ids
     * Return: ResuBean
     * */
    @DeleteMapping("batchRemove/{ids}")
    @ApiOperation(value="批量删除用户")
    public ResuBean batchRemove(@PathVariable String ids){
        boolean result = sysUserService.batchRemove(ids.split(","));
        return decide(
                result,                            // 响应结果
                MessageConstants.REMOVE_SUCCESS,    // 成功消息
                MessageConstants.REMOVE_FAILURE     // 失败消息
        );
    }

    /**
     * Describe: 用户删除接口
     * Param: id
     * Return: ResuBean
     * */
    @DeleteMapping("remove/{id}")
    @ApiOperation(value="删除用户数据")
    @PreAuthorize("hasPermission('/system/user/remove','sys:user:remove')")
    public ResuBean remove(@PathVariable String id){
        boolean result  = sysUserService.remove(id);
        // 根据 userId 删除 映射关系
        return decide(
                result,                            // 响应结果
                MessageConstants.REMOVE_SUCCESS,    // 成功消息
                MessageConstants.REMOVE_FAILURE     // 失败消息
        );
    }

    /**
     * Describe: 根据 username 获取菜单数据
     * Param SysRole
     * Return 执行结果
     * */
    @GetMapping("getUserMenu")
    @ApiOperation(value = "获取用户菜单数据")
    public Set<ResuMenu> getUserMenu(String username){
        return sysUserService.getUserMenu(username);
    }


    @PutMapping("enable")
    @ApiOperation(value = "开启用户登录")
    public ResuBean enable(@RequestBody SysUser sysUser){
        sysUser.setEnable("0");
        boolean result = sysUserService.update(sysUser);
        return decide(
                result,                            // 响应结果
                MessageConstants.UPDATE_SUCCESS,    // 成功消息
                MessageConstants.UPDATE_FAILURE     // 失败消息
        );
    }

    @PutMapping("disable")
    @ApiOperation(value = "禁用用户登录")
    public ResuBean disable(@RequestBody SysUser sysUser){
        sysUser.setEnable("1");
        boolean result = sysUserService.update(sysUser);
        return decide(
                result,                            // 响应结果
                MessageConstants.UPDATE_SUCCESS,    // 成功消息
                MessageConstants.UPDATE_FAILURE     // 失败消息
        );
    }
}
