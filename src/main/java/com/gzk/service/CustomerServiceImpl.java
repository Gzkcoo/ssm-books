package com.gzk.service;

import com.gzk.dao.CustomerMapper;
import com.gzk.pojo.Customer;

import java.util.List;

public class CustomerServiceImpl implements CustomerService{

    private CustomerMapper customerMapper;

    public void setCustomerMapper(CustomerMapper customerMapper) {
        this.customerMapper = customerMapper;
    }

    @Override
    public int addCustomer(Customer customer) {
        return customerMapper.addCustomer(customer);
    }

    @Override
    public int updateCustomer(Customer customer) {
        return customerMapper.updateCustomer(customer);
    }

    @Override
    public Customer queryCustomerById(int id) {
        return customerMapper.queryCustomerById(id);
    }

    @Override
    public List<Customer> queryAllCustomer() {
        return customerMapper.queryAllCustomer();
    }

    @Override
    public Customer queryCustomerByName(String username) {
        return customerMapper.queryCustomerByName(username);
    }
}
