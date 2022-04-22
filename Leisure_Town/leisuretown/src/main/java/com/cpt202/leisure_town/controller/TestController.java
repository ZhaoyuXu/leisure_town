package com.cpt202.leisure_town.controller;

import com.cpt202.leisure_town.dao.pojo.SysUser;
import com.cpt202.leisure_town.utils.UserThreadLocal;
import com.cpt202.leisure_town.vo.Result;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("test")
public class TestController {
    @RequestMapping
    public Result test(){
        //threadLocal save the user information
        SysUser sysUser = UserThreadLocal.get();
        System.out.println(sysUser);
        return Result.success(null);
    }
}
