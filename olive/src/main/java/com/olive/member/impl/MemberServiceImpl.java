package com.olive.member.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.olive.member.service.MemberService;
import com.olive.member.service.MemberVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAO memberDAO;

	public MemberServiceImpl() {
		System.out.println(">> MemberServiceImpl 객체 생성");
	}
	
	/*
	 * 20190709 이광호
	 * 맴버 추가 기능 추가
	 */
	@Override
	public void insertMember(MemberVO vo) {
		System.out.println(">>> BoardServiceImpl.insertMember()실행");
		memberDAO.insertMember(vo);
	}

	@Override
	public void deleteMember(MemberVO vo) {
		memberDAO.deleteMember(vo);
	}

	@Override
	public void updateMember(MemberVO vo) {
		memberDAO.updateMember(vo);
	}
	

	@Override
	public List<MemberVO> getMemberList(String board_index) {
		return memberDAO.getMemberList(board_index);
	}

	@Override
	   public MemberVO getMember(MemberVO vo) {
	      return memberDAO.getMember(vo);
	   }
}
