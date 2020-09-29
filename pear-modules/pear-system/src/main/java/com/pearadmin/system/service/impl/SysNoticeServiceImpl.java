package com.pearadmin.system.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pearadmin.common.web.domain.request.PageDomain;
import com.pearadmin.system.domain.SysNotice;
import com.pearadmin.system.mapper.SysNoticeMapper;
import com.pearadmin.system.param.QueryNoticeParam;
import com.pearadmin.system.service.ISysNoticeService;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;

@Service
public class SysNoticeServiceImpl implements ISysNoticeService {

    @Resource
    private SysNoticeMapper sysNoticeMapper;

    @Override
    public List<SysNotice> top(Integer size) {
        return sysNoticeMapper.selectTop(size);
    }

    @Override
    public List<SysNotice> list(QueryNoticeParam queryNoticeParam) {
        return sysNoticeMapper.selectList(queryNoticeParam);
    }

    @Override
    public PageInfo<SysNotice> page(QueryNoticeParam queryNoticeParam, PageDomain pageDomain) {
        PageHelper.startPage(pageDomain.getPage(),pageDomain.getLimit());
        List<SysNotice> list = sysNoticeMapper.selectList(queryNoticeParam);
        return new PageInfo<>(list);
    }

    @Override
    public boolean save(SysNotice sysNotice) {
        int result = sysNoticeMapper.insert(sysNotice);
        if(result>0){
            return true;
        }else{
            return false;
        }
    }

    @Override
    public SysNotice getById(String id) {
        return sysNoticeMapper.selectById(id);
    }

    @Override
    public boolean update(SysNotice sysNotice) {
        Integer result = sysNoticeMapper.updateById(sysNotice);
        if(result > 0){
            return true;
        }else{
            return false;
        }
    }

    @Override
    public Boolean remove(String id) {
        int result = sysNoticeMapper.deleteById(id);
        if(result>0){
            return true;
        }else{
            return false;
        }
    }

    @Override
    public boolean batchRemove(String[] ids) {
        int result = sysNoticeMapper.deleteByIds(ids);
        if(result>0){
            return true;
        }else{
            return false;
        }
    }
}
