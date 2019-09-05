package com.olive.schedule.service;

import java.util.List;

public interface ScheduleService {
	void insertSchedule(ScheduleVO vo);//스케쥴추가

	List<ScheduleVO> getSchedule(String board_id);//스케쥴가져오기
	
	List<ScheduleVO> getScheduleList(String board_id); // 전체 스케줄

	void updateSchedule(ScheduleVO vo);//스케쥴수정

	void deleteSchedule(ScheduleVO vo);//스케줄삭제
}
