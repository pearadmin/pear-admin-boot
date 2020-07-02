package com.pearadmin.resource.logging.service;

import com.pearadmin.resource.logging.domain.Logging;

import java.util.List;

public interface LoggingService {

    /**
     * 执 行 插 入 操 作
     * */
    public boolean save(Logging logging);

    /**
     * 执 行 查 询 操 作
     * */
    public List<Logging> data();
}
