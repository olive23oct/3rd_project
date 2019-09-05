package com.olive.board.service;

import java.util.List;
import java.util.Map;

import com.olive.member.service.MemberVO;
import com.olive.user.service.UserVO;

public interface BoardService {
	// CRUD 기능 구현 메소드 정의
	void insertBoard(Map<String, String> boardMap); // 보드 추가

	void insertList(BoardVO vo); // 리스트 추가

	void insertCard(BoardVO vo); // 카드추가

	void updateTitle(BoardVO vo); // 리스트 수정

	List<BoardVO> getBoard(MemberVO vo); // 자신이 속한보드 조회

	List<BoardVO> getBoardList(UserVO vo); // 자신이 속한 보드 리스트 조회

	void updateCardContent(BoardVO vo);

	BoardVO getCard(String board_index); // 카드 내용 가져오기

	BoardVO getNewBoard(MemberVO vo);

	void updateArchive(BoardVO vo);// 보드 삭제전 아카이브로 보내기(수정처리)

	void deleteBoard(BoardVO vo); // 보드 삭제
	
	void updateBoardColor(BoardVO vo); //보드 배경 색
	
	void updateBoardContent(BoardVO vo);

	void updateListOrder(Map<String, String> map);

	void updateOthersListOrderRight(Map<String, String> map);

	void updateOthersListOrderLeft(Map<String, String> map);
	
	List<BoardVO> searchBoard(BoardVO vo);  //보드 내 검색
	
	List<BoardVO> searchBoardAll(BoardVO vo);  //보드 전체 검색


}
