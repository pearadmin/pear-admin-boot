package com.pearadmin.system.controller;

import com.pearadmin.common.constant.ControllerConstant;
import com.pearadmin.common.web.base.BaseController;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * Describe: 接 口 文 档 控 制 器
 * Author: 就 眠 仪 式
 * CreateTime: 2021/04/21
 * */
@RestController
@RequestMapping(ControllerConstant.API_SYSTEM_PREFIX + "doc")
public class SysDocController extends BaseController {

    private String MODULE_PATH = "system/doc/";

    @GetMapping("main")
    @PreAuthorize("hasPermission('/system/doc/main','sys:doc:main')")
    public ModelAndView main(){
        return jumpPage(MODULE_PATH + "main");
    }
}
