package com.pearadmin.common.plugin.file.service;

import com.pearadmin.common.plugin.file.domain.File;
import org.springframework.web.multipart.MultipartFile;
import java.util.List;

/**
 * 文件服务接口
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

}
