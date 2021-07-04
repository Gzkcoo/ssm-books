package com.gzk.dao;

import com.gzk.pojo.Admin;
import com.gzk.pojo.Books;
import com.gzk.pojo.Customer;

import java.util.List;

public interface CustomerMapper {

    //注册用户
    int addCustomer(Customer customer);

    //修改密码
    int updateCustomer(Customer customer);

    //查询byid
    Customer queryCustomerById(int id);

    //查询所有
    List<Customer> queryAllCustomer();

    Customer queryCustomerByName(String username);
}
