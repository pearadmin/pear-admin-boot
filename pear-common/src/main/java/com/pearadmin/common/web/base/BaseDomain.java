package com.pearadmin.common.web.base;

import lombok.Data;
import java.io.Serializable;
import java.util.Date;

/**
 * Describe: 基 础 实 体 类
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */
@Data
public class BaseDomain implements Serializable {

    /**
     * 创建时间
     * */
    private Date createTime;

    /**
     * 创建人
     * */
    private String createBy;

    /**
     * 修改时间
     * */
    private Date updateTime;

    /**
     * 修改时间
     * */
    private String updateBy;

    /**
     * 备注
     * */
    private String remark;

}
