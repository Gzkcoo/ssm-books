package com.gzk.controller;

import com.gzk.pojo.Admin;
import com.gzk.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/login")
public class AdminController {

    @Autowired
    @Qualifier("adminServiceImpl")
    private AdminService adminService;

    //判断管理员登录
    @RequestMapping( "/judge")
    public String judge(String username, String password, Model model) {
        Admin admin = adminService.queryAdminByName(username);

        if(admin == null) {
            model.addAttribute("error","用户名或密码错误！");
            return "adminLogin";
        }

        if (!admin.getPassword().equals(password)){
            model.addAttribute("error","用户名或密码错误！");
            return "adminLogin";
        }
        return "redirect:/book/allBook";
    }

    //转到管理员登录界面
    @RequestMapping("/adminLogin")
    public String adminLogin(){
        return "adminLogin";
    }

    //转到修改管理员密码页面
    @RequestMapping("/toUpdateAdmin")
    public String toUpdateAdmin(){
        return "updateAdmin";
    }

    //修改管理员密码服务
    @RequestMapping("/updateAdmin")
    public String updateAdmin(Admin admin,String password1, Model model){

        Admin admin1 = adminService.queryAdminByName(admin.getUsername());

        if(admin1 == null) {
            model.addAttribute("error","用户名或原密码错误！");
            return "updateAdmin";
        }

        if (!admin1.getPassword().equals(password1)){
            model.addAttribute("error","用户名或原密码错误！");
            return "updateAdmin";
        }

        adminService.updateAdmin(admin);
        model.addAttribute("success","success");
        return "adminLogin";

    }


}
