package com.lol.lol.web;

import com.lol.lol.dao.UserDao;
import com.lol.lol.entity.user;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class UserController {
    @Autowired
    UserDao udao;

    @RequestMapping("userList")
    public String userList(Model m){
        List<user> all = udao.findAll();
        m.addAttribute("data",all);
        return "admin/userList";
    }
    @RequestMapping("userAdd")
    public String userAdd(){
        return "admin/userAdd";
    }
    @RequestMapping("userInsert")
    public String userInsert(user u){
        udao.save(u);
        return "redirect:userList";
    }
    @RequestMapping("userDelete")
    public String userDelete(int userid){
        udao.deleteById(userid);
        return "redirect:userList";
    }
    @RequestMapping("userEdit")
    public String userEdit(int userid,Model m){
        user one = udao.getOne(userid);
        m.addAttribute("one",one);
        return "admin/userEdit";
    }
    @RequestMapping("userUpdate")
    public String userUpdate(user u){
        udao.save(u);
        return "redirect:userList";
    }
    @RequestMapping("userDetail")
    public String userDetail(int userid,Model m){
        user one = udao.getOne(userid);
        m.addAttribute("one",one);
        return "admin/userDetail";

    }

}
