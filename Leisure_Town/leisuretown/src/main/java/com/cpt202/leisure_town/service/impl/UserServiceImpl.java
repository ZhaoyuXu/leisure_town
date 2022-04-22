package com.cpt202.leisure_town.service.impl;

import com.cpt202.leisure_town.dao.mapper.SysUserMapper;
import com.cpt202.leisure_town.dao.pojo.SysUser;
import com.cpt202.leisure_town.service.UserService;
import com.cpt202.leisure_town.dao.pojo.SysUser;
import com.cpt202.leisure_town.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private SysUserMapper sysUserMapper;

    @Override
    public SysUser findUserById(Long userId) {
        SysUser sysUser = sysUserMapper.selectById(userId);
        if (sysUser == null) {
            sysUser = new SysUser();
            sysUser.setNickname("码神之路");
        }
        return sysUser;
    }
}
