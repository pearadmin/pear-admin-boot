package com.pearadmin.common.tools.database;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * Describe: 数据库工具类
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */

public class DataBaseUtil {

    /**
     * Describe: 获取数据库连接
     * Param: username password url driver
     * Return: Connection
     * */
    public static Connection getConnection(String username,String password,String url,String driver){
        Connection connection;
        try {
            Class.forName(driver); // 注册驱动
            connection = DriverManager.getConnection(url, username, password); // 获取连接
        } catch (Exception e) {
            throw new RuntimeException("get connection error!", e);
        }
        return connection;
    }

}
