package com.gzk.service;

import com.gzk.pojo.Admin;

public interface AdminService {

    //修改密码
    int updateAdmin(Admin admin);

    Admin queryAdminByName(String username);
}
