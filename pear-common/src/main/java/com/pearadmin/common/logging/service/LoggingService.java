package com.pearadmin.common.logging.service;

import com.pearadmin.common.logging.domain.Logging;
import java.util.List;

public interface LoggingService {

    /**
     * 执 行 插 入 操 作
     * */
    boolean save(Logging logging);

    /**
     * 执 行 查 询 操 作
     * */
    List<Logging> data();
}
