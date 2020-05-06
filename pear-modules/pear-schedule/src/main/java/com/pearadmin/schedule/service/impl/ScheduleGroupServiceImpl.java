package com.pearadmin.schedule.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pearadmin.common.tools.serial.SnowFlake;
import com.pearadmin.common.web.domain.request.PageDomain;
import com.pearadmin.schedule.domain.ScheduleGroupBean;
import com.pearadmin.schedule.mapper.ScheduleGroupMapper;
import com.pearadmin.schedule.service.IScheduleGroupService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ScheduleGroupServiceImpl implements IScheduleGroupService {

    @Resource
    private ScheduleGroupMapper scheduleGroupMapper;

    @Override
    public List<ScheduleGroupBean> list(ScheduleGroupBean scheduleGroupBean) {
        return scheduleGroupMapper.selectList(scheduleGroupBean);
    }

    @Override
    public PageInfo<ScheduleGroupBean> page(ScheduleGroupBean scheduleGroupBean, PageDomain pageDomain) {
        PageHelper.startPage(pageDomain.getPage(),pageDomain.getLimit());
        List<ScheduleGroupBean> list = scheduleGroupMapper.selectList(scheduleGroupBean);
        return new PageInfo<>(list);
    }

    @Override
    public Boolean save(ScheduleGroupBean scheduleGroupBean) {
        Integer result = scheduleGroupMapper.insert(scheduleGroupBean);
        if(result>0){
            return true;
        }else{
            return false;
        }
    }

    @Override
    public Boolean remove(String groupId) {
        Integer result = scheduleGroupMapper.deleteById(groupId);
        if(result>0){
            return true;
        }else{
            return false;
        }
    }

    @Override
    public Boolean batchRemove(String groupIds) {
        return null;
    }

    @Override
    public ScheduleGroupBean getById(String groupId) {
        ScheduleGroupBean scheduleGroupBean = scheduleGroupMapper.selectById(groupId);
        return scheduleGroupBean;
    }
}
