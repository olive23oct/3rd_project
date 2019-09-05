package com.olive.user.impl;

import org.springframework.stereotype.Service;

import com.olive.user.service.UserService;
import com.olive.user.service.UserVO;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO userDAO;

	public UserServiceImpl() {
		System.out.println(">> UserServiceImpl 객체 생성");
	}

	@Override
	public void insertUser(UserVO vo) {
		userDAO.insertUser(vo);
	}

	@Override
	public void updateUser(UserVO vo) {
		userDAO.updateUser(vo);
	}

	@Override
	public UserVO logIn(UserVO vo) {
		return userDAO.logIn(vo);
	}

	@Override
	public UserVO checkEmail(UserVO vo) {
		return userDAO.checkEmail(vo);
	}

	@Override
	public UserVO getUser(UserVO vo) {
		return userDAO.getUser(vo);

	}

	/*
	 * 20190709 이광호
	 * 유저검색기능 추가
	 */
	@Override
	public List<UserVO> searchUser(UserVO vo) {
		System.out.println(">>> BoardServiceImpl.searchUser()실행");
		return userDAO.searchUser(vo);
	}

}