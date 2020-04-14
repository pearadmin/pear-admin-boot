package com.pearadmin.schedule.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pearadmin.common.web.domain.request.PageDomain;
import com.pearadmin.schedule.domain.ScheduleLogBean;
import com.pearadmin.schedule.mapper.ScheduleLogMapper;
import com.pearadmin.schedule.service.IScheduleLogService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;

@Slf4j
@Service("scheduleLogService")
public class ScheduleLogServiceImpl implements IScheduleLogService {

    @Resource
    private ScheduleLogMapper scheduleLogMapper ;

    @Override
    public Boolean insert(ScheduleLogBean scheduleLogBean) {
        int  i = scheduleLogMapper.insert(scheduleLogBean);
        if(i>0){
            return true;
        }else{
            return false;
        }
    }

    @Override
    public List<ScheduleLogBean> list(ScheduleLogBean scheduleLogBean) {
        return scheduleLogMapper.selectList(scheduleLogBean);
    }

    @Override
    public PageInfo<ScheduleLogBean> page(ScheduleLogBean scheduleLogBean, PageDomain pageDomain) {
        PageHelper.startPage(pageDomain.getPage(),pageDomain.getLimit());
        List<ScheduleLogBean> list = scheduleLogMapper.selectList(scheduleLogBean);
        return new PageInfo<>(list);
    }
}
