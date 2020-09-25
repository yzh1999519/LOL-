package com.lol.lol.web;

import com.lol.lol.dao.SkillDao;
import com.lol.lol.entity.skill;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class SkillController {
    @Autowired
    SkillDao sdao;

    @RequestMapping("/skillDetail")
    public String skillDetail(int skillid,Model m){
        skill one = sdao.getOne(skillid);
        m.addAttribute("one",one);
        return "admin/skillDetail";
    }
    @RequestMapping("/skillEdit")
    public String skillEdit(int skillid,Model m){
        skill one = sdao.getOne(skillid);
        m.addAttribute("one",one);
        return "admin/skillEdit";
    }

    @RequestMapping("/skillUpdate")
    public String skillUpdate(skill s){
        sdao.save(s);
        return "redirect:skillList";

    }

    @RequestMapping("/skillDelete")
    public String skillDelete(int skillid){
        sdao.deleteById(skillid);
        return "redirect:skillList";
    }
    @RequestMapping("/skillAdd")
    public String skillAdd(){
        return "admin/skillAdd";
    }
    @RequestMapping("skillInsert")
    public String skillInsert(skill s){
        sdao.save(s);
        return "redirect:skillList";

    }
    @RequestMapping("/skillList")
    public String skillList(Model m){
        List<skill> all = sdao.findAll();
        m.addAttribute("data",all);
        return "admin/skillList";

    }
}
