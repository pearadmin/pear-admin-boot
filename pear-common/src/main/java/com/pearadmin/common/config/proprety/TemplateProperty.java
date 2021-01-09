package com.pearadmin.common.config.proprety;

import com.pearadmin.common.constant.SystemConstant;
import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

/**
 * Describe: 接 口 文 档 配 置 类
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */
@Data
@Component
@ConfigurationProperties("pear.upload")
public class TemplateProperty {

    /**
     * 当前系统环境
     * */
    private String os;

    /**
     *  windows 系统文件上传路径
     * */
    private String windowsPath;

    /**
     * linux 系统文件上传路径
     * */
    private String linuxPath;

    /**
     * upload path 根据系统环境获取上传路径
     * */
    public String getUploadPath(){
        return this.os.equals(SystemConstant.WINDOWS)?this.windowsPath:this.linuxPath;
    }

}
