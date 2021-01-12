package com.pearadmin.system.service.impl;

import com.pearadmin.common.plugins.logging.domain.Logging;
import com.pearadmin.common.plugins.logging.aop.enums.BusinessType;
import com.pearadmin.common.plugins.logging.aop.enums.LoggingType;
import com.pearadmin.common.plugins.logging.service.LoggingService;
import com.pearadmin.common.plugins.system.domain.*;
import com.pearadmin.common.plugins.system.service.ISysBaseAPI;
import com.pearadmin.common.tools.sequence.SequenceUtil;
import com.pearadmin.system.domain.*;
import com.pearadmin.system.mapper.*;
import com.pearadmin.system.service.ISysDictDataService;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * Describe: 对外开放的公用服务
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */
@Service
public class ISysBaseImpl implements ISysBaseAPI {

    @Resource
    private LoggingService loggingService;
    @Resource
    private SysUserMapper sysUserMapper;
    @Resource
    private SysRoleMapper sysRoleMapper;
    @Resource
    private SysPowerMapper sysPowerMapper;
    @Resource
    private ISysDictDataService iSysDictDataService;
    @Resource
    private SysDictDataMapper sysDictDataMapper;

    @Override
    public void addLog(String title,String description, LoggingType logType, BusinessType operatetype) {
        Logging logging = new Logging();
        // 日志编号
        logging.setId(SequenceUtil.makeStringId());
        // 模块标题
        logging.setTitle(title);
        // 模块描述
        logging.setDescription(description);
        // 业务类型
        logging.setBusinessType(operatetype);
        // 是否成功
        logging.setSuccess(true);
        // 日志类型
        logging.setLoggingType(logType);
        // 记录日志
        loggingService.save(logging);
    }

    @Override
    public SysBaseUser getUserByName(String username) {
        SysUser sysUser= sysUserMapper.selectByUsername(username);
        SysBaseUser sysUserModel=null;
        if(sysUser!=null) {
            sysUserModel = new SysBaseUser();
            BeanUtils.copyProperties(sysUser, sysUserModel);
            List<SysPower> powerList = sysPowerMapper.selectByUsername(username);
            if(powerList!=null&&powerList.size()>0){
                List<SysBasePower> sysPowerModelList=new ArrayList<>();
                for(SysPower sysPower:powerList){
                    try{
                        SysBasePower sysPowerModel = new SysBasePower();
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
    public SysBaseUser getUserById(String id) {
        SysUser sysUser= sysUserMapper.selectById(id);
        SysBaseUser sysUserModel=null;
        if(sysUser!=null) {
            sysUserModel = new SysBaseUser();
            BeanUtils.copyProperties(sysUser, sysUserModel);
        }
        return sysUserModel;
    }

    @Override
    public List<SysBaseRole> getRolesByUsername(String username) {
        List<SysRole>  roles=  sysRoleMapper.selectByUsername(username);
        List<SysBaseRole> sysRoleModelList=new ArrayList<>();
        if(roles!=null&&roles.size()>0){
            for(SysRole sysRole:roles){
                try{
                    SysBaseRole sysRoleModel = new SysBaseRole();
                    BeanUtils.copyProperties(sysRole, sysRoleModel);
                    sysRoleModelList.add(sysRoleModel);
                }catch (Exception e){
                    e.printStackTrace();
                }
            }
        }
        return sysRoleModelList;
    }

    @Override
    public List<SysBaseDictionary> selectDictByCode(String typeCode) {
        List<SysDictData>  sysDictDataList= iSysDictDataService.selectByCode(typeCode);
        return buildSysDictDataModel(sysDictDataList);
    }

    @Override
    public List<SysBaseDictionary> queryTableDictItemsByCode(String table, String text, String code) {
        return buildSysDictDataModel(sysDictDataMapper.queryTableDictItemsByCode(table,text,code));
    }

    @Override
    public List<SysBaseDictionary> queryTableDictItemsByCodeAndFilter(String table, String text, String code, String filterSql) {
        return buildSysDictDataModel(sysDictDataMapper.queryTableDictItemsByCodeAndFilter(table,text,code,filterSql));
    }

    @Override
    public List<SysBaseDictionary>  queryTableDictByKeys(String table, String text, String code, String[] keyArray) {
        return buildSysDictDataModel(sysDictDataMapper.queryTableDictByKeys(table,text,code,keyArray));
    }

    private  List<SysBaseDictionary> buildSysDictDataModel(List<SysDictData>  sysDictDataList){
        List<SysBaseDictionary> sysDictDataModelList=new ArrayList<>();
        if(sysDictDataList!=null&&sysDictDataList.size()>0){
            for(SysDictData sysDictData:sysDictDataList){
                try{
                    SysBaseDictionary sysDictDataModel = new SysBaseDictionary();
                    BeanUtils.copyProperties(sysDictData, sysDictDataModel);
                    sysDictDataModelList.add(sysDictDataModel);
                }catch (Exception e){
                    e.printStackTrace();
                }
            }
        }
        return sysDictDataModelList;
    }
}
