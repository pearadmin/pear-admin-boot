package com.pearadmin.common.logging.config;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 日志 Id 生成
 * */
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class SequenceConfig {

    /**
     * 机 器 编 号
     * */
    private long workerId = 2;

    /**
     * 数 据 中 心
     * */
    private long centerId = 2;

}