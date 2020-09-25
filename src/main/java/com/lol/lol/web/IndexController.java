package com.lol.lol.web;

import com.lol.lol.dao.CountryDao;
import com.lol.lol.dao.HeroDao;
import com.lol.lol.dao.SkillDao;
import com.lol.lol.entity.country;
import com.lol.lol.entity.hero;
import com.lol.lol.entity.skill;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class IndexController {
    @Autowired
    CountryDao cdao;
    @Autowired
    HeroDao hdao;
    @Autowired
    SkillDao sdao;

    @RequestMapping("/index")
    public String index(Model m){
        List<country> all = cdao.findAll();
        m.addAttribute("data",all);

        List<hero> hall = hdao.findAll();
        hall.subList(0,5);

        return "index";
    }

    @RequestMapping("/heroLiebiao")
    public String heroLiebiao(Model m){
        List<hero> all = hdao.findAll();
        m.addAttribute("hdata",all);


        return "heroLiebiao";
    }

    @RequestMapping("countryLiebiao")
    public String countryLiebiao(Model m){
        List<country> all = cdao.findAll();
        m.addAttribute("cdata",all);
        return "countryLiebiao";
    }

    @RequestMapping("herocountryLiebiao")
    public String herocountryLiebiao(int countryid,Model m){
        country one = cdao.getOne(countryid);
        m.addAttribute("one",one);

        List<hero> all = hdao.findByCountryidEquals(countryid);
        m.addAttribute("hdata",all);
        return "herocountryLiebiao";
    }

    @RequestMapping("heroXiangqing")
    public String heroXiangqing(int heroid, Model m, Model s){
        hero one = hdao.getOne(heroid);
        m.addAttribute("obj",one);
        List<skill> sall = sdao.findByHeroidEquals(heroid);
        s.addAttribute("obj1",sall);
        return "heroXiangqing";
    }

    @RequestMapping("skillXiangqing")
    public String skillXiangqing(int heroid,Model m){
        skill one = sdao.getOne(heroid);
        m.addAttribute("obj",one);

        List<skill> all = sdao.findByHeroidEquals(heroid);
        m.addAttribute("sdata",all);
        return "skillXiangqing";
    }

}
