package com.pearadmin.system.mapper;

import com.pearadmin.common.web.domain.ResuMenu;
import com.pearadmin.system.domain.SysPower;
import com.pearadmin.system.domain.SysRole;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Set;

@Mapper
public interface SysPowerMapper {

    /**
     * Describe: 根据 SysPower 条件查询权限
     * Param: SysPower
     * Return: SysPower
     * */
    List<SysPower> selectList(SysPower sysPower);

    Integer insert(SysPower sysPower);

    /**
     * Describe: 根据 Id 查询权限
     * Param: id
     * Return: SysPower
     * */
    SysPower selectById(@Param("id") String id);

    List<SysPower> selectByUsername(String username);

    /**
     * Describe: 根据 username 查询用户菜单
     * Param: username
     * Return: ResuMenu
     * */
    Set<ResuMenu> selectMenuByUsername(String username);

    Set<ResuMenu> selectMenuByParentId(String parentId);

    int updateById(SysPower sysPower);

    int deleteById(String id);
}
