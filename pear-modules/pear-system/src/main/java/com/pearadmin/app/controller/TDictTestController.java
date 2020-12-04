package com.pearadmin.app.controller;

import java.util.List;

import com.github.pagehelper.PageInfo;
import com.pearadmin.app.domain.TDictTest;
import com.pearadmin.common.tools.text.Convert;
import com.pearadmin.common.web.base.BaseController;
import com.pearadmin.common.web.domain.request.PageDomain;
import com.pearadmin.common.web.domain.response.Result;
import com.pearadmin.common.web.domain.response.ResultTable;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import com.pearadmin.app.service.ITDictTestService;

/**
 * 单表字典测试Controller
 * 
 * @author Songaw
 * @date 2020-12-04
 */
@RestController
@RequestMapping("/app/test")
public class TDictTestController extends BaseController
{
    private String prefix = "app/test";

    @Autowired
    private ITDictTestService tDictTestService;

    @GetMapping("/main")
    @PreAuthorize("hasPermission('/app/test/main','app:test:main')")
    public ModelAndView main()
    {
        return JumpPage(prefix + "/main");
    }

    /**
     * 查询单表字典测试列表
     */
    @ResponseBody
    @GetMapping("/data")
    @PreAuthorize("hasPermission('/app/test/data','app:test:data')")
    public ResultTable list(@ModelAttribute TDictTest tDictTest, PageDomain pageDomain)
    {
        PageInfo<TDictTest> pageInfo = tDictTestService.selectTDictTestPage(tDictTest,pageDomain);
        return pageTable(pageInfo.getList(),pageInfo.getTotal());
    }

    /**
     * 新增单表字典测试
     */
    @GetMapping("/add")
    @PreAuthorize("hasPermission('/app/test/add','app:test:add')")
    public ModelAndView add()
    {
        return JumpPage(prefix + "/add");
    }

    /**
     * 新增保存单表字典测试
     */
    @ResponseBody
    @PostMapping("/save")
    @PreAuthorize("hasPermission('/app/test/add','app:test:add')")
    public Result save(@RequestBody TDictTest tDictTest)
    {
        return decide(tDictTestService.insertTDictTest(tDictTest));
    }

    /**
     * 修改单表字典测试
     */
    @GetMapping("/edit")
    @PreAuthorize("hasPermission('/app/test/edit','app:test:edit')")
    public ModelAndView edit(Long id, ModelMap mmap)
    {
        TDictTest tDictTest = tDictTestService.selectTDictTestById(id);
        mmap.put("tDictTest", tDictTest);
        return JumpPage(prefix + "/edit");
    }

    /**
     * 修改保存单表字典测试
     */
    @ResponseBody
    @PutMapping("/update")
    @PreAuthorize("hasPermission('/app/test/edit','app:test:edit')")
    public Result update(@RequestBody TDictTest tDictTest)
    {
        return decide(tDictTestService.updateTDictTest(tDictTest));
    }

    /**
     * 删除单表字典测试
     */
    @ResponseBody
    @DeleteMapping( "/batchRemove")
    @PreAuthorize("hasPermission('/app/test/remove','app:test:remove')")
    public Result batchRemove(String ids)
    {
        return decide(tDictTestService.deleteTDictTestByIds(Convert.toStrArray(ids)));
    }

    /**
     * 删除
     */
    @ResponseBody
    @DeleteMapping("/remove/{id}")
    @PreAuthorize("hasPermission('/app/test/remove','app:test:remove')")
    public Result remove(@PathVariable("id") Long id)
    {
        return decide(tDictTestService.deleteTDictTestById(id));
    }
}
