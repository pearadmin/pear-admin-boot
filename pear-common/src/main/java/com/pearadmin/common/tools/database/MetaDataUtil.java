package com.pearadmin.common.tools.database;

import com.pearadmin.common.tools.database.domain.DBCata;
import com.pearadmin.common.tools.database.domain.DBColumn;
import com.pearadmin.common.tools.database.domain.DBTable;
import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * Describe: 元数据工具类
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */

public class MetaDataUtil {

    /**
     * Describe: 获取数据库信息
     * Param: Connection
     * Return Table
     * */
    public static List<DBCata> getCataLogs(Connection connection){
        try {
            DatabaseMetaData metaData = connection.getMetaData();
            ResultSet catalogsResultSet = metaData.getCatalogs();
            List<DBCata> databases = new ArrayList<>();
            while(catalogsResultSet.next()){
                DBCata dbCata = new DBCata();
                dbCata.setCataName(catalogsResultSet.getString("TABLE_CAT"));
                databases.add(dbCata);
            }
            return databases;
        }catch (Exception e){

        }
        return null;
    }


    /**
     * Describe: 获取表信息
     * Param: Connection
     * Return Table
     * */
    public static List<DBTable> getTables(Connection connection){
        try {
            DatabaseMetaData metaData = connection.getMetaData();
            String catalog = connection.getCatalog();
            ResultSet tablesResultSet = metaData.getTables(catalog,null,null,new String[]{"TABLE"});
            List<DBTable> tables = new ArrayList<>();
            while(tablesResultSet.next()){
                String tableName = tablesResultSet.getString("TABLE_NAME");
                DBTable table = new DBTable();
                table.setTableName(tablesResultSet.getString("TABLE_NAME"));
                table.setTableType(tablesResultSet.getString("TABLE_TYPE"));
                table.setRemarks(tablesResultSet.getString("REMARKS"));
                tables.add(table);
            }
            return tables;
        }catch (Exception e){

        }
        return null;
    }

    /**
     * Describe: 获取表的列信息
     * Param: Connection tableName
     * Return Table
     * */
    public static List<DBColumn> getColumns(Connection connection, String tableName){

        try{
            DatabaseMetaData metaData = connection.getMetaData();
            String cataLog =  connection.getCatalog();
            ResultSet colRet = metaData.getColumns(null,"%",tableName,"%");
            List<DBColumn> columns = new ArrayList<>();
            while(colRet.next()) {
                DBColumn column = new DBColumn();
                column.setColumnName(colRet.getString("COLUMN_NAME"));
                column.setColumnType(colRet.getString("TYPE_NAME"));
                column.setColumnSize(colRet.getString("COLUMN_SIZE"));
                column.setRemarks(colRet.getString("REMARKS"));
                column.setIsNull(colRet.getString("NULLABLE"));
                column.setTableName(colRet.getString("TABLE_NAME"));
                ResultSet primaryKeyResultSet = metaData.getPrimaryKeys(cataLog,null,tableName);
                while(primaryKeyResultSet.next()){
                    if(primaryKeyResultSet.getString("COLUMN_NAME").equals(colRet.getString("COLUMN_NAME"))){
                        column.setIsPrimaryKey("true");
                    }
                }
                columns.add(column);
            }
            return columns;
        }catch (Exception e){

        }
        return  null;
    }

    public static void main(String[] args){
       Connection connection =  DataBaseUtil.getConnection("root","root","jdbc:mysql://localhost:3306?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=true&serverTimezone=GMT%2B8&nullCatalogMeansCurrent=true","com.mysql.cj.jdbc.Driver");
       getCataLogs(connection);
    }
}
