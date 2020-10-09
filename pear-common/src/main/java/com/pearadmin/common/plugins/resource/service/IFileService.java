package com.pearadmin.common.plugins.resource.service;

import com.pearadmin.common.plugins.resource.domain.File;
import org.springframework.web.multipart.MultipartFile;
import java.util.List;

/**
 * Describe: 文件服务接口
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */
public interface IFileService {

    /**
     * 文 件 上 传 服 务
     * */
    String upload(MultipartFile file);

    /**
     * 文 件 下 载 服 务
     * */
    void download(String id);

    /**
     * 文 件 列 表
     * */
    List<File> data();

    /**
     * 删 除 文 件
     * */
    boolean remove(String id);

    /**
     * 文 件 夹 列 表
     * */
    List<String> fileDirs();

}
