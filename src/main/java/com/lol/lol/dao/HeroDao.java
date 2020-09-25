package com.lol.lol.dao;

import com.lol.lol.entity.hero;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface HeroDao extends JpaRepository<hero,Integer> {
    List<hero> findByCountryidEquals(int countryid);
}
