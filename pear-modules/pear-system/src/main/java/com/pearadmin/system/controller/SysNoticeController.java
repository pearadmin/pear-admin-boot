package com.pearadmin.system.controller;

import com.github.pagehelper.PageInfo;
import com.pearadmin.common.tools.security.SecurityUtil;
import com.pearadmin.common.tools.sequence.SequenceUtil;
import com.pearadmin.common.web.base.BaseController;
import com.pearadmin.common.web.domain.request.PageDomain;
import com.pearadmin.common.web.domain.response.Result;
import com.pearadmin.common.web.domain.response.ResultTable;
import com.pearadmin.system.domain.SysNotice;
import com.pearadmin.system.domain.SysUser;
import com.pearadmin.system.param.QueryNoticeParam;
import com.pearadmin.system.service.ISysNoticeService;
import io.swagger.annotations.ApiOperation;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import javax.annotation.Resource;
import java.time.LocalDateTime;

/**
 * Describe: 公 告 控 制 器
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */
@RestController
@RequestMapping("/system/notice")
public class SysNoticeController extends BaseController {

    @Resource
    private ISysNoticeService sysNoticeService;

    @GetMapping("main")
    @PreAuthorize("hasPermission('/system/notice/main','sys:notice:main')")
    public ModelAndView main(){
        return JumpPage("system/notice/main");
    }

    @GetMapping("add")
    @PreAuthorize("hasPermission('/system/notice/add','sys:notice:add')")
    public ModelAndView add(){
        return JumpPage("system/notice/add");
    }

    @GetMapping("data")
    @PreAuthorize("hasPermission('/system/notice/data','sys:notice:data')")
    public ResultTable data(QueryNoticeParam param, PageDomain pageDomain){
        PageInfo<SysNotice> pageInfo = sysNoticeService.page(param,pageDomain);
        return pageTable(pageInfo.getList(),pageInfo.getTotal());
    }

    /**
     * Describe: 保存公告信息
     * Param ModelAndView
     * Return 公告修改视图
     * */
    @PostMapping("save")
    @PreAuthorize("hasPermission('/system/notice/add','sys:notice:add')")
    public Result save(@RequestBody SysNotice sysNotice){
        sysNotice.setCreateTime(LocalDateTime.now());
        sysNotice.setId(SequenceUtil.makeStringId());
        sysNotice.setCreateBy(((SysUser)SecurityUtil.currentUser().getPrincipal()).getUserId());
        boolean result =  sysNoticeService.save(sysNotice);
        return Result.success(result);
    }

    /**
     * Describe: 获取公告修改视图
     * Param ModelAndView
     * Return 公告修改视图
     * */
    @GetMapping("edit")
    @PreAuthorize("hasPermission('/system/notice/edit','sys:notice:edit')")
    public ModelAndView edit(ModelAndView modelAndView,String id){
        modelAndView.addObject("sysNotice",sysNoticeService.getById(id));
        modelAndView.setViewName("system/notice/edit");
        return modelAndView;
    }

    /**
     * Describe: 修改公告信息
     * Param ModelAndView
     * Return 公告修改视图
     * */
    @PutMapping("update")
    @PreAuthorize("hasPermission('/system/notice/edit','sys:notice:edit')")
    public Result update(@RequestBody SysNotice sysNotice){
        Boolean result = sysNoticeService.update(sysNotice);
        return Result.success(result);
    }

    /**
     * Describe: 公告删除接口
     * Param: id
     * Return: Result
     * */
    @DeleteMapping("remove/{id}")
    @ApiOperation(value="删除公告数据")
    @PreAuthorize("hasPermission('/system/notice/remove','sys:notice:remove')")
    public Result remove(@PathVariable String id){
        boolean result  = sysNoticeService.remove(id);
        return decide(result);
    }

    /**
     * Describe: 用户批量删除接口
     * Param: ids
     * Return: ResuBean
     * */
    @DeleteMapping("batchRemove/{ids}")
    @ApiOperation(value="批量删除公告数据")
    @PreAuthorize("hasPermission('/system/notice/remove','sys:notice:remove')")
    public Result batchRemove(@PathVariable String ids){
        boolean result = sysNoticeService.batchRemove(ids.split(","));
        return decide(result);
    }

}
