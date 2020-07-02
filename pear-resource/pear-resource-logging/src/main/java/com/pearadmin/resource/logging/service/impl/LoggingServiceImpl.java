package com.pearadmin.resource.logging.service.impl;

import com.pearadmin.resource.logging.domain.Logging;
import com.pearadmin.resource.logging.mapper.LoggingMapper;
import com.pearadmin.resource.logging.service.LoggingService;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;

@Service
public class LoggingServiceImpl implements LoggingService {

    @Resource
    private LoggingMapper loggingMapper;

    @Override
    public boolean save(Logging logging) {
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
