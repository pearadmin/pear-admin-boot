package com.pearadmin.common.plugins.logging.service.impl;

import com.pearadmin.common.plugins.logging.domain.Logging;
import com.pearadmin.common.plugins.logging.aop.enums.LoggingType;
import com.pearadmin.common.plugins.logging.aop.enums.RequestMethod;
import com.pearadmin.common.plugins.logging.mapper.LoggingMapper;
import com.pearadmin.common.plugins.logging.service.LoggingService;
import com.pearadmin.common.tools.secure.SecurityUtil;
import com.pearadmin.common.tools.servlet.ServletUtil;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.time.LocalDateTime;
import java.util.List;

/**
 * Describe: 日 志 服 务 接 口 实 现
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */
@Service
public class LoggingServiceImpl implements LoggingService {

    @Resource
    private LoggingMapper loggingMapper;

    @Override
    public boolean save(Logging logging) {
        logging.setOperateAddress(ServletUtil.getRemoteHost());
        logging.setMethod(ServletUtil.getRequestURI());
        logging.setCreateTime(LocalDateTime.now());
        logging.setRequestMethod(RequestMethod.valueOf(ServletUtil.getMethod()));
        logging.setOperateUrl(ServletUtil.getRequestURI());
        logging.setBrowser(ServletUtil.getBrowser());
        logging.setRequestBody(ServletUtil.getQueryParam());
        logging.setSystemOs(ServletUtil.getSystem());
        logging.setOperateName(null != SecurityUtil.currentUser() ? SecurityUtil.currentUser().getName() : "未登录用户");
        int result = loggingMapper.insert(logging);
        if(result>0){
            return true;
        }else{
            return false;
        }
    }

    @Override
    public List<Logging> data(LoggingType loggingType) {
        return loggingMapper.selectList(loggingType);
    }

    @Override
    public Logging getById(String id) {
        return loggingMapper.getById(id);
    }

    @Override
    public List<Logging> selectTopLoginLog(String operateName) {
        return loggingMapper.selectTopLoginLog(operateName);
    }
}
