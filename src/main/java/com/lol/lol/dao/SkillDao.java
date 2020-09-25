package com.lol.lol.dao;

import com.lol.lol.entity.skill;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SkillDao extends JpaRepository<skill,Integer> {
    List<skill> findByHeroidEquals(int heroid);
}
