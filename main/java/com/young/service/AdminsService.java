package com.young.service;

import com.young.pojo.Admins;
import org.apache.ibatis.annotations.Param;

public interface AdminsService {
    Admins queryAdmByAc(String account);

    int updateAdm(Admins admins);
}
