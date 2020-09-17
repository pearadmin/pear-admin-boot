package com.pearadmin.system.controller;

import com.pearadmin.common.web.base.BaseController;
import com.pearadmin.common.web.domain.response.Result;
import com.wf.captcha.utils.CaptchaUtil;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Describe: 验证码控制器
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */
@RestController
@RequestMapping("system/captcha")
public class SysCaptchaController extends BaseController {

    /**
     * 验证码生成
     * @param request
     * @return captcha
     * */
    @RequestMapping("generate")
    public void generate(HttpServletRequest request, HttpServletResponse response) throws Exception {
        CaptchaUtil.out(request, response);
    }

    /**
     * 验证码验证
     * @param code
     * @return verify
     * */
    @RequestMapping("verify")
    public Result verify(String code, HttpServletRequest request){
        if(!CaptchaUtil.ver(code,request)){
            return failure("验证码有误");
        }
        return success();
    }
}
