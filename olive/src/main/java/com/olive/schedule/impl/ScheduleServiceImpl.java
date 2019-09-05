package com.olive.schedule.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.olive.schedule.service.ScheduleService;
import com.olive.schedule.service.ScheduleVO;

@Service("scheduleService")
public class ScheduleServiceImpl implements ScheduleService {
	@Autowired
	private ScheduleDAO scheduleDAO;
	
	@Override
	public void insertSchedule(ScheduleVO vo) {
		System.out.println(">>> ScheduleServiceImpl.insertSchedule()실행");
		scheduleDAO.insertSchedule(vo);
	}
	@Override
	public List<ScheduleVO> getSchedule(String board_id) {
		System.out.println(">>> ScheduleServiceImpl.getSchedule()실행");
		return scheduleDAO.getSchedule(board_id);
		
	}
	@Override
	public List<ScheduleVO> getScheduleList(String board_id) {
		System.out.println(">>> ScheduleServiceImpl.getScheduleList()실행");
		return scheduleDAO.getScheduleList(board_id);
	}

	@Override
	public void updateSchedule(ScheduleVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteSchedule(ScheduleVO vo) {
		// TODO Auto-generated method stub
		
	}




	

}
