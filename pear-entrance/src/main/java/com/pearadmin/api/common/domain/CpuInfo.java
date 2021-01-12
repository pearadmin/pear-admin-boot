package com.pearadmin.api.common.domain;

import cn.hutool.core.date.DateUnit;
import cn.hutool.core.date.DateUtil;
import cn.hutool.core.util.NumberUtil;
import lombok.ToString;

import java.lang.management.ManagementFactory;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;

@ToString
public class CpuInfo {
    /**
     * 磁盘相关信息
     */
    private List<SysFileInfo> sysFiles = new LinkedList<>();

    /**
     * 內存相关信息
     *
     */
    private MemInfo memInfo;

    public MemInfo getMemInfo() {
        return memInfo;
    }

    public void setMemInfo(MemInfo memInfo) {
        this.memInfo = memInfo;
    }

    public List<SysFileInfo> getSysFiles() {
        return sysFiles;
    }

    public void setSysFiles(List<SysFileInfo> sysFiles) {
        this.sysFiles = sysFiles;
    }

    /**
     * 核心数
     */
    private int cpuNum;

    /**
     * CPU总的使用率
     */
    private double total;

    /**
     * CPU系统使用率
     */
    private double sys;

    /**
     * CPU用户使用率
     */
    private double used;

    /**
     * CPU当前等待率
     */
    private double wait;

    /**
     * CPU当前空闲率
     */
    private double free;

    public void setCpuNum(int cpuNum) {
        this.cpuNum = cpuNum;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public void setSys(double sys) {
        this.sys = sys;
    }

    public void setUsed(double used) {
        this.used = used;
    }

    public void setWait(double wait) {
        this.wait = wait;
    }

    public void setFree(double free) {
        this.free = free;
    }

    public int getCpuNum() {
        return cpuNum;
    }

    public double getTotal() {
        return NumberUtil.round(NumberUtil.mul(total, 100), 2).doubleValue();
    }

    public double getSys() {
        return NumberUtil.round(NumberUtil.mul(sys / total, 100), 2).doubleValue();
    }

    public double getUsed() {
        return NumberUtil.round(NumberUtil.mul(used / total, 100), 2).doubleValue();
    }

    public double getWait() {
        return NumberUtil.round(NumberUtil.mul(wait / total, 100), 2).doubleValue();
    }

    public double getFree() {
        return NumberUtil.round(NumberUtil.mul(free / total, 100), 2).doubleValue();
    }
    //sysInfo
    /**
     * 服务器名称
     */
    private String sysInfoComputerName;

    /**
     * 服务器Ip
     */
    private String sysInfoComputerIp;

    /**
     * 项目路径
     */
    private String sysInfoUserDir;

    /**
     * 操作系统
     */
    private String sysInfoOsName;

    /**
     * 系统架构
     */
    private String sysInfoOsArch;

    public String getSysInfoComputerName() {
        return sysInfoComputerName;
    }

    public void setSysInfoComputerName(String sysInfoComputerName) {
        this.sysInfoComputerName = sysInfoComputerName;
    }

    public String getSysInfoComputerIp() {
        return sysInfoComputerIp;
    }

    public void setSysInfoComputerIp(String sysInfoComputerIp) {
        this.sysInfoComputerIp = sysInfoComputerIp;
    }

    public String getSysInfoUserDir() {
        return sysInfoUserDir;
    }

    public void setSysInfoUserDir(String sysInfoUserDir) {
        this.sysInfoUserDir = sysInfoUserDir;
    }

    public String getSysInfoOsName() {
        return sysInfoOsName;
    }

    public void setSysInfoOsName(String sysInfoOsName) {
        this.sysInfoOsName = sysInfoOsName;
    }

    public String getSysInfoOsArch() {
        return sysInfoOsArch;
    }

    public void setSysInfoOsArch(String sysInfoOsArch) {
        this.sysInfoOsArch = sysInfoOsArch;
    }

    //jvmInfo
    /**
     * 当前JVM占用的内存总数(M)
     */
    private double jvmInfoTotal;

    /**
     * JVM最大可用内存总数(M)
     */
    private double jvmInfoMax;

    /**
     * JVM空闲内存(M)
     */
    private double jvmInfoFree;

    /**
     * JDK版本
     */
    private String jvmInfoVersion;

    /**
     * JDK路径
     */
    private String jvmInfoHome;

    public void setJvmInfoTotal(double jvmInfoTotal) {
        this.jvmInfoTotal = jvmInfoTotal;
    }

    public void setJvmInfoMax(double jvmInfoMax) {
        this.jvmInfoMax = jvmInfoMax;
    }

    public void setJvmInfoFree(double jvmInfoFree) {
        this.jvmInfoFree = jvmInfoFree;
    }

    public void setJvmInfoVersion(String jvmInfoVersion) {
        this.jvmInfoVersion = jvmInfoVersion;
    }

    public void setJvmInfoHome(String jvmInfoHome) {
        this.jvmInfoHome = jvmInfoHome;
    }

    public double getJvmInfoTotal() {
        return NumberUtil.div(jvmInfoTotal, (1024 * 1024), 2);
    }

    public double getJvmInfoMax() {
        return NumberUtil.div(jvmInfoMax, (1024 * 1024), 2);
    }

    public double getJvmInfoFree() {
        return NumberUtil.div(jvmInfoFree, (1024 * 1024), 2);
    }

    public double getJvmUsed() {
        return NumberUtil.div(jvmInfoTotal - jvmInfoFree, (1024 * 1024), 2);
    }

    public String getJvmInfoVersion() {
        return jvmInfoVersion;
    }

    public String getJvmInfoHome() {
        return jvmInfoHome;
    }

    public double getJvmUsage() {
        return NumberUtil.mul(NumberUtil.div(jvmInfoTotal - jvmInfoFree, jvmInfoTotal, 4), 100);
    }
    /**
     * 获取JDK名称
     */
    public String getJvmInfoName() {
        return ManagementFactory.getRuntimeMXBean().getVmName();
    }

    /**
     * JDK启动时间
     */
    public String getJvmInfoStartTime() {
        long time = ManagementFactory.getRuntimeMXBean().getStartTime();
        Date date = new Date(time);
        return DateUtil.formatDateTime(date);
    }

    /**
     * JDK运行时间
     */
    public String getJvmInfoRunTime() {

        long time = ManagementFactory.getRuntimeMXBean().getStartTime();
        Date date = new Date(time);

        //运行多少分钟
        long runMS = DateUtil.between(date, new Date(), DateUnit.MS);

        long nd = 1000 * 24 * 60 * 60;
        long nh = 1000 * 60 * 60;
        long nm = 1000 * 60;

        long day = runMS / nd;
        long hour = runMS % nd / nh;
        long min = runMS % nd % nh / nm;

        return day + "天" + hour + "小时" + min + "分钟";
    }
}
