package com.lol.lol.web;

import com.lol.lol.dao.HeroDao;
import com.lol.lol.entity.country;
import com.lol.lol.entity.hero;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class HeroController {
    @Autowired
    HeroDao hdao;

    @RequestMapping("heroList")
    public String heroList(Model m){
        List<hero> all = hdao.findAll();
        m.addAttribute("data",all);
        return "admin/heroList";
    }

    @RequestMapping("heroDelete")
    public String heroDelete(int heroid){
        hdao.deleteById(heroid);
        return "redirect:heroList";
    }

    @RequestMapping("heroEdit")
    public String heroEdit(int heroid, Model m){
        hero one = hdao.getOne(heroid);
        m.addAttribute("one",one);
        return "admin/heroEdit";
    }

    @RequestMapping("heroUpdate")
    public String heroUpdate(hero h){
        hdao.save(h);
        return "redirect:heroList";
    }

    @RequestMapping("heroAdd")
    public String heroAdd(){
        return "admin/heroAdd";
    }

    @RequestMapping("heroInsert")
    public String heroInsert(hero h){
        hdao.save(h);
        return "redirect:heroList";
    }

    @RequestMapping("heroDetail")
    public String heroDetail(int heroid,Model m){
        hero one = hdao.getOne(heroid);
        m.addAttribute("one",one);
        return "admin/heroDetail";
    }

}
