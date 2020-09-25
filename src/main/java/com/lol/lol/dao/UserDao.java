package com.lol.lol.dao;

import com.lol.lol.entity.user;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserDao extends JpaRepository<user,Integer> {
    List<user> findByUsernameEqualsAndUserpasswordEquals(String username,String userpassword);
}
