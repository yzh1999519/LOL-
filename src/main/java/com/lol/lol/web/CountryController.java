package com.lol.lol.web;

import com.lol.lol.dao.CountryDao;
import com.lol.lol.entity.country;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class CountryController {
    @Autowired
    CountryDao cdao;

    @RequestMapping("countryList")
    public String countryList(Model m){
        List<country> all = cdao.findAll();
        m.addAttribute("data",all);
        return "admin/countryList";
    }

    @RequestMapping("countryDelete")
    public String countryDelete(int countryid){
        cdao.deleteById(countryid);
        return "redirect:countryList";
    }

    @RequestMapping("countryEdit")
    public String countryEdit(int countryid,Model m){
        country one = cdao.getOne(countryid);
        m.addAttribute("one",one);
        return "admin/countryEdit";
    }

    @RequestMapping("countryUpdate")
    public String countryUpdate(country c){
        cdao.save(c);
        return "redirect:countryList";
    }

    @RequestMapping("countryAdd")
    public String countryAdd(){
        return "admin/countryAdd";
    }

    @RequestMapping("countryInsert")
    public String countryInsert(country c){
        cdao.save(c);
        return "redirect:countryList";
    }

    @RequestMapping("countryDetail")
    public String countryDetail(int countryid,Model m){
        country one = cdao.getOne(countryid);
        m.addAttribute("one",one);
        return "admin/countryDetail";
    }


}
