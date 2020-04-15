package com.pearadmin.generator.controller;

import com.pearadmin.generator.service.SysGeneratorService;
import com.pearadmin.generator.utils.PageUtils;
import com.pearadmin.generator.utils.Query;
import com.pearadmin.generator.utils.R;
import com.pearadmin.generator.utils.XssHttpServletRequestWrapper;
import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/**
 * 代码生成器
 * 
 * @author chenjunfei
 * @email kkomge@qq.com
 * @date 2016年12月19日 下午9:12:58
 */
@Controller
@RequestMapping("sys/generator")
public class SysGeneratorController {
	@Autowired
	private SysGeneratorService sysGeneratorService;
	
	/**
	 * 列表
	 */
	@ResponseBody
	@RequestMapping("/list")
	public R list(@RequestParam Map<String, Object> params){
		//查询列表数据
		Query query = new Query(params);
		List<Map<String, Object>> list = sysGeneratorService.queryList(query);
		int total = sysGeneratorService.queryTotal(query);
		
		PageUtils pageUtil = new PageUtils(list, total, query.getLimit(), query.getPage());
		
		return R.ok().put("page", pageUtil);
	}
	
	/**
	 * 生成代码
	 */
	@RequestMapping("/code")
	public void code(HttpServletRequest request, HttpServletResponse response) throws IOException{
        //获取表名，不进行xss过滤
        HttpServletRequest orgRequest = XssHttpServletRequestWrapper.getOrgRequest(request);
        String tables = orgRequest.getParameter("tables");

	    String[] tableNames;
        tableNames = tables.split(",");

		byte[] data = sysGeneratorService.generatorCode(tableNames);
		
		response.reset();  
        response.setHeader("Content-Disposition", "attachment; filename=\"yuanjilu.zip\"");  
        response.addHeader("Content-Length", "" + data.length);  
        response.setContentType("application/octet-stream; charset=UTF-8");  
  
        IOUtils.write(data, response.getOutputStream());  
	}
}
