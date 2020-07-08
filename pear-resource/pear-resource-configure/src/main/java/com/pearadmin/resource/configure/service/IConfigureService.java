package com.pearadmin.resource.configure.service;


import com.pearadmin.resource.configure.domain.Configure;

import java.util.List;

public interface IConfigureService {

    List<Configure> list(Configure configure);

    Boolean save(Configure configure);

    Configure getById(String configId);

    Boolean update(Configure sysConfig);

    Boolean remove(String id);
}
