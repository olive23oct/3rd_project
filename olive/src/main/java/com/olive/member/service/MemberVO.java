package com.olive.member.service;

public class MemberVO {

	private String user_id;
	private String board_index;
	private String admin;

	// 인서트 조건용 필드 추가
	private String insertCondition;

	public MemberVO() {
	}

	
	public String getUser_id() {
		return user_id;
	}


	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}


	public String getBoard_index() {
		return board_index;
	}


	public void setBoard_index(String board_index) {
		this.board_index = board_index;
	}


	public String getAdmin() {
		return admin;
	}


	public void setAdmin(String admin) {
		this.admin = admin;
	}


	public String getInsertCondition() {
		return insertCondition;
	}


	public void setInsertCondition(String insertCondition) {
		this.insertCondition = insertCondition;
	}


	@Override
	public String toString() {
		return "MemberVO [user_id=" + user_id + ", board_index=" + board_index + ", admin=" + admin
				+ ", insertCondition=" + insertCondition + "]";
	}

}
