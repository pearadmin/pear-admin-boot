package com.pearadmin.api.common;

import com.wf.captcha.utils.CaptchaUtil;
import com.pearadmin.common.web.base.BaseController;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;

/**
 * Describe: 验证码控制器
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */
@RestController
@RequestMapping("system/captcha")
public class CaptchaController extends BaseController {

    /**
     * 验证码生成
     * @param request
     * @return captcha
     * */
    @RequestMapping("generate")
    public void generate(HttpServletRequest request, HttpServletResponse response) throws Exception {
        CaptchaUtil.out(request, response);
    }
}
