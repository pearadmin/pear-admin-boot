package com.pearadmin.security.domain;

import com.pearadmin.system.domain.SysPower;
import com.pearadmin.system.domain.SysUser;
import com.pearadmin.system.mapper.SysPowerMapper;
import com.pearadmin.system.mapper.SysUserMapper;
import org.springframework.security.authentication.LockedException;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;
import javax.annotation.Resource;
import java.util.List;

/**
 * Describe: Security 用户服务
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */
@Component
public class SecurityUserDetailsService implements UserDetailsService {

    @Resource
    private SysUserMapper sysUserMapper;
    @Resource
    private SysPowerMapper sysPowerMapper;

    @Override
    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {
        SysUser sysUser = sysUserMapper.selectByUsername(s);
        if(sysUser==null){
            throw new UsernameNotFoundException("Account Not");
        }

        List<SysPower> powerList = sysPowerMapper.selectByUsername(s);
        sysUser.setPowerList(powerList);
        return sysUser;

    }
}
