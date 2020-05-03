package com.pearadmin.generate.controller;

import com.github.pagehelper.PageInfo;
import com.pearadmin.common.constant.GeneratorContstants;
import com.pearadmin.common.tools.serial.SnowFlake;
import com.pearadmin.common.web.base.BaseController;
import com.pearadmin.common.web.domain.ResuBean;
import com.pearadmin.common.web.domain.ResuTable;
import com.pearadmin.common.web.domain.request.PageDomain;
import com.pearadmin.generate.domain.GenTable;
import com.pearadmin.generate.service.IGenTableService;
import com.pearadmin.generate.service.IGeneratorService;
import org.apache.commons.io.IOUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;
import java.util.Map;

/**
 * 代码生成器
 * 
 * @author chenjunfei
 * @email kkomge@qq.com
 * @date 2016年12月19日 下午9:12:58
 */
@Controller
@RequestMapping("generator")
public class GeneratorController extends BaseController {

	@Resource
	private IGeneratorService generatorService;

	@Resource
	private IGenTableService genTableService;

	/**
	 * Describe: 代码生成界面
	 * Param: ModelAndView
	 * Return: ModelAndView
	 * */
	@GetMapping("main")
	public ModelAndView main(ModelAndView modelAndView){
		modelAndView.setViewName("generator/main");
		return modelAndView;
	}

	/**
	 * 列表
	 */
	@ResponseBody
	@GetMapping("/data")
	public ResuTable data(PageDomain pageDomain){
		PageInfo<GenTable> pageInfo = genTableService.page(null,pageDomain);
		return pageTable(pageInfo.getList(),pageInfo.getTotal());
	}

	/**
	 * 列表2
	 * */
	@ResponseBody
	@GetMapping("/importData")
	public ResuTable importData(PageDomain pageDomain){
		PageInfo<Map<String, Object>>  pageInfo = generatorService.queryList(null,pageDomain);
		return pageTable(pageInfo.getList(),pageInfo.getTotal());
	}

	@GetMapping("edit")
	public ModelAndView edit(ModelAndView modelAndView){
		modelAndView.setViewName("generator/edit");
		return modelAndView;
	}



	@GetMapping("import")
	public ModelAndView importTable(ModelAndView modelAndView){
		modelAndView.setViewName("generator/Import");
		return modelAndView;
	}

	@ResponseBody
	@PostMapping("import")
	public ResuBean importTable(String tableName){
		Map<String,String> map = generatorService.queryTable(tableName);
		GenTable genTable = new GenTable();
		genTable.setTableId("" + new SnowFlake().nextId());
		genTable.setTableNames(tableName);
		genTable.setTableComments(map.get("tableComment"));
		genTable.setAuthor(GeneratorContstants.AUTHOR);
		genTable.setPackageName(GeneratorContstants.PACKAGE_NAME);
		genTable.setBusinessName(GeneratorContstants.BUSINESS_NAME);
		genTable.setCreateTime(new Date());
		Boolean b = genTableService.save(genTable);
		return decide(b,"导入成功","导入失败");
	}


	/**
	 * 生成代码
	 */
	@GetMapping("/encode")
	public void code(String tableName,HttpServletResponse response) throws IOException{

	    String[] tableNames;
        tableNames = tableName.split(",");
		byte[] data = generatorService.generatorCode(tableNames);

		response.reset();
        response.setHeader("Content-Disposition", "attachment; filename=\"pearadmin.zip\"");
        response.addHeader("Content-Length", "" + data.length);  
        response.setContentType("application/octet-stream; charset=UTF-8");
        IOUtils.write(data, response.getOutputStream());  
	}
}
