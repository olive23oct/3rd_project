package com.olive.user.service;

import java.util.List;

public interface UserService {

	// CRUD 기능 구현 메소드 정의
	void insertUser(UserVO vo); // 회원가입

	void updateUser(UserVO vo); // 회원정보 수정

	UserVO logIn(UserVO vo); // 회원정보 조회

	UserVO checkEmail(UserVO vo); // 회원가입시 이메일체크

	UserVO getUser(UserVO vo);
	/*
	 * 20190709 이광호
	 * 유저검색기능 추가
	 */
	List<UserVO> searchUser(UserVO vo);//회원 리스트 가져오기
}