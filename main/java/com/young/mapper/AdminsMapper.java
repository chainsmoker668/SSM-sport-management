package com.young.mapper;

import com.young.pojo.Admins;
import org.apache.ibatis.annotations.Param;

public interface AdminsMapper {
    //登陆(账号查询管理员)
    Admins queryAdmByAc(@Param("admAccount") String admAccount);
    //修改密码
    int updateAdm(Admins admins);
}
