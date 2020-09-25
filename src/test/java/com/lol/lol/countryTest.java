package com.lol.lol;

import com.lol.lol.dao.CountryDao;
import com.lol.lol.entity.country;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class countryTest{
    @Autowired
    CountryDao cdao;

    @Test
    void search(){
        country one = cdao.getOne(1);
        System.out.println("one = " + one);
    }




}
