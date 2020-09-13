package com.pearadmin.common.file.service.impl;

import com.pearadmin.common.file.domain.File;
import com.pearadmin.common.file.mapper.FileMapper;
import com.pearadmin.common.file.service.IFileService;
import com.pearadmin.common.tools.sequence.SequenceUtil;
import com.pearadmin.common.tools.servlet.ServletUtil;
import org.springframework.stereotype.Service;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;
import javax.annotation.Resource;
import java.io.FileInputStream;
import java.util.Date;
import java.util.List;

/**
 * 文件服务接口实现
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
            java.io.File filepath = new java.io.File("D://file", fileName);
            if (!filepath.getParentFile().exists()) {
                filepath.getParentFile().mkdirs();
            }
            File fileDomain = new File();
            fileDomain.setId(fileId);
            fileDomain.setFileDesc(name);
            fileDomain.setFileName(fileName);
            fileDomain.setFilePath(filepath.getPath());
            fileDomain.setFileType(suffixName);
            fileDomain.setCreateTime(new Date());
            file.transferTo(filepath);
            int result = fileMapper.insert(fileDomain);
            if (result > 0) {
                return fileId;
            } else {
                return "";
            }
        }catch (Exception e){
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

}
