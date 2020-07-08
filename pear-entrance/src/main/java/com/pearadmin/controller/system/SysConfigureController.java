package com.pearadmin.controller.system;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pearadmin.common.constant.MessageConstants;
import com.pearadmin.common.web.base.BaseController;
import com.pearadmin.common.web.domain.request.PageDomain;
import com.pearadmin.common.web.domain.response.ResuBean;
import com.pearadmin.common.web.domain.response.ResuTable;
import com.pearadmin.resource.configure.domain.Configure;
import com.pearadmin.resource.configure.service.IConfigureService;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

/**
 * Describe: 系统配置控制器
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */
@RestController
@RequestMapping("system/config")
public class SysConfigureController extends BaseController {

    private String path = "system/config/";

    @Resource
    private IConfigureService configureService;

    /**
     * Describe：系统配置视图
     * Param: PageDomain
     * Return: ResuBean
     * */
    @GetMapping("main")
    public ModelAndView main(ModelAndView modelAndView){
        modelAndView.setViewName(path+"main");
        return modelAndView;
    }

    /**
     * Describe：系统配置列表
     * Param: PageDomain
     * Return: ResuBean
     * */
    @GetMapping("data")
    public ResuTable data(Configure configure, PageDomain pageDomain){
        PageHelper.startPage(pageDomain.getPage(),pageDomain.getLimit());
        List<Configure> list = configureService.list(configure);
        PageInfo pageInfo = new PageInfo<>(list);
        return pageTable(pageInfo.getList(),pageInfo.getTotal());
    }

    /**
     * Describe：新增配置数据
     * Param: ModelAndView
     * Return: ModelAndView
     * */
    @GetMapping("add")
    public ModelAndView add(ModelAndView modelAndView){
        modelAndView.setViewName(path + "add");
        return modelAndView;
    }

    /**
     * Describe：修改配置数据
     * Param: configId
     * Return: ResuBean
     * */
    @GetMapping("edit")
    public ModelAndView edit(ModelAndView modelAndView,String configId){
        modelAndView.addObject("sysConfig",configureService.getById(configId));
        modelAndView.setViewName(path + "edit");
        return modelAndView;
    }

    /**
     * Describe：保存配置数据
     * Param: SysConfig
     * Return: ResuBean
     * */
    @PostMapping("save")
    public ResuBean save(@RequestBody Configure sysConfig){
        Boolean result = configureService.save(sysConfig);
        return decide(result,
                MessageConstants.SAVE_SUCCESS,
                MessageConstants.SAVE_FAILURE);
    }

    /**
     * Describe：修改配置数据
     * Param: SysConfig
     * Return: ResuBean
     * */
    @PostMapping("update")
    public ResuBean update(@RequestBody Configure  sysConfig){
        Boolean result = configureService.update(sysConfig);
        return decide(result,
                MessageConstants.UPDATE_SUCCESS,
                MessageConstants.UPDATE_FAILURE);
    }

    /**
     * Describe: 根据 id 进行删除
     * Param id
     * Return ResuBean
     * */
    @DeleteMapping("remove/{id}")
    public ResuBean remove(@PathVariable String id){
        boolean result = configureService.remove(id);
        return decide(
                result,                            // 响应结果
                MessageConstants.REMOVE_SUCCESS,   // 成功消息
                MessageConstants.REMOVE_FAILURE    // 失败消息
        );
    }
}
