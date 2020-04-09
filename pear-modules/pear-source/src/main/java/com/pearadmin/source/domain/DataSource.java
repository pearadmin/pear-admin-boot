package com.pearadmin.source.domain;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Driver;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class DataSource {

    private String username;

    private String password;

    private String url;

    private Driver driver;

    private Boolean enable;

}
