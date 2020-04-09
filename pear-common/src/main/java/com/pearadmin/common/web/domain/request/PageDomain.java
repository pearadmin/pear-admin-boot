package com.pearadmin.common.web.domain.request;

import lombok.Data;

/**
 * Describe: 分 页 参 数 封 装
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */
@Data
public class PageDomain {

    /**
     * 当前页
     * */
    private Integer page;

    /**
     * 每页数量
     * */
    private Integer limit;

}
