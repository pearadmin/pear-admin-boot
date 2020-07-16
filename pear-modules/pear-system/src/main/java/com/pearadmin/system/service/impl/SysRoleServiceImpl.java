package com.pearadmin.system.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pearadmin.common.tools.sequence.SequenceUtil;
import com.pearadmin.common.web.domain.request.PageDomain;
import com.pearadmin.system.domain.SysPower;
import com.pearadmin.system.domain.SysRole;
import com.pearadmin.system.domain.SysRolePower;
import com.pearadmin.system.mapper.SysPowerMapper;
import com.pearadmin.system.mapper.SysRoleMapper;
import com.pearadmin.system.mapper.SysRolePowerMapper;
import com.pearadmin.system.service.ISysRoleService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Service
public class SysRoleServiceImpl implements ISysRoleService {

    @Resource
    private SysRoleMapper sysRoleMapper;

    @Resource
    private SysPowerMapper sysPowerMapper;

    @Resource
    private SysRolePowerMapper sysRolePowerMapper;


    @Override
    public List<SysRole> list(SysRole sysRole) {
        return sysRoleMapper.selectList(sysRole);
    }

    @Override
    public PageInfo<SysRole> page(SysRole sysRole, PageDomain pageDomain) {
        PageHelper.startPage(pageDomain.getPage(),pageDomain.getLimit());
        List<SysRole> list = sysRoleMapper.selectList(sysRole);
        return new PageInfo<>(list);
    }

    /**
     * Describe: 保存角色数据
     * Param: SysRole
     * Return: 操作结果
     * */
    @Override
    public boolean save(SysRole sysRole) {
        int result = sysRoleMapper.insert(sysRole);
        if(result>0){
            return true;
        }else{
            return false;
        }
    }

    /**
     * Describe: 根据 ID 查询角色
     * Param: id
     * Return: 返回角色信息
     * */
    @Override
    public SysRole getById(String id) {
        return sysRoleMapper.selectById(id);
    }

    /**
     * Describe: 修改用户数据
     * Param: SysUser
     * Return: 操作结果
     * */
    @Override
    public boolean update(SysRole sysRole) {
        Integer result = sysRoleMapper.updateById(sysRole);
        if(result > 0){
            return true;
        }else{
            return false;
        }
    }

    /**
     * Describe: 查询角色权限信息
     * Param: id
     * Return: 返回角色信息
     * */
    @Override
    public List<SysPower> getRolePower(String roleId) {
        List<SysPower> allPower = sysPowerMapper.selectList(null);
        List<SysRolePower> myPower =  sysRolePowerMapper.selectByRoleId(roleId);
        allPower.forEach(sysPower->{
            myPower.forEach(sysRolePower->{
                if(sysRolePower.getPowerId().equals(sysPower.getPowerId()))sysPower.setCheckArr("1");
            });
        });
        return allPower;
    }

    /**
     * Describe: 保存角色权限数据
     * Param: roleId powerIds
     * Return: 执行结果
     * */
    @Override
    @Transactional
    public Boolean saveRolePower(String roleId, List<String> powerIds) {
        sysRolePowerMapper.deleteByRoleId(roleId);
        List<SysRolePower> rolePowers = new ArrayList<>();
        powerIds.forEach(powerId->{
            SysRolePower sysRolePower = new SysRolePower();
            sysRolePower.setId(SequenceUtil.makeStringId());
            sysRolePower.setRoleId(roleId);
            sysRolePower.setPowerId(powerId);
            rolePowers.add(sysRolePower);
        });
        int result = sysRolePowerMapper.batchInsert(rolePowers);
        if(result > 0){
            return true;
        }else{
            return false;
        }
    }

    /**
     * Describe: 根据 id 删除用户数据
     * Param: id
     * Return: Boolean
     * */
    @Override
    public Boolean remove(String id) {
        int result = sysRoleMapper.deleteById(id);
        if(result>0){
            return true;
        }else{
            return false;
        }
    }

}
