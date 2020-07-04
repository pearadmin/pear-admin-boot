package com.pearadmin.resource.sequence.entity;

import lombok.Data;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

/**
 * Sequence Id 存储对象 -- [就眠仪式]
 *
 * */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Sequence {

    /**
     * 当 前 时 间
     * */
    private long currentTime;

    /**
     * 当 前 编 号
     * */
    private long currentId;

    /**
     * 工 作 编 号
     * */
    private long workerId;

    /**
     * 数 据 中 心
     * */
    private long centerId;

}
