package com.pearadmin.schedule.task.impl;

import com.pearadmin.schedule.task.BaseTaskService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;
import java.text.SimpleDateFormat;
import java.util.Date;

@Slf4j
@Component("exceptionTask")
public class ExceptionTask implements BaseTaskService {

    private static final SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss") ;

    @Override
    public void run(String params) {
        log.info("Params === >> " + params);
        log.info("当前时间::::" + format.format(new Date()));
        throw new RuntimeException("发生异常");
    }

}
