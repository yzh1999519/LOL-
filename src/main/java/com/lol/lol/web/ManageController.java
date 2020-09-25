package com.lol.lol.web;

import com.lol.lol.dao.UserDao;
import com.lol.lol.entity.user;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class ManageController {
    @Autowired
    UserDao udao;




    @RequestMapping("/adminloginout")  //退出登录
    public String adminloginout(HttpSession session){
        session.removeAttribute("loginuser");  //删除登录信息
        return "admin/login";
    }


    @RequestMapping("/userloginSubmit")  //登录验证
    public String userloginSubmit(String username, String password, HttpSession session){
        List<user> all = udao.findByUsernameEqualsAndUserpasswordEquals(username, password);
        if(all.size()>0){  //登录成功
            user u = all.get(0);//获取集合中第一条数据
            session.setAttribute("loginuser",u); //登录信息放入session
            return "redirect:adminindex";  //登录成功进入后台首页
        }else{    //登录失败
            return "admin/login";
        }
    }

    @RequestMapping("/adminlogin")
    public String adminlogin(){
        return "admin/login";
    }

    @RequestMapping("adminindex")
    public String adminindex(){
        return "admin/adminindex";
    }
}
