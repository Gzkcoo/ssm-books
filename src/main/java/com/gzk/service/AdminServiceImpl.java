package com.gzk.service;

import com.gzk.dao.AdminMapper;
import com.gzk.pojo.Admin;

import java.util.List;

public class AdminServiceImpl implements AdminService {

    private AdminMapper adminMapper;

    public void setAdminMapper(AdminMapper adminMapper) {
        this.adminMapper = adminMapper;
    }

    @Override
    public int updateAdmin(Admin admin) {
        return adminMapper.updateAdmin(admin);
    }

    @Override
    public Admin queryAdminByName(String username) {
        return adminMapper.queryAdminByName(username);
    }
}
