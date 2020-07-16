package com.pearadmin.common.logging.service.impl;

import com.pearadmin.common.logging.domain.Logging;
import com.pearadmin.common.logging.mapper.LoggingMapper;
import com.pearadmin.common.logging.service.LoggingService;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;

@Service
public class LoggingServiceImpl implements LoggingService {

    @Resource
    private LoggingMapper loggingMapper;

    @Override
    public boolean save(com.pearadmin.common.logging.domain.Logging logging) {
        int result = loggingMapper.insert(logging);
        if(result>0){
            return true;
        }else{
            return false;
        }
    }

    @Override
    public List<Logging> data() {
        return loggingMapper.selectList();
    }
}
