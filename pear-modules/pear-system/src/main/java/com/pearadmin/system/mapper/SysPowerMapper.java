package com.pearadmin.system.mapper;

import com.pearadmin.system.domain.SysPower;
import com.pearadmin.system.result.Menu;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

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

    /**
     * Describe: 根据 username 查询用户权限
     * Param: username
     * Return: SysPower
     * */
    List<SysPower> selectByUsername(String username);

    /**
     * Describe: 根据 username 查询用户菜单
     * Param: username
     * Return: ResuMenu
     * */
    List<Menu> selectMenuByUsername(String username);

    /**
     * Describe: 根据 ParentId 查询子菜单
     * Param: parentId
     * Return: ResuMenu
     * */
    List<Menu> selectMenuByParentId(String parentId);

    /**
     * Describe: 修改权限信息
     * Param: SysPower
     * Return: int
     * */
    int updateById(SysPower sysPower);

    /**
     * Describe: 删除权限信息
     * Param: id
     * Return: int
     * */
    int deleteById(String id);
}
