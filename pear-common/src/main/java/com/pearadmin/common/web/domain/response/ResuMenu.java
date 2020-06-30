package com.pearadmin.common.web.domain.response;

import lombok.Data;

import java.util.ArrayList;
import java.util.List;

/**
 * Describe: 前端菜单数据封装信息
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */
@Data
public class ResuMenu {

    /**
     * 菜单编号
     * */
    private String id;

    /**
     * 标题
     * */
    private String title;

    /**
     * 菜单类型
     * */
    private String type;

    private String openType;

    /**
     * 图标
     * */
    private String icon;

    /**
     * 跳转路径
     * */
    private String href;

    /**
     * 子菜单
     * */
    private List<ResuMenu> children = new ArrayList<>();

}
