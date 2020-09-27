package com.pearadmin.system.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pearadmin.common.plugin.resource.domain.File;
import com.pearadmin.common.plugin.resource.service.IFileService;
import com.pearadmin.common.web.base.BaseController;
import com.pearadmin.common.web.domain.request.PageDomain;
import com.pearadmin.common.web.domain.response.Result;
import com.pearadmin.common.web.domain.response.ResultTable;
import org.apache.logging.log4j.util.Strings;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import javax.annotation.Resource;

/**
 * Describe: 文 件 控 制 器
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */
@RestController
@RequestMapping("system/file")
public class SysFileController extends BaseController {

    private String MODULE_PATH = "system/file/";

    @Resource
    private IFileService fileService;

    /**
     * Describe: 文件管理页面
     * Param: null
     * Return: ModelAndView
     * */
    @GetMapping("main")
    @PreAuthorize("hasPermission('/system/file/main','sys:file:main')")
    public ModelAndView main(){
        return JumpPage(MODULE_PATH + "main");
    }

    /**
     * Describe: 文件资源数据
     * Param: PageDomain
     * Return: 文件资源列表
     * */
    @GetMapping("data")
    @PreAuthorize("hasPermission('/system/file/data','sys:file:data')")
    public ResultTable data(PageDomain pageDomain){
        PageHelper.startPage(pageDomain.getPage(),pageDomain.getLimit());
        PageInfo<File> pageInfo = new PageInfo<>(fileService.data());
        return pageTable(pageInfo.getList(),pageInfo.getTotal());
    }

    /**
     * Describe: 文件上传视图
     * Param: null
     * Return: 执行结果
     * */
    @GetMapping("add")
    @PreAuthorize("hasPermission('/system/file/add','sys:file:add')")
    public ModelAndView add(){
        return JumpPage(MODULE_PATH + "add");
    }

    /**
     * Describe: 文件上传接口
     * Param: SysUser
     * Return: Result
     * */
    @PostMapping("upload")
    public Result upload(@RequestParam("file") MultipartFile file){
        String result = fileService.upload(file);
        if(Strings.isNotBlank(result)){
            return Result.success(0,"上传成功",result);
        }else{
            return Result.failure("上传失败");
        }
    }

    /**
     * Describe: 文件获取接口
     * Param: id
     * Return: 文件流
     * */
    @GetMapping("download/{id}")
    public void download(@PathVariable("id") String id){
        fileService.download(id);
    }

    /**
     * Describe: 文件删除接口
     * Param: id
     * Return: 文件流
     * */
    @DeleteMapping("remove/{id}")
    @PreAuthorize("hasPermission('/system/file/remove','sys:file:remove')")
    public Result remove(@PathVariable("id") String id){
       boolean result = fileService.remove(id);
       return Result.decide(result,"删除成功","删除失败");
    }

}
