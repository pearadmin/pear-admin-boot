package com.pearadmin.system.domain;

import lombok.Data;

@Data
public class SysSetup {

    private String mailHost;

    private String mailPort;

    private String mailFrom;

    private String mailUser;

    private String mailPass;

    private String ossKey;

    private String ossBucket;

    private String ossPoint;

    private String ossSecret;

    private String ossPath;

    private String ossType;

}
