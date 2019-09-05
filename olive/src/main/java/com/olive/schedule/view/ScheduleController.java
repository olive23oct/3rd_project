package com.olive.schedule.view;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.olive.board.service.BoardVO;
import com.olive.schedule.service.ScheduleService;
import com.olive.schedule.service.ScheduleVO;
import com.olive.user.service.UserVO;

@Controller
public class ScheduleController {
	
	@Autowired
	private ScheduleService scheduleService;
	/*
	 * 2019.07.21 스케줄 입력 유희
	 */
	@RequestMapping("/insertSchedule.do")
	public void insertSchedule(ScheduleVO vo) {
		scheduleService.insertSchedule(vo);
		System.out.println("스케쥴 insert 실행 >> " + vo);
	}
	
	
	// 캘린더로 이동
	@RequestMapping(value= "/getScheduleList.do", produces = "application/json; charset=utf8" )
	@ResponseBody
	public List<ScheduleVO> getBoardList(HttpServletRequest request, Model model) {
		System.out.println(">>> 캘린더로 이동 - getScheduleList()");
		String board_id = request.getParameter("board_id");
		System.out.println(board_id);
		List<ScheduleVO> scheduleList = scheduleService.getScheduleList(board_id);
		System.out.println("scheduleList : " + scheduleList);
//		model.addAttribute("scheduleList", scheduleList);
		return scheduleList;
	}
	
	@RequestMapping("/updateSchedule.do")
	public String updateSchedule(ScheduleVO vo) {
		scheduleService.updateSchedule(vo);
		return "card.jsp";
	}
	
	@RequestMapping("/deleteSchedule.do")
	public String deleteSchedule(ScheduleVO vo) {
		scheduleService.deleteSchedule(vo);
		return "card.jsp";
	}
}
