package com.cpt202.leisure_town.vo;

public enum ErrorCode {

    PARAMS_ERROR(10001,"参数有误"),
    TOKEN_ERROR(10003,"token不合法"),
    ACCOUNT_PWD_NOT_EXIST(10002,"用户名或密码不存在"),
    Account_Exist(10004, "Account already exist"),
    NO_PERMISSION(70001,"无访问权限"),
    SESSION_TIME_OUT(90001,"会话超时"),
    NO_LOGIN(90002,"未登录"),;

    private int code;
    private String msg;

    ErrorCode(int code, String msg){
        this.code = code;
        this.msg = msg;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }
}
