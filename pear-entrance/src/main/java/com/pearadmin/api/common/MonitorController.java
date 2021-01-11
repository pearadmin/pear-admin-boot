package com.pearadmin.api.common;

import cn.hutool.system.SystemUtil;
import cn.hutool.system.oshi.CpuInfo;
import com.pearadmin.common.web.base.BaseController;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * Describe: 系统环境监控控制器
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */
@RestController
@RequestMapping("system/monitor")
public class MonitorController extends BaseController {

    @GetMapping("main")
    @PreAuthorize("hasPermission('/system/monitor/main','sys:monitor:main')")
    public ModelAndView main(Model model){
        model.addAttribute("jvmInfo", SystemUtil.getJvmInfo());
        model.addAttribute("osInfo",SystemUtil.getOsInfo());
        model.addAttribute("hostInfo",SystemUtil.getHostInfo());
        model.addAttribute("runtimeInfo",SystemUtil.getRuntimeInfo());
        model.addAttribute("userInfo",SystemUtil.getUserInfo());
        return JumpPage("system/monitor/main");
    }

}
