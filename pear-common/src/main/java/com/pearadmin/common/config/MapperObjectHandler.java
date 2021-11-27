package com.pearadmin.common.config;

import com.baomidou.mybatisplus.core.handlers.MetaObjectHandler;
import org.apache.ibatis.reflection.MetaObject;
import org.springframework.context.annotation.Configuration;

import java.time.LocalDateTime;

@Configuration
public class MapperObjectHandler implements MetaObjectHandler {

    @Override
    public void insertFill(MetaObject metaObject) {
        this.setFieldValByName("createBy", "1", metaObject);
        this.setFieldValByName("createTime", LocalDateTime.now(), metaObject);

        this.setFieldValByName("updateBy", "1", metaObject);
        this.setFieldValByName("updateTime", LocalDateTime.now(), metaObject);
    }

    @Override
    public void updateFill(MetaObject metaObject) {
        this.setFieldValByName("updateBy", "1", metaObject);
        this.setFieldValByName("updateTime", LocalDateTime.now(), metaObject);
    }
}