package com.javaclass.domain;

import java.util.Date;

public class UserVO {
	
	// 멤버변수 선언 (***** 변수명이 중요 )
	private String userEmail;
	private String userPassword;
	private String userName;
	private String userBirth;
	private String userTel;
	private Date userCreateDate;
	
	
	
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserBirth() {
		return userBirth;
	}
	public void setUserBirth(String userBirth) {
		this.userBirth = userBirth;
	}
	public String getUserTel() {
		return userTel;
	}
	public void setUserTel(String userTel) {
		this.userTel = userTel;
	}
	
	
	public Date getUserCreateDate() {
		return userCreateDate;
	}
	public void setUserCreateDate(Date userCreateDate) {
		this.userCreateDate = userCreateDate;
	}
	@Override
	public String toString() {
		return "UserVO [userEmail=" + userEmail + ", userPassword=" + userPassword + ", userName=" + userName
				+ ", userBirth=" + userBirth + ", userTel=" + userTel + ", userCreateDate=" + userCreateDate + "]";
	}
	
	}
