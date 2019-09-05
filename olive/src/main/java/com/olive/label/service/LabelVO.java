package com.olive.label.service;

public class LabelVO {
	private String board_index;
	private String label_id;
	private String label_color;
	private String label_name;
	
	public String getBoard_index() {
		return board_index;
	}
	public void setBoard_index(String board_index) {
		this.board_index = board_index;
	}
	public String getLabel_id() {
		return label_id;
	}
	public void setLabel_id(String label_id) {
		this.label_id = label_id;
	}
	public String getLabel_color() {
		return label_color;
	}
	public void setLabel_color(String label_color) {
		this.label_color = label_color;
	}
	public String getLabel_name() {
		return label_name;
	}
	public void setLabel_name(String label_name) {
		this.label_name = label_name;
	}
	@Override
	public String toString() {
		return "LabelVO [board_index=" + board_index + ", label_id=" + label_id + ", label_color=" + label_color
				+ ", label_name=" + label_name + "]";
	}
	
	
	
}
