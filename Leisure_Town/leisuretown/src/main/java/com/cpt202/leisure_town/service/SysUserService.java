package com.cpt202.leisure_town.service;

import com.cpt202.leisure_town.dao.pojo.SysUser;
import com.cpt202.leisure_town.vo.Result;
import com.cpt202.leisure_town.vo.UserVo;
import org.springframework.stereotype.Service;

@Service
public interface SysUserService {
    UserVo findUserVoById(Long id);

    SysUser findUserById(long id);

    SysUser findUser(String account, String password);

    Result findUserByToken(String token);

    SysUser findUserByAcount(String account);

    void save(SysUser sysUser);
}
