package com.gzk.controller;

import com.gzk.pojo.Customer;
import com.gzk.service.CustomerService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("customer")
public class CustomerController {

    @Autowired
    @Qualifier("customerServiceImpl")
    private CustomerService customerService;

    //返回顾客登录页面
    @RequestMapping("/toCustLogin")
    public String toCustLogin(){
        return "customerLogin";
    }

    //判断用户登录
    @RequestMapping("/login")
    public String login(String username, String password, Model model){
        Customer customer = customerService.queryCustomerByName(username);

        if(customer == null) {
            model.addAttribute("error","用户名或密码错误！");
            return "customerLogin";
        }

        if (!customer.getPassword().equals(password)){
            model.addAttribute("error","用户名或密码错误！");
            return "customerLogin";
        }
        return "redirect:/book/allBookCust";
    }

    //返回用户注册页面
    @RequestMapping("/toAddCustomer")
    public String toAddCustomer(){
        return "addCustomer";
    }

    //用户注册服务
    @RequestMapping("/addCustomer")
    public String addCustomer(Customer customer,String psw, Model model){

        if (!psw.equals(customer.getPassword())) {
            model.addAttribute("error", "两次密码不一致！");
            return "addCustomer";
        }
        if (customerService.queryCustomerByName(customer.getUsername()) != null){
            model.addAttribute("error", "用户名已存在！");
            return "addCustomer";
        }

        model.addAttribute("success","addsuccess");
        customerService.addCustomer(customer);
        return "customerLogin";
    }

    //跳到修改密码页面
    @RequestMapping("/toUpdateCustomer")
    public String toUpdateCustomer(){
        return "updateCustomer";
    }


    //修改密码服务
    @RequestMapping("/updateCustomer")
    public String updateCustomer(Customer customer, String password1, String psw,Model model){
        if (!customer.getPassword().equals(psw)){
            model.addAttribute("error","两次密码输入不一致");
            return "updateCustomer";
        }
        if (!customerService.queryCustomerByName(customer.getUsername()).getPassword().equals(password1)){
            model.addAttribute("error","用户名或原密码错误");
            return "updateCustomer";
        }
        model.addAttribute("success","uqdatesuccess");
        customerService.updateCustomer(customer);
        return "customerLogin";
    }
}
