package com.pearadmin.system.controller;

import com.github.pagehelper.PageInfo;
import com.pearadmin.system.domain.SysNotice;
import com.pearadmin.common.tools.string.Convert;
import com.pearadmin.common.web.base.BaseController;
import com.pearadmin.common.web.domain.request.PageDomain;
import com.pearadmin.common.web.domain.response.Result;
import com.pearadmin.common.web.domain.response.module.ResultTable;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import com.pearadmin.system.service.ISysNoticeService;

/**
 * noticeController
 * 
 * @author jmys
 * @date 2021-03-13
 */
@RestController
@RequestMapping("/system/notice")
public class SysNoticeController extends BaseController
{
    private String prefix = "system/notice";

    @Autowired
    private ISysNoticeService sysNoticeService;

    @GetMapping("/main")
    @PreAuthorize("hasPermission('/system/notice/main','system:notice:main')")
    public ModelAndView main()
    {
        return jumpPage(prefix + "/main");
    }

    /**
     * 查询notice列表
     */
    @ResponseBody
    @GetMapping("/data")
    @PreAuthorize("hasPermission('/system/notice/data','system:notice:data')")
    public ResultTable list(@ModelAttribute SysNotice sysNotice, PageDomain pageDomain)
    {
        PageInfo<SysNotice> pageInfo = sysNoticeService.selectSysNoticePage(sysNotice,pageDomain);
        return pageTable(pageInfo.getList(),pageInfo.getTotal());
    }

    /**
     * 新增notice
     */
    @GetMapping("/add")
    @PreAuthorize("hasPermission('/system/notice/add','system:notice:add')")
    public ModelAndView add()
    {
        return jumpPage(prefix + "/add");
    }

    /**
     * 新增保存notice
     */
    @ResponseBody
    @PostMapping("/save")
    @PreAuthorize("hasPermission('/system/notice/add','system:notice:add')")
    public Result save(@RequestBody SysNotice sysNotice)
    {
        return decide(sysNoticeService.insertSysNotice(sysNotice));
    }

    /**
     * 修改notice
     */
    @GetMapping("/edit")
    @PreAuthorize("hasPermission('/system/notice/edit','system:notice:edit')")
    public ModelAndView edit(String id, ModelMap mmap)
    {
        SysNotice sysNotice = sysNoticeService.selectSysNoticeById(id);
        mmap.put("sysNotice", sysNotice);
        return jumpPage(prefix + "/edit");
    }

    /**
     * 修改保存notice
     */
    @ResponseBody
    @PutMapping("/update")
    @PreAuthorize("hasPermission('/system/notice/edit','system:notice:edit')")
    public Result update(@RequestBody SysNotice sysNotice)
    {
        return decide(sysNoticeService.updateSysNotice(sysNotice));
    }

    /**
     * 删除notice
     */
    @ResponseBody
    @DeleteMapping( "/batchRemove")
    @PreAuthorize("hasPermission('/system/notice/remove','system:notice:remove')")
    public Result batchRemove(String ids)
    {
        return decide(sysNoticeService.deleteSysNoticeByIds(Convert.toStrArray(ids)));
    }

    /**
     * 删除
     */
    @ResponseBody
    @DeleteMapping("/remove/{id}")
    @PreAuthorize("hasPermission('/system/notice/remove','system:notice:remove')")
    public Result remove(@PathVariable("id") String id)
    {
        return decide(sysNoticeService.deleteSysNoticeById(id));
    }
}
