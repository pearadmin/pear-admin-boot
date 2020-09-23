package com.pearadmin.process.domain;

import lombok.Data;

@Data
public class ProDefined {

    private String id;

    private String name;

    private String key;

    private int version;

    private String bpmn;

    private String png;

    private String deploymentId;
}
