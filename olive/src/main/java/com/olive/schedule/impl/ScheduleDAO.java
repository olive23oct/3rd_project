package com.olive.schedule.impl;


import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.olive.schedule.service.ScheduleVO;

@Repository("scheduleDAO")
public class ScheduleDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;

	public ScheduleDAO() {
		System.out.println(">> ScheduleDAO 객체 생성");
	}
	
	public void insertSchedule(ScheduleVO vo) {
		System.out.println("===> Mybatis로 insertSchedule() 실행");
		mybatis.insert("ScheduleDAO.insertSchedule", vo);
	}

	public List<ScheduleVO> getSchedule(String board_id) {
		System.out.println("===> Mybatis로 getSchedule() 실행");
		return mybatis.selectOne("ScheduleDAO.getSchedule", board_id);
	}
	public List<ScheduleVO> getScheduleList(String board_id) {
		System.out.println("===> Mybatis로 getSchedule() 실행");
		return mybatis.selectList("ScheduleDAO.getScheduleList", board_id);
	}

	public void updateSchedule(ScheduleVO vo) {
		System.out.println("===> Mybatis로 updateSchedule() 실행");
		mybatis.update("ScheduleDAO.updateSchedule", vo);
	}

	public void deleteSchedule(ScheduleVO vo) {
		System.out.println("===> Mybatis로 deleteSchedule() 실행");
		mybatis.delete("ScheduleDAO.deleteSchedule", vo);
	}
	
}
