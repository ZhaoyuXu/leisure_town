package com.cpt202.leisure_town.service;

import com.cpt202.leisure_town.dao.pojo.SysUser;
import org.springframework.stereotype.Service;

@Service
public interface UserService {

    SysUser findUserById(Long userId);
}
