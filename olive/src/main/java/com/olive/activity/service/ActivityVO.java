package com.olive.activity.service;

import java.sql.Date;

public class ActivityVO {
	private String board_index;
	private String user_id;
	private String activiy_id;
	private String action;
	private Date reg_date;
	
	public String getBoard_index() {
		return board_index;
	}
	public void setBoard_index(String board_index) {
		this.board_index = board_index;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getActiviy_id() {
		return activiy_id;
	}
	public void setActiviy_id(String activiy_id) {
		this.activiy_id = activiy_id;
	}
	public String getAction() {
		return action;
	}
	public void setAction(String action) {
		this.action = action;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	
	@Override
	public String toString() {
		return "ActivityVO [board_index=" + board_index + ", user_id=" + user_id + ", activiy_id=" + activiy_id
				+ ", action=" + action + ", reg_date=" + reg_date + "]";
	}
	
	
}
