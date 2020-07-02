package com.pearadmin.resource.logging.config;

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

    private long workerId = 2;

    private long centerId = 2;

}