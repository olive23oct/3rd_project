package com.olive.member.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.olive.member.service.MemberVO;

@Repository("MemberDAO")
public class MemberDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	public MemberDAO() {
		System.out.println(">> MemberDAO 객체 생성");

	}

	public void deleteMember(MemberVO vo) {
		System.out.println("===> deleteMember() 실행");
		mybatis.delete("MemberDAO.deleteMember", vo);
	}

	public void updateMember(MemberVO vo) {
		System.out.println("===> updateMember() 실행");
		mybatis.update("MemberDAO.updateMember", vo);
	}



	/*
	 * 20190709 이광호
	 * 맴버 추가 기능 추가
	 */
	public void insertMember(MemberVO vo) {
		System.out.println("===> Mybatis로 insertMember() 실행");
		mybatis.selectList("MemberDAO.insertMember", vo);

	}

	public List<MemberVO> getMemberList(String board_index) {
		System.out.println("===> getMemberList() 실행");
		return mybatis.selectList("MemberDAO.getMemberList", board_index);
	}
	
	public MemberVO getMember(MemberVO vo) {
		System.out.println("===> getMemberList() 실행");
		return mybatis.selectOne("MemberDAO.getMember", vo);
	}

}
