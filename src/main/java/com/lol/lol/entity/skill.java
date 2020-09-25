package com.lol.lol.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.Date;
@Entity
public class skill {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer skillid;	//技能id 
	private Integer heroid;	//英雄id 
	private String skilltype;	//技能类型 
	private String skillname;	//技能名字 
	private String skillcontent;	//技能介绍
	private String skillimg;

	public skill (){

	}

	public String getSkillimg() {
		return skillimg;
	}

	public void setSkillimg(String skillimg) {
		this.skillimg = skillimg;
	}

	public void setSkillid(Integer skillid){
		this.skillid=skillid;
	}
	public Integer getSkillid(){
		return skillid;
	}

	public void setHeroid(Integer heroid){
		this.heroid=heroid;
	}
	public Integer getHeroid(){
		return heroid;
	}

	public void setSkilltype(String skilltype){
		this.skilltype=skilltype;
	}
	public String getSkilltype(){
		return skilltype;
	}

	public void setSkillname(String skillname){
		this.skillname=skillname;
	}
	public String getSkillname(){
		return skillname;
	}

	public void setSkillcontent(String skillcontent){
		this.skillcontent=skillcontent;
	}
	public String getSkillcontent(){
		return skillcontent;
	}

	@Override
	public String toString() {
		return "skill{" +
				"skillid=" + skillid +
				", heroid=" + heroid +
				", skilltype='" + skilltype + '\'' +
				", skillname='" + skillname + '\'' +
				", skillcontent='" + skillcontent + '\'' +
				", skillimg='" + skillimg + '\'' +
				'}';
	}
}

