package com.pearadmin.security.domain;

import com.pearadmin.system.domain.SysUser;
import com.pearadmin.system.mapper.SysUserMapper;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;

@Component
public class SecurityUserDetailsService implements UserDetailsService {

    @Resource
    private SysUserMapper sysUserMapper;

    @Override
    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {
        SysUser sysUser = sysUserMapper.selectByUsername(s);
        if(sysUser==null){
            throw new UsernameNotFoundException("Account Not");
        }
        SecurityUserDetails securityUserDetails = new SecurityUserDetails();
        securityUserDetails.setUserId(sysUser.getUserId());
        securityUserDetails.setRealName(sysUser.getRealName());
        securityUserDetails.setUsername(sysUser.getUsername());
        securityUserDetails.setPassword(sysUser.getPassword());
        securityUserDetails.setEnable(sysUser.getEnable());
        return securityUserDetails;
    }
}
