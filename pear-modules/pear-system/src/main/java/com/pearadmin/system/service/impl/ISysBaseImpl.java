package com.pearadmin.system.service.impl;

import com.pearadmin.common.plugins.logging.domain.Logging;
import com.pearadmin.common.plugins.logging.enums.BusinessType;
import com.pearadmin.common.plugins.logging.enums.LoggingType;
import com.pearadmin.common.plugins.logging.service.LoggingService;
import com.pearadmin.common.tools.sequence.SequenceUtil;
import com.pearadmin.system.domain.*;
import com.pearadmin.system.mapper.SysDeptMapper;
import com.pearadmin.system.mapper.SysPowerMapper;
import com.pearadmin.system.mapper.SysRoleMapper;
import com.pearadmin.system.mapper.SysUserMapper;
import com.pearadmin.system.service.ISysBaseAPI;
import com.pearadmin.system.service.ISysUserService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Describe: 系统配置服务接口实现
 * Author: 就 眠 仪 式
 * CreateTime: 2020年12月1日14:56:45
 * */
@Service
public class ISysBaseImpl implements ISysBaseAPI {
    @Autowired
    LoggingService loggingService;
    @Resource
    private SysUserMapper sysUserMapper;
    @Resource
    private SysRoleMapper sysRoleMapper;
    @Resource
    private SysPowerMapper sysPowerMapper;
    @Resource
    private SysDeptMapper sysDeptMapper;
    @Override
    public void addLog(String title,String description, LoggingType logType, BusinessType operatetype) {
        Logging logging = new Logging();
        // 日 志 编 号
        logging.setId(SequenceUtil.makeStringId());
        // 模 块 标 题
        logging.setTitle(title);
        // 模 块 描 述
        logging.setDescription(description);
        // 业 务 类 型
        logging.setBusinessType(operatetype);
        // 是 否 成 功
        logging.setSuccess(true);
        // 日 志 类 型
        logging.setLoggingType(logType);
        loggingService.save(logging);
    }

    @Override
    public SysUserModel getUserByName(String username) {
        SysUser sysUser= sysUserMapper.selectByUsername(username);
        SysUserModel sysUserModel=null;
        if(sysUser!=null) {
            sysUserModel = new SysUserModel();
            BeanUtils.copyProperties(sysUser, sysUserModel);
            List<SysPower> powerList = sysPowerMapper.selectByUsername(username);
            if(powerList!=null&&powerList.size()>0){
                List<SysPowerModel> sysPowerModelList=new ArrayList<>();
                for(SysPower sysPower:powerList){
                    try{
                        SysPowerModel sysPowerModel = new SysPowerModel();
                        BeanUtils.copyProperties(sysPower, sysPowerModel);
                        sysPowerModelList.add(sysPowerModel);
                    }catch (Exception e){

                    }
                }
                sysUserModel.setPowerList(sysPowerModelList);
            }

        }
        return sysUserModel;
    }

    @Override
    public SysUserModel getUserById(String id) {
        SysUser sysUser= sysUserMapper.selectById(id);
        SysUserModel sysUserModel=null;
        if(sysUser!=null) {
            sysUserModel = new SysUserModel();
            BeanUtils.copyProperties(sysUser, sysUserModel);
        }
        return sysUserModel;
    }

    @Override
    public List<SysRoleModel> getRolesByUsername(String username) {
        List<SysRole>  roles=  sysRoleMapper.selectByUsername(username);
        List<SysRoleModel> sysRoleModelList=new ArrayList<>();
        if(roles!=null&&roles.size()>0){
            for(SysRole sysRole:roles){
                try{
                    SysRoleModel sysRoleModel = new SysRoleModel();
                    BeanUtils.copyProperties(sysRole, sysRoleModel);
                    sysRoleModelList.add(sysRoleModel);
                }catch (Exception e){
                }
            }
        }
        return sysRoleModelList;
    }

    @Override
    public List<String> getDepartIdsByUsername(String username) {

        return null;
    }

    @Override
    public List<String> getDepartNamesByUsername(String username) {
        return null;
    }

    @Override
    public String getDatabaseType() throws SQLException {
        return null;
    }

    @Override
    public List<SysDictDataModel> selectByCode(String typeCode) {
        return null;
    }

    @Override
    public List<SysDictDataModel> queryAllDict() {
        return null;
    }

    @Override
    public List<SysDictTypeModel> queryAllSysDictType() {
        return null;
    }

    @Override
    public List<SysDictDataModel> queryTableDictItemsByCode(String table, String text, String code) {
        return null;
    }

    @Override
    public List<SysDictDataModel> queryAllDepartBackDictModel() {
        return null;
    }

    @Override
    public List<SysDictDataModel> queryFilterTableDictInfo(String table, String text, String code, String filterSql) {
        return null;
    }

    @Override
    public List<String> queryTableDictByKeys(String table, String text, String code, String[] keyArray) {
        return null;
    }

    @Override
    public List<String> getRoleIdsByUsername(String username) {
        return null;
    }

    @Override
    public String getDepartIdsByOrgCode(String orgCode) {
        return null;
    }

    @Override
    public SysDeptModel getParentDepartId(String departId) {
        return null;
    }

    @Override
    public List<SysDeptModel> getAllSysDepart() {
        return null;
    }

    @Override
    public List<String> getDeptHeadByDepId(String deptId) {
        return null;
    }

    @Override
    public String upload(MultipartFile file, String bizPath, String uploadType) {
        return null;
    }

    @Override
    public String upload(MultipartFile file, String bizPath, String uploadType, String customBucket) {
        return null;
    }

    @Override
    public void viewAndDownload(String filePath, String uploadpath, String uploadType, HttpServletResponse response) {

    }

    @Override
    public List<SysUserModel> queryAllUserByIds(String[] userIds) {
        return null;
    }

    @Override
    public List<SysUserModel> queryUserByNames(String[] userNames) {
        return null;
    }
}
