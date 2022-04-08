package com.young.service;

import com.young.mapper.AdminsMapper;
import com.young.pojo.Admins;

public class AdminsServiceImpl implements AdminsService{

    private AdminsMapper adminsMapper;

    public void setAdminsMapper(AdminsMapper adminsMapper) {
        this.adminsMapper = adminsMapper;
    }

    @Override
    public Admins queryAdmByAc(String account) {
        return adminsMapper.queryAdmByAc(account);
    }

    @Override
    public int updateAdm(Admins admins) {
        return adminsMapper.updateAdm(admins);
    }
}
