package com.olive.board.service;

import java.sql.Date;

public class BoardVO {
   private String board_index;
   private String board_id;
   private String list_id;
   private String card_id;
   private String title;
   private String content;
   private String list_order;
   private String card_order;
   private String archive;
   private String creator;
   private String color;
   private Date create_date;

   /*
    * 20190711
    * 이광호
    * 아카이브 컨디션 추가
    */
   private String archiveCondition;

   /*
    * 20190711
    * 이광호
    * 델리트 컨디션 추가
    */
   private String deleteCondition;
   
   public BoardVO() {
      super();
   }

   public String getArchiveCondition() {
	   return archiveCondition;
	}
	
	public void setArchiveCondition(String archiveCondition) {
		this.archiveCondition = archiveCondition;
	}
	
	public String getDeleteCondition() {
		return deleteCondition;
	}
	
	public void setDeleteCondition(String deleteCondition) {
		this.deleteCondition = deleteCondition;
	}
	
	public String getBoard_index() {
	      return board_index;
	   }

   public void setBoard_index(String board_index) {
      this.board_index = board_index;
   }

   public String getBoard_id() {
      return board_id;
   }

   public void setBoard_id(String board_id) {
      this.board_id = board_id;
   }

   public String getList_id() {
      return list_id;
   }

   public void setList_id(String list_id) {
      this.list_id = list_id;
   }

   public String getCard_id() {
      return card_id;
   }

   public void setCard_id(String card_id) {
      this.card_id = card_id;
   }

   public String getTitle() {
      return title;
   }

   public void setTitle(String title) {
      this.title = title;
   }

   public String getContent() {
      return content;
   }

   public void setContent(String content) {
      this.content = content;
   }

   public String getList_order() {
      return list_order;
   }

   public void setList_order(String list_order) {
      this.list_order = list_order;
   }

   public String getCard_order() {
      return card_order;
   }

   public void setCard_order(String card_order) {
      this.card_order = card_order;
   }

   public String getArchive() {
      return archive;
   }

   public void setArchive(String archive) {
      this.archive = archive;
   }

   public String getCreator() {
      return creator;
   }

   public void setCreator(String creator) {
      this.creator = creator;
   }

   public Date getCreate_date() {
      return create_date;
   }

   public void setCreate_date(Date create_date) {
      this.create_date = create_date;
   }

   public String getColor() {
      return color;
   }

   public void setColor(String color) {
      this.color = color;
   }

	@Override
	public String toString() {
		return "BoardVO [board_index=" + board_index + ", board_id=" + board_id + ", list_id=" + list_id + ", card_id="
				+ card_id + ", title=" + title + ", content=" + content + ", list_order=" + list_order + ", card_order="
				+ card_order + ", archive=" + archive + ", creator=" + creator + ", color=" + color + ", create_date="
				+ create_date + ", archiveCondition=" + archiveCondition + ", deleteCondition=" + deleteCondition + "]";
	}

   

   

}