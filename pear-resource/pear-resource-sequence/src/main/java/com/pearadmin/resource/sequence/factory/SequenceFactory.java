package com.pearadmin.resource.sequence.factory;

import com.pearadmin.resource.sequence.entity.Sequence;
import com.pearadmin.resource.sequence.exception.SequenceException;

import java.util.Set;

/**
 * Sequence 生产标准 -- [就眠仪式]
 * */
public interface SequenceFactory {

    /**
     * 获取 ID
     * */
    long makeId() throws SequenceException;

    /**
     * 批量获取 ID
     * */
    Set<Long> makeId(int batchSize)throws SequenceException;

    /**
     * 获取 Sequence Id
     * */
    Sequence makeSequence()throws SequenceException;

    /**
     * 批量获取 Sequence Id
     * */
    Set<Sequence> makeSequence(int batchSize)throws SequenceException;

}
