package com.pearadmin.common.plugins.logging.service.impl;

import com.pearadmin.common.plugins.logging.domain.Logging;
import com.pearadmin.common.plugins.logging.enums.LoggingType;
import com.pearadmin.common.plugins.logging.enums.RequestMethod;
import com.pearadmin.common.plugins.logging.mapper.LoggingMapper;
import com.pearadmin.common.plugins.logging.service.LoggingService;
import com.pearadmin.common.tools.security.SecurityUtil;
import com.pearadmin.common.tools.servlet.ServletUtil;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * Describe: 日 志 服 务 接 口 实 现
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */
@Service
public class LoggingServiceImpl implements LoggingService {

    /**
     * 日 志 服 务
     * */
    @Resource
    private LoggingMapper loggingMapper;

    /**
     * 日 志 存 储
     * */
    @Override
    public boolean save(Logging logging) {
        logging.setOperateAddress(ServletUtil.getRemoteHost());
        logging.setMethod(ServletUtil.getRequestURI());
        logging.setCreateTime(new Date());
        logging.setRequestMethod(RequestMethod.valueOf(ServletUtil.getMethod()));
        logging.setOperateUrl(ServletUtil.getRequestURI());
        logging.setBrowser(ServletUtil.getBrowser());
        logging.setRequestBody(ServletUtil.getQueryParam());
        logging.setSystemOs(ServletUtil.getSystem());
        logging.setOperateName(SecurityUtil.currentUser().getName());
        int result = loggingMapper.insert(logging);
        if(result>0){
            return true;
        }else{
            return false;
        }
    }

    /**
     * 日 志 数 据
     * */
    @Override
    public List<Logging> data(LoggingType loggingType) {
        return loggingMapper.selectList(loggingType);
    }
}
