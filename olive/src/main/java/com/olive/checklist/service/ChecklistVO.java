package com.olive.checklist.service;

import java.sql.Date;

public class ChecklistVO {
   
   private String board_index;
   private String checklist_id;
   private String checklist_title;
   private String checklist_checked;
   private String checklist_content;
   private Date create_date;
   private String percent;
      
   //체크여부 변경 컨디션 추가
   private String checkCondition;
   
   public String getCheckCondition() {
      return checkCondition;
   }

   public void setCheckCondition(String checkCondition) {
      this.checkCondition = checkCondition;
   }

   public ChecklistVO() {
      super();
   }
   
   public String getBoard_index() {
      return board_index;
   }
   public void setBoard_index(String board_index) {
      this.board_index = board_index;
   }
   public String getChecklist_id() {
      return checklist_id;
   }
   public void setChecklist_id(String checklist_id) {
      this.checklist_id = checklist_id;
   }
   public String getChecklist_title() {
      return checklist_title;
   }
   public void setChecklist_title(String checklist_title) {
      this.checklist_title = checklist_title;
   }
   public String getChecklist_checked() {
      return checklist_checked;
   }
   public void setChecklist_checked(String checklist_checked) {
      this.checklist_checked = checklist_checked;
   }
   public String getChecklist_content() {
      return checklist_content;
   }
   public void setChecklist_content(String checklist_content) {
      this.checklist_content = checklist_content;
   }
   
   
   public Date getCreate_date() {
      return create_date;
   }

   public void setCreate_date(Date create_date) {
      this.create_date = create_date;
   }

   public String getPercent() {
      return percent;
   }

   public void setPercent(String percent) {
      this.percent = percent;
   }

   @Override
   public String toString() {
      return "ChecklistVO [board_index=" + board_index+ ", checklist_id=" + checklist_id + ", checklist_title="
            + checklist_title + ", checklist_checked=" + checklist_checked + ", checklist_content="
            + checklist_content + ", create_date=" + create_date + ", percent=" + percent + ", checkCondition="
            + checkCondition + "]\r";
   }

   
   
   



   
   
   
   
}