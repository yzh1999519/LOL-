package com.lol.lol.dao;

import com.lol.lol.entity.country;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CountryDao extends JpaRepository<country,Integer> {
}
