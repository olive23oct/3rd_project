package com.olive.board.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.olive.board.service.BoardVO;
import com.olive.member.service.MemberVO;
import com.olive.user.service.UserVO;

//@Repository("boardDAO")
public class BoardDAO2 {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public BoardDAO2() {
		System.out.println(">> BoardDAO 객체 생성");
	}
	public List<BoardVO> getBoard(BoardVO vo) {
		System.out.println("===> Mybatis로 getBoard() 실행");
		System.out.println("vo : " + vo);
		return mybatis.selectList("BoardDAO.getBoard", vo);
	}
	
	public List<BoardVO> getBoardList(UserVO vo) {
		System.out.println("===> Mybatis로 getBoardList() 실행");
		System.out.println("vo : " + vo);
		//vo.setUser_id("user1");
		return mybatis.selectList("BoardDAO.getBoardList", vo);
	}	
	
	public void insertBoard(Map<String, String> boardMap) {
		System.out.println("===> Mybatis로 insertBoard() 실행");
		System.out.println("boardMap : " + boardMap);
		mybatis.insert("BoardDAO.insertBoard", boardMap);
	}
	
	public List<BoardVO> getListList(BoardVO vo) {
		System.out.println("===> Mybatis로 getListList() 실행");
		System.out.println("vo : " + vo);
		//vo.setUser_id("user1");
		return mybatis.selectList("BoardDAO.getListList", vo);
	}
	public void insertMember(MemberVO vo) {
		System.out.println("===> Mybatis로 insertMember() 실행");
		mybatis.insert("MemberDAO.insertMember", vo);
	}
	//글수정 20190704 광호
	public void updateTitle(BoardVO vo) {
		System.out.println("===> Mybatis로 updateBoard() 실행");
		mybatis.update("BoardDAO.updateTitle", vo);
	}
}
