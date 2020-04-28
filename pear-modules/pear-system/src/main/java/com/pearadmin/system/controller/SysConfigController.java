package com.pearadmin.system.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("system/config")
public class SysConfigController {

    private String path = "system/config/";

    @GetMapping("main")
    public ModelAndView main(ModelAndView modelAndView){
        modelAndView.setViewName(path+"main");
        return modelAndView;
    }

    @GetMapping("data")
    public ModelAndView data(){
        return null;
    }
}
