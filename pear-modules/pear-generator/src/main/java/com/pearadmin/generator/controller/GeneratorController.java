package com.pearadmin.generator.controller;

import com.pearadmin.common.web.base.BaseController;
import com.pearadmin.common.web.domain.response.ResultTable;
import com.pearadmin.generator.service.IGeneratorService;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import javax.annotation.Resource;

/**
 * Describe:代 码 生 成 控 制 器
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */
@RestController
@RequestMapping("generator")
public class GeneratorController extends BaseController {

    @Resource
    private IGeneratorService generatorService;

    /**
     * Describe: 查询数据库所有表
     * Param null
     * Return ResultTable
     * */
    @GetMapping("main")
    public ModelAndView main(Model model){
        model.addAttribute("tables",generatorService.queryTable());
        return JumpPage("generator/main");
    }

    /**
     * Describe: 查询数据库所有表
     * Param null
     * Return ResultTable
     * */
    @GetMapping("queryTable")
    public ResultTable queryTable(){
        return dataTable(generatorService.queryTable());
    }

    /**
     * Describe: 查询数据库所有列
     * Param tableName
     * Return ResultTable
     * */
    @GetMapping("queryColumn")
    public ResultTable queryColumn(String tableName){
        return dataTable(generatorService.queryColumn(tableName));
    }

    /**
     * Describe: 代码生成
     * */
    @PostMapping("autoCode")
    public void autoCode(){

    }
}
