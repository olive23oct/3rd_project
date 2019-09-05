package com.olive.attachment.service;

import java.sql.Date;

public class AttachmentVO {
   
   private String board_index;
   private String attachment_id;
   private String file_name;
   private Date attachment_date;
   private String original_file_name;
   
   public String getOriginal_file_name() {
      return original_file_name;
   }


   public void setOriginal_file_name(String original_file_name) {
      this.original_file_name = original_file_name;
   }


   public AttachmentVO() {
      super();
   }
   
   
   public String getBoard_index() {
      return board_index;
   }





   public void setBoard_index(String board_index) {
      this.board_index = board_index;
   }





   public String getAttachment_id() {
      return attachment_id;
   }





   public void setAttachment_id(String attachment_id) {
      this.attachment_id = attachment_id;
   }





   public String getFile_name() {
      return file_name;
   }





   public void setFile_name(String file_name) {
      this.file_name = file_name;
   }





   public Date getAttachment_date() {
      return attachment_date;
   }





   public void setAttachment_date(Date attachment_date) {
      this.attachment_date = attachment_date;
   }


   @Override
   public String toString() {
      return "AttachmentVO [board_index=" + board_index + ", attachment_id=" + attachment_id + ", file_name="
            + file_name + ", attachment_date=" + attachment_date + ", original_file_name=" + original_file_name
            + "]";
   }





   
   
}