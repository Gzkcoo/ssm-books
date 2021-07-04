package com.gzk.dao;

import com.gzk.pojo.Admin;
import com.gzk.pojo.Books;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AdminMapper {


    //修改密码
    int updateAdmin(Admin admin);

    //查询byid
    Admin queryAdminById(int id);

    //查询所有
    List<Admin> queryAllAdmin();

    Admin queryAdminByName(String username);
}
