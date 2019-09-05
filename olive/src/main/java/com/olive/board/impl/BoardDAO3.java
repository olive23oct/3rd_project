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
public class BoardDAO3 {

	@Autowired
	private SqlSessionTemplate mybatis;

	public BoardDAO3() {
		System.out.println(">> BoardDAO 객체 생성");
	}

	public void insertBoard(Map<String, String> boardMap) {
		System.out.println("===> Mybatis로 insertBoard() 실행");
		mybatis.insert("BoardDAO.insertBoard", boardMap);
	}

	public void insertList(BoardVO vo) {
		System.out.println("===> Mybatis로 insertList() 실행");
		mybatis.insert("BoardDAO.insertList", vo);
	}

	public void insertCard(BoardVO vo) {
		System.out.println("===> Mybatis로 insertCard() 실행");
		mybatis.insert("BoardDAO.insertCard", vo);
	}

	public List<BoardVO> getBoard(MemberVO vo) {
		System.out.println("===> Mybatis로 getBoard() 실행");
		System.out.println("vo : " + vo);
		return mybatis.selectList("BoardDAO.getBoard", vo);
	}

	public List<BoardVO> getBoardList(UserVO vo) {
		System.out.println("===> Mybatis로 getBoardList() 실행");
		System.out.println("vo : " + vo);
		// vo.setUser_id("user1");
		return mybatis.selectList("BoardDAO.getBoardList", vo);
	}

	public void updateTitle(BoardVO vo) { // 리스트 제목 수정
		System.out.println("===> Mybatis로 updateTilte() 실행");
		mybatis.update("BoardDAO.updateTitle", vo);
	}

	/*
	 * 2019.07.05 아카이브로 보내기 이광호
	 */
	public void updateArchive(BoardVO vo) {
		System.out.println("===> Mybatis로 updateArchive() 실행");
		mybatis.update("BoardDAO.updateArchive", vo);
	}

	public BoardVO getNewBoard(MemberVO vo) {
		System.out.println("===> Mybatis로 getNewBoard() 실행");
		System.out.println("vo : " + vo);
		return mybatis.selectOne("BoardDAO.getNewBoard", vo);
	}

	public void updateCardContent(BoardVO vo) {
		System.out.println("===> Mybatis로 updateCardContent() 실행");
		mybatis.update("BoardDAO.updateCardContent", vo);
	}

	public BoardVO getCard(String board_index) {
		System.out.println("===> Mybatis로 getCard() 실행");
		return mybatis.selectOne("BoardDAO.getCard", board_index);
	}

	public void deleteBoard(BoardVO vo) {
		System.out.println("===> Mybatis로 insertCardContent() 실행");
		mybatis.update("BoardDAO.deleteBoard", vo);
	}

}
