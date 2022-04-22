package com.cpt202.leisure_town.service;

import com.cpt202.leisure_town.dao.pojo.SysUser;
import com.cpt202.leisure_town.vo.Result;
import com.cpt202.leisure_town.vo.params.LoginParam;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Transactional
public interface LoginService {

    SysUser checkToken(String token);

    Result login(LoginParam loginParam);

    Result logout(String token);

    Result register(LoginParam loginParam);
}
