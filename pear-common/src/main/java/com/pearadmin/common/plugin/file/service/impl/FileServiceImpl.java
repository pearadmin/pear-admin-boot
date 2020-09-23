package com.pearadmin.common.plugin.file.service.impl;

import com.pearadmin.common.constant.FileConstant;
import com.pearadmin.common.plugin.file.domain.File;
import com.pearadmin.common.plugin.file.mapper.FileMapper;
import com.pearadmin.common.plugin.file.service.IFileService;
import com.pearadmin.common.tools.sequence.SequenceUtil;
import com.pearadmin.common.tools.servlet.ServletUtil;
import org.springframework.stereotype.Service;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;
import javax.annotation.Resource;
import java.io.FileInputStream;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;

/**
 * Describe: 文件服务接口实现
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */
@Service
public class FileServiceImpl implements IFileService {

    @Resource
    private FileMapper fileMapper;

    @Override
    public String upload(MultipartFile file) {
        try {
            String fileId = SequenceUtil.makeStringId();
            String name = file.getOriginalFilename();
            String suffixName = name.substring(name.lastIndexOf("."));
            String hash = fileId;
            String fileName = hash + suffixName;
            java.io.File filepath = new java.io.File(FileConstant.FILE_PATH, fileName);
            if (!filepath.getParentFile().exists()) {
                filepath.getParentFile().mkdirs();
            }
            File fileDomain = new File();
            fileDomain.setId(fileId);
            fileDomain.setFileDesc(name);
            fileDomain.setFileName(fileName);
            fileDomain.setFilePath(filepath.getPath());
            fileDomain.setFileType(suffixName);
            fileDomain.setCreateTime(LocalDateTime.now());
            file.transferTo(filepath);
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

    @Override
    public List<File> data() {
        return fileMapper.selectList();
    }


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
