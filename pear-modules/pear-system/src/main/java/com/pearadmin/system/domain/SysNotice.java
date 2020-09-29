package com.pearadmin.system.domain;

import com.pearadmin.common.web.base.BaseDomain;
import lombok.Data;
import org.apache.ibatis.type.Alias;

/**
 * Describe: 系 统 公 告
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */
@Data
@Alias("SysNotice")
public class SysNotice extends BaseDomain {

    /**
     * 公告标识
     * */
    private String id;

    /**
     * 公告标题
     * */
    private String title;

    /**
     * 公告内容
     * */
    private String context;

}
