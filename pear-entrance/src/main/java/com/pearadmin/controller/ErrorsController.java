package com.pearadmin.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * Describe: 错误页面控制器
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */
@RequestMapping("error")
@RestController
public class ErrorsController {


    /**
     * Describe:无权限页面
     * Return:返回403页面
     * */
    @GetMapping("403")
    public ModelAndView noPermission(ModelAndView modelAndView){
        modelAndView.setViewName("error/403");
        return modelAndView;
    }
    /**
     * Describe:找不带页面
     * Return:返回404页面
     * */
    @GetMapping("404")
    public ModelAndView notFound(ModelAndView modelAndView){
        modelAndView.setViewName("error/404");
        return modelAndView;
    }

    /**
     * Describe:异常处理页
     * Return:返回500界面
     * */
    @GetMapping("500")
    public ModelAndView onException(ModelAndView modelAndView){
        modelAndView.setViewName("error/500");
        return modelAndView;
    }

}
