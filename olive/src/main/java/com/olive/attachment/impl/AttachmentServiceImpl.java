package com.olive.attachment.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.olive.attachment.service.AttachmentService;
import com.olive.attachment.service.AttachmentVO;

@Service("attachmentService")
public class AttachmentServiceImpl implements AttachmentService{
   
   @Autowired
   private AttachmentDAO attachmentDAO;
   
   @Override
   public void insertAttachment(AttachmentVO vo) {
      System.out.println(">>> AttachmentImpl.insertAttachment()실행");
      attachmentDAO.insertAttachment(vo);
   }

   @Override
   public List<AttachmentVO> getAttachment(String board_index) {
      System.out.println(">>> AttachmentImpl.getAttachment()실행");
      return attachmentDAO.getAttachment(board_index);
   }

   @Override
   public void deleteAttachment(String attachment_id) {
      System.out.println(">>> AttachmentImpl.deleteAttachment()실행");
      attachmentDAO.deleteAttachment(attachment_id);
   }
}