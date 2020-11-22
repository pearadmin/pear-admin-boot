package com.pearadmin.api.common;

import com.pearadmin.common.exception.auth.CaptchaException;
import com.pearadmin.common.tools.servlet.ServletUtil;
import com.pearadmin.common.web.domain.response.Result;
import com.wf.captcha.ArithmeticCaptcha;
import com.wf.captcha.base.Captcha;
import com.wf.captcha.utils.CaptchaUtil;
import com.pearadmin.common.web.base.BaseController;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.Cookie;
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
     * @param request 请求报文
     * @param response 响应报文
     * */
    @RequestMapping("generate")
    public void generate(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Captcha captcha = new ArithmeticCaptcha();
        /**
         * 生成验证码字符串并保存到session中
         */
        String createText = captcha.text();  // 获取运算的结果
        Cookie[] cookies = request.getCookies();
        if (cookies!=null) {
            for (Cookie cookie : cookies) {
                if(cookie.getName().equalsIgnoreCase("JSESSIONID")){
                    request.getSession().setAttribute("CAPTCHA_SESSION_KEY"+":"+cookie.getValue(), createText);
                }
            }
        }
        CaptchaUtil.out(captcha,request,response);
    }

    /**
     * 异步验证
     * @param request 请求报文
     * @param captcha 验证码
     * @return 验证结果
     * */
    @RequestMapping("verify")
    public Result verify(HttpServletRequest request,
                         String captcha){
        if(CaptchaUtil.ver(captcha,request)){
            return success();
        }
        return failure();
    }
}
