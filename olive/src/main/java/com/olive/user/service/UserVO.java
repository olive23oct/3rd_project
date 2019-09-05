package com.olive.user.service;

public class UserVO {
	private String user_id;
	private String email;
	private String password;
	private String name;
	private String image;

	public UserVO() {
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	@Override
	public String toString() {
		return "UserVO [user_id=" + user_id + ", email=" + email + ", password=" + password + ", name=" + name
				+ ", image=" + image + "]";
	}

}