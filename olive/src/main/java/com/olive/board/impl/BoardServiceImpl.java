package com.olive.board.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.olive.board.service.BoardService;
import com.olive.board.service.BoardVO;
import com.olive.member.service.MemberVO;
import com.olive.user.service.UserVO;

@Service("boardService")
public class BoardServiceImpl implements BoardService {
	@Autowired
	private BoardDAO boardDAO;

	@Override
	public void insertBoard(Map<String, String> boardMap) {
		System.out.println(">>> BoardServiceImpl.insertBoard()실행");
		boardDAO.insertBoard(boardMap);
	}

	@Override
	public void insertList(BoardVO vo) {
		System.out.println(">>> BoardServiceImpl.insertList()실행");
		boardDAO.insertList(vo);
	}

	@Override
	public void insertCard(BoardVO vo) {
		System.out.println(">>> BoardServiceImpl.insertCard()실행");
		boardDAO.insertCard(vo);
	}

	@Override
	public List<BoardVO> getBoard(MemberVO vo) {
		System.out.println(">>> BoardServiceImpl.getBoard()실행");
		return boardDAO.getBoard(vo);
	}

	@Override
	public List<BoardVO> getBoardList(UserVO vo) {
		System.out.println(">>> BoardServiceImpl.getBoardList()실행");
		return boardDAO.getBoardList(vo);
	}

	@Override
	public void updateTitle(BoardVO vo) {
		System.out.println(">>> BoardServiceImpl.updateTitle()실행");
		boardDAO.updateTitle(vo);
	}

	@Override
	public void updateArchive(BoardVO vo) {
		System.out.println(">>> BoardServiceImpl.updateArchive()실행");
		boardDAO.updateArchive(vo);
	}

	@Override
	public void deleteBoard(BoardVO vo) {
		System.out.println(">>> BoardServiceImpl.deleteBoard()실행");
		boardDAO.deleteBoard(vo);
	}

	@Override
	public BoardVO getNewBoard(MemberVO vo) {
		System.out.println(">>> BoardServiceImpl.getNewBoard()실행");
		return boardDAO.getNewBoard(vo);
	}

	@Override
	public void updateCardContent(BoardVO vo) {
		System.out.println(">>> BoardServiceImpl.updateCardContent()실행");
		boardDAO.updateCardContent(vo);
	}

	@Override
	public BoardVO getCard(String board_index) {
		System.out.println(">>> BoardServiceImpl.getCard()실행");
		return boardDAO.getCard(board_index);
	}

	@Override
	public void updateBoardContent(BoardVO vo) {
		System.out.println(">>> BoardServiceImpl.updateBoardContent()실행");
		boardDAO.updateBoardContent(vo);
	}

	@Override
	public void updateBoardColor(BoardVO vo) {
		System.out.println(">>> BoardServiceImpl.updateBoardColor()실행");
		boardDAO.updateBoardColor(vo);
	}

	@Override
	public void updateListOrder(Map<String, String> map) {
		System.out.println(">>> BoardServiceImpl.updateListOrder()실행");
		boardDAO.updateListOrder(map);
	}

	@Override
	public void updateOthersListOrderRight(Map<String, String> map) {
		System.out.println(">>> BoardServiceImpl.updateListOrder()실행");
		boardDAO.updateOthersListOrderRight(map);
	}

	@Override
	public void updateOthersListOrderLeft(Map<String, String> map) {
		System.out.println(">>> BoardServiceImpl.updateListOrder()실행");
		boardDAO.updateOthersListOrderLeft(map);
	}
	
	@Override
	public List<BoardVO> searchBoard(BoardVO vo) {
		System.out.println(">>> BoardServiceImpl.searchBoard()실행");
		return boardDAO.searchBoard(vo);
	}

	@Override
	public List<BoardVO> searchBoardAll(BoardVO vo) { 
		System.out.println(">>> BoardServiceImpl.searchBoardAll()실행");
		return boardDAO.searchBoardAll(vo);
	}

}
