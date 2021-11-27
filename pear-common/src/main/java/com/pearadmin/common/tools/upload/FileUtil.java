package com.pearadmin.common.tools.upload;

import com.pearadmin.common.constant.CommonConstant;

/**
 * Describe: 文 件 工 具 类
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 */
public class FileUtil {


    public static String getPrintSize(long size) {
        // 如果字节数少于1024，则直接以B为单位，否则先除于1024，后3位因太少无意义
        if (size < CommonConstant.UNIT) {
            return String.valueOf(size) + "B";
        } else {
            size = size / CommonConstant.UNIT;
        }
        // 如果原字节数除于1024之后，少于1024，则可以直接以KB作为单位
        // 因为还没有到达要使用另一个单位的时候
        // 接下去以此类推
        if (size < CommonConstant.UNIT) {
            return String.valueOf(size) + "KB";
        } else {
            size = size / CommonConstant.UNIT;
        }
        if (size < CommonConstant.UNIT) {
            // 因为如果以MB为单位的话，要保留最后1位小数，
            // 因此，把此数乘以100之后再取余
            size = size * CommonConstant.CENTI;
            return String.valueOf((size / CommonConstant.CENTI)) + "." + String.valueOf((size % CommonConstant.CENTI)) + "MB";
        } else {
            // 否则如果要以GB为单位的，先除于1024再作同样的处理
            size = size * CommonConstant.CENTI / CommonConstant.UNIT;
            return String.valueOf((size / CommonConstant.CENTI)) + "." + String.valueOf((size % CommonConstant.CENTI)) + "GB";
        }
    }

}
