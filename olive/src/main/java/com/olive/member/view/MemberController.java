package com.olive.member.view;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.olive.member.service.MemberService;
import com.olive.member.service.MemberVO;
import com.olive.user.service.UserVO;

@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	/*
	 * 20190709 이광호
	 * 맴버 추가 기능 추가
	 */
	@RequestMapping(value = "/insertMember.do") // 보드 멤버 가입
	public String insertMember(MemberVO vo) {
		String board_index = vo.getBoard_index();
		vo.setInsertCondition("addMember");

		System.out.println("insert될 vo: " + vo);
		memberService.insertMember(vo);
		return "redirect:getBoard.do?board_index="+board_index;
	}

	@RequestMapping("/updateMember.do") // 보드멤버의 권한 수정
	public String updateMember(MemberVO vo,HttpServletRequest request, HttpSession session) {
		
		String type= (String)request.getParameter("type");
		
		System.out.println(request.getParameter("user_id"));
		vo.setBoard_index((((MemberVO)session.getAttribute("board")).getBoard_index()));
		
		if (type.equals("admin")) {
			vo.setAdmin("admin");
		} else {
			vo.setAdmin("normal");
		}
		
		System.out.println(">> 보드멤버의 권한 수정");
		System.out.println("전달받은 vo: " + vo);

		memberService.updateMember(vo);
		return "getBoard.do";
	}

	@RequestMapping("/deleteMember.do") // 보드 멤버 삭제
	public String deleteMember(MemberVO vo) {

		System.out.println(">> 보드 멤버 삭제 ");
		System.out.println("전달받은 vo: " + vo);

		memberService.deleteMember(vo);
		return "board.jsp";
	}
	
//	@RequestMapping("/getMemberList.do") // 멤버 겟겟
//	public String getMemberList(MemberVO vo) {
//		System.out.println(">> 보드멤버의 조회");
//		System.out.println("전달받은 vo: " + vo);
//
//		memberService.getMemberList(vo);
//		return "getBoardList.do";
//	}
	
}
