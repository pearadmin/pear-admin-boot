package com.pearadmin.common.web.base;

import com.alibaba.fastjson.annotation.JSONField;
import com.fasterxml.jackson.annotation.JsonFilter;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;
import java.util.Map;

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
