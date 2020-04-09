package com.pearadmin.system.domain;


import com.pearadmin.common.web.base.BaseDomain;
import lombok.Data;
import org.apache.ibatis.type.Alias;

/**
 * Describe: 字典值领域模型
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */
@Data
@Alias("SysDictData")
public class SysDictData extends BaseDomain {

    /**
     *  id 编号
     * */
    private String id;

    /**
     *  字典显示
     * */
    private String label;

    /**
     * 字典值
     * */
    private String value;

    /**
     * 字典类型
     * */
    private String type;

    /**
     * 是否为默认
     * */
    private String isDefault;

}
