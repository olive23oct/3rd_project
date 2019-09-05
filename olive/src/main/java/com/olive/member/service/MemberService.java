package com.olive.member.service;

import java.util.List;

public interface MemberService {
	// CRUD 기능 구현 메소드 정의
	void insertMember(MemberVO vo); // 보드 멤버 추가

	void deleteMember(MemberVO vo); // 보드 멤버 삭제

	void updateMember(MemberVO vo); // 보드 멤버 수정

	List<MemberVO> getMemberList(String board_index);
	
	MemberVO getMember(MemberVO vo);
}
