package com.lol.lol.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
@Entity
public class hero {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer heroid;	//英雄编码 
	private Integer countryid;	//英雄国家编码 
	private String heroname;	//英雄姓名 
	private String heroorientation;	//英雄定位 
	private String herocontent;	//英雄介绍 
	private String countryname;	//英雄国家名字
	private String heroimg;

	public hero (){

	}

	public String getHeroimg() {
		return heroimg;
	}

	public void setHeroimg(String heroimg) {
		this.heroimg = heroimg;
	}

	public void setHeroid(Integer heroid){
		this.heroid=heroid;
	}
	public Integer getHeroid(){
		return heroid;
	}

	public void setCountryid(Integer countryid){
		this.countryid=countryid;
	}
	public Integer getCountryid(){
		return countryid;
	}

	public void setHeroname(String heroname){
		this.heroname=heroname;
	}
	public String getHeroname(){
		return heroname;
	}

	public void setHeroorientation(String heroorientation){
		this.heroorientation=heroorientation;
	}
	public String getHeroorientation(){
		return heroorientation;
	}

	public void setHerocontent(String herocontent){
		this.herocontent=herocontent;
	}
	public String getHerocontent(){
		return herocontent;
	}

	public void setCountryname(String countryname){
		this.countryname=countryname;
	}
	public String getCountryname(){
		return countryname;
	}

	@Override
	public String toString() {
		return "hero{" +
				"heroid=" + heroid +
				", countryid=" + countryid +
				", heroname='" + heroname + '\'' +
				", heroorientation='" + heroorientation + '\'' +
				", herocontent='" + herocontent + '\'' +
				", countryname='" + countryname + '\'' +
				", heroimg='" + heroimg + '\'' +
				'}';
	}
}

