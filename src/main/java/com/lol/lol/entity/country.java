package com.lol.lol.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.Date;
@Entity
public class country {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer countryid;	//国家id 
	private String countryname;	//国家名字 
	private String countryenvironment;	//国家环境 
	private String countryintroduce;	//国家介绍
	private String countryimg;

	public country (){

	}

	public String getCountryimg() {
		return countryimg;
	}

	public void setCountryimg(String countryimg) {
		this.countryimg = countryimg;
	}

	public void setCountryid(Integer countryid){
		this.countryid=countryid;
	}
	public Integer getCountryid(){
		return countryid;
	}

	public void setCountryname(String countryname){
		this.countryname=countryname;
	}
	public String getCountryname(){
		return countryname;
	}

	public void setCountryenvironment(String countryenvironment){
		this.countryenvironment=countryenvironment;
	}
	public String getCountryenvironment(){
		return countryenvironment;
	}

	public void setCountryintroduce(String countryintroduce){
		this.countryintroduce=countryintroduce;
	}
	public String getCountryintroduce(){
		return countryintroduce;
	}

	@Override
	public String toString() {
		return "country{" +
				"countryid=" + countryid +
				", countryname='" + countryname + '\'' +
				", countryenvironment='" + countryenvironment + '\'' +
				", countryintroduce='" + countryintroduce + '\'' +
				", countryimg='" + countryimg + '\'' +
				'}';
	}
}

