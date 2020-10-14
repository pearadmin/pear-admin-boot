package com.pearadmin.common.plugins.resource.service.impl;

import com.pearadmin.common.plugins.resource.domain.File;
import com.pearadmin.common.plugins.resource.mapper.FileMapper;
import com.pearadmin.common.plugins.resource.service.IFileService;
import com.pearadmin.common.tools.file.FileUtil;
import com.pearadmin.common.tools.sequence.SequenceUtil;
import com.pearadmin.common.tools.servlet.ServletUtil;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;
import javax.annotation.Resource;
import java.io.FileInputStream;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

/**
 * Describe: 文件服务接口实现
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */
@Service
public class FileServiceImpl implements IFileService {

    /**
     * 引 入 服 务
     * */
    @Resource
    private FileMapper fileMapper;

    /**
     * Describe: 文 件 夹 列 表
     * Param: File
     * Return: id
     * */
    @Override
    public List<String> fileDirs(){
        List<String> fileDirs = new ArrayList<>();
        java.io.File file = new java.io.File("/home/upload");
        if(file.isDirectory()){
          java.io.File[] files = file.listFiles();
            for (int i = 0; i < files.length; i++) {
                if (files[i].isDirectory()) {
                   String dirName = files[i].getName();
                   fileDirs.add(dirName);
                }
            }
        }
        return fileDirs;
    }

    /**
     * Describe: 文件上传
     * Param: File
     * Return: id
     * */
    @Override
    @Transactional
    public String upload(MultipartFile file) {
        try {
            String fileId = SequenceUtil.makeStringId();
            String name = file.getOriginalFilename();
            String suffixName = name.substring(name.lastIndexOf("."));
            String hash = fileId;
            String fileName = hash + suffixName;
            String fileDir = LocalDate.now().toString();
            String parentPath = "D:/home/upload/"+fileDir;
            java.io.File filepath = new java.io.File(parentPath, fileName);
            if (!filepath.getParentFile().exists()) {
                filepath.getParentFile().mkdirs();
            }
            File fileDomain = new File();
            file.transferTo(filepath);
            fileDomain.setId(fileId);
            fileDomain.setFileDesc(name);
            fileDomain.setFileName(fileName);
            fileDomain.setTargetDate(LocalDate.now());
            fileDomain.setFilePath(filepath.getPath());
            fileDomain.setCreateTime(LocalDateTime.now());
            fileDomain.setFileSize(FileUtil.getPrintSize(filepath.length()));
            fileDomain.setFileType(suffixName.replace(".",""));
            int result = fileMapper.insert(fileDomain);
            if (result > 0) {
                return fileId;
            } else {
                return "";
            }
        }catch (Exception e){
            e.printStackTrace();
            return "";
        }
    }

    /**
     * Describe: 根据 Id 下载文件
     * Param: id
     * Return: IO
     * */
    @Override
    public void download(String id) {
        try {
            File file = fileMapper.selectById(id);
            java.io.File files = new java.io.File(file.getFilePath());
            if (files.exists()) {
                FileCopyUtils.copy(new FileInputStream(file.getFilePath()), ServletUtil.getResponse().getOutputStream());
            }
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    /**
     * Describe: 查 询 文 件 列 表
     * Param: id
     * Return: File
     * */
    @Override
    public List<File> data() {
        return fileMapper.selectList();
    }


    /**
     * Describe: 根据 Id 删除文件信息
     * Param: id
     * Return: int
     * */
    @Override
    public boolean remove(String id) {
        File file = fileMapper.selectById(id);
        new java.io.File(file.getFilePath()).delete();
        int removeInfo = fileMapper.deleteById(id);
        if(removeInfo>0){
            return true;
        }
        return false;
    }
}
