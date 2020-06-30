package com.pearadmin.common.web.domain.response;

import com.pearadmin.common.web.base.BaseDomain;
import lombok.Data;

/**
 * Describe: 前端表格数据封装
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */

@Data
public class ResuTable extends BaseDomain {

    /**
     * 状态码
     * */
    private Integer code;

    /**
     * 提示消息
     * */
    private String msg;

    /**
     * 消息总量
     * */
    private Long count;

    /**
     * 数据对象
     * */
    private Object data;

}
