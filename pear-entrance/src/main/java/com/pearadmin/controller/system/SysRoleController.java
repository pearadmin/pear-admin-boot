package com.pearadmin.controller.system;

import com.github.pagehelper.PageInfo;
import com.pearadmin.common.tools.serial.SnowFlake;
import com.pearadmin.common.web.base.BaseController;
import com.pearadmin.common.web.domain.request.PageDomain;
import com.pearadmin.common.web.domain.response.Result;
import com.pearadmin.common.web.domain.response.ResuTable;
import com.pearadmin.common.web.domain.response.ResuTree;
import com.pearadmin.system.domain.SysRole;
import com.pearadmin.system.service.ISysRoleService;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.Arrays;

@RestController
@RequestMapping("system/role")
public class SysRoleController extends BaseController {

    /**
     * Describe: 基础路径
     * */
    private static String MODULE_PATH = "system/role/";

    /**
     * Describe: 角色模块服务
     * */
    @Resource
    private ISysRoleService sysRoleService;

    /**
     * Describe: 获取角色列表视图
     * Param ModelAndView
     * Return 用户列表视图
     * */
    @GetMapping("main")
    public ModelAndView main(){
        return JumpPage(MODULE_PATH + "main");
    }

    /**
     * Describe: 获取角色列表数据
     * Param SysRole PageDomain
     * Return 角色列表数据
     * */
    @GetMapping("data")
    @PreAuthorize("hasPermission('/system/role/data','sys:role:data')")
    public ResuTable data(PageDomain pageDomain){
       PageInfo<SysRole> pageInfo = sysRoleService.page(null,pageDomain);
       return pageTable(pageInfo.getList(),pageInfo.getTotal());
    }

    /**
     * Describe: 获取角色新增视图
     * Param ModelAndView
     * Return 角色新增视图
     * */
    @GetMapping("add")
    public ModelAndView add(ModelAndView modelAndView){
        return JumpPage(MODULE_PATH + "add");
    }

    /**
     * Describe: 保存角色信息
     * Param SysRole
     * Return 执行结果
     * */
    @PostMapping("save")
    public Result save(@RequestBody SysRole sysRole){
        sysRole.setRoleId("" + new SnowFlake().nextId());
        boolean result = sysRoleService.save(sysRole);
        return decide(result);
    }

    /**
     * Describe: 获取角色修改视图
     * Param ModelAndView
     * Return 角色修改视图
     * */
    @GetMapping("edit")
    public ModelAndView edit(ModelAndView modelAndView,String roleId){
        modelAndView.addObject("sysRole",sysRoleService.getById(roleId));
        modelAndView.setViewName(MODULE_PATH + "edit");
        return modelAndView;
    }

    /**
     * Describe: 修改角色信息
     * Param SysRole
     * Return 执行结果
     * */
    @PutMapping("update")
    public Result update(@RequestBody  SysRole sysRole){
        boolean result = sysRoleService.update(sysRole);
        return decide(result);
    }

    /**
     * Describe: 获取角色授权视图
     * Param ModelAndView
     * Return ModelAndView
     * */
    @GetMapping("power")
    public ModelAndView power(Model model, String roleId){
        model.addAttribute("roleId",roleId);
        return JumpPage(MODULE_PATH + "power");
    }

    /**
     * Describe: 保存角色权限
     * Param RoleId PowerIds
     * Return ResuBean
     * */
    @PutMapping("saveRolePower")
    public Result saveRolePower(String roleId, String powerIds){
        boolean result = sysRoleService.saveRolePower(roleId, Arrays.asList(powerIds.split(",")));
        return decide(result);
    }

    /**
     * Describe: 获取角色权限
     * Param RoleId
     * Return ResuTree
     * */
    @GetMapping("getRolePower")
    public ResuTree getRolePower(String roleId){
        return dataTree(sysRoleService.getRolePower(roleId));
    }

    /**
     * Describe: 用户删除接口
     * Param: id
     * Return: ResuBean
     * */
    @DeleteMapping("remove/{id}")
    public Result remove(@PathVariable String id){
        boolean result  = sysRoleService.remove(id);
        return decide(result);
    }

    /**
     * Describe: 根据 Id 启用角色
     * Param: roleId
     * Return: ResuBean
     * */
    @PutMapping("enable")
    public Result enable(@RequestBody SysRole sysRole){
        sysRole.setEnable("0");
        boolean result =  sysRoleService.update(sysRole);
        return decide(result);
    }

    /**
     * Describe: 根据 Id 禁用角色
     * Param: roleId
     * Return: ResuBean
     * */
    @PutMapping("disable")
    public Result disable(@RequestBody SysRole sysRole){
        sysRole.setEnable("1");
        boolean result =  sysRoleService.update(sysRole);
        return decide(result);
    }
}
