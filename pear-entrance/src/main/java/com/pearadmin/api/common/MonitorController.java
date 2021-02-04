package com.pearadmin.api.common;

import com.pearadmin.common.tools.system.SystemUtil;
import com.pearadmin.common.tools.system.CpuInfo;
import com.pearadmin.common.constant.ControllerConstant;
import com.pearadmin.common.web.base.BaseController;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping(ControllerConstant.API_SYSTEM_PREFIX + "monitor")
public class MonitorController extends BaseController {

    @GetMapping("main")
    @PreAuthorize("hasPermission('/system/user/main','sys:user:main')")
    public ModelAndView main(Model model){
        CpuInfo cpu = SystemUtil.getCpu();
        model.addAttribute("cpu", cpu);
        return jumpPage("system/monitor/main");
    }
}
