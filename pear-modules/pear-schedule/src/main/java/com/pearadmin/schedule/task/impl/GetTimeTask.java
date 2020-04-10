package com.pearadmin.schedule.task.impl;

import com.pearadmin.schedule.task.TaskService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import java.text.SimpleDateFormat;
import java.util.Date;

@Component("getTimeTask")
public class GetTimeTask implements TaskService {

    private static final Logger LOG = LoggerFactory.getLogger(GetTimeTask.class.getName()) ;

    private static final SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss") ;

    @Override
    public void run(String params) {
        LOG.info("Params === >> " + params);
        LOG.info("当前时间::::" + format.format(new Date()));
    }
}
