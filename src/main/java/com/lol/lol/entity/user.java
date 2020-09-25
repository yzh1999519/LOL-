package com.lol.lol.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.Date;
@Entity
public class user {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer userid;	//用户id 
	private String username;	//用户名 
	private String userpassword;	//用户密码 
	private String usercontent;	//个人介绍 

	public user (){

	}

	public void setUserid(Integer userid){
		this.userid=userid;
	}
	public Integer getUserid(){
		return userid;
	}

	public void setUsername(String username){
		this.username=username;
	}
	public String getUsername(){
		return username;
	}

	public void setUserpassword(String userpassword){
		this.userpassword=userpassword;
	}
	public String getUserpassword(){
		return userpassword;
	}

	public void setUsercontent(String usercontent){
		this.usercontent=usercontent;
	}
	public String getUsercontent(){
		return usercontent;
	}

	@Override
	public String toString(){
		return " user [userid=" + userid+ " , username=" + username+ " , userpassword=" + userpassword+ " , usercontent=" + usercontent+"]";
	}

}

