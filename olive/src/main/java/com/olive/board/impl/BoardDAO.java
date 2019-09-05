package com.olive.board.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.olive.board.service.BoardVO;
import com.olive.member.service.MemberVO;
import com.olive.user.service.UserVO;

@Repository("boardDAO")
public class BoardDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	public BoardDAO() {
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
		System.out.println("vo : " + vo);
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

	/*
	 * 2019.07.15 보드 설명 추가 유희진
	 */
	public void updateBoardContent(BoardVO vo) {
		System.out.println("===> Mybatis로 updateBoardContent() 실행");
		mybatis.update("BoardDAO.updateBoardContent", vo);
	}

	/*
	 * 2019.07.16 보드 배경색 변경 유희진
	 */
	public void updateBoardColor(BoardVO vo) {
		System.out.println("===> Mybatis로 updateBoardColor() 실행");
		mybatis.update("BoardDAO.updateBoardColor", vo);
	}
	/*
	 * 2019.07.17 리스트 업데이트 이광호
	 */
	public void updateListOrder(Map<String, String> map) {
		System.out.println("===> Mybatis로 updateListOrder() 실행");
		mybatis.update("BoardDAO.updateListOrder", map);
	}

	public void updateOthersListOrderRight(Map<String, String> map) {
		System.out.println("===> Mybatis로 updateListOrder() 실행");
		mybatis.update("BoardDAO.updateOthersListOrderRight", map);
	}

	public void updateOthersListOrderLeft(Map<String, String> map) {
		System.out.println("===> Mybatis로 updateListOrder() 실행");
		mybatis.update("BoardDAO.updateOthersListOrderLeft", map);
	}
	
	/*
    * 2019.07.17 보드 내 검색 김다희
    */
	public List<BoardVO> searchBoard(BoardVO vo) {
		System.out.println("===> Mybatis로 searchBoard() 실행");
		return mybatis.selectList("BoardDAO.searchBoard", vo);
	}
   
	/*
	 * 2019.07.18 보드 전체 검색 김다희
	 */
	public List<BoardVO> searchBoardAll(BoardVO vo) {
		System.out.println("===> Mybatis로 searchBoardAll() 실행");
		return mybatis.selectList("BoardDAO.searchBoardAll", vo);
	}

}