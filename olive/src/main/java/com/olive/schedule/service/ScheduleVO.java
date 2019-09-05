package com.olive.schedule.service;


public class ScheduleVO {
	private String board_index;
	private String schedule_id;
	private String start_date;
	private String end_date;
	private String title;
	
	public String getBoard_index() {
		return board_index;
	}


	public void setBoard_index(String board_index) {
		this.board_index = board_index;
	}


	public String getSchedule_id() {
		return schedule_id;
	}


	public void setSchedule_id(String schedule_id) {
		this.schedule_id = schedule_id;
	}


	public String getStart_date() {
		return start_date;
	}


	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}


	public String getEnd_date() {
		return end_date;
	}


	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}
	

	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	@Override
	public String toString() {
		return "ScheduleVO [board_index=" + board_index + ", schedule_id=" + schedule_id + ", start_date=" + start_date
				+ ", end_date=" + end_date + ", title=" + title +"]";
	}

	
	
	
	
	
}
