package com.olive.attachment.impl;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.olive.attachment.service.AttachmentVO;

@Repository("AttachmentDAO")
public class AttachmentDAO {

   @Autowired
   private SqlSessionTemplate mybatis;
   
   public AttachmentDAO() {
      System.out.println(">> AttachmentDAO 객체 생성");
   }
   
   public void insertAttachment(AttachmentVO vo) {
      System.out.println("===> Mybatis로 insertAttachment() 실행");
      System.out.println("뭐가 문제야!!!!!!!!!!! : " + vo);
      mybatis.insert("AttachmentDAO.insertAttachment", vo);
   }

   public List<AttachmentVO> getAttachment(String board_index) {
      System.out.println("===> Mybatis로 getAttachment() 실행");
      return mybatis.selectList("AttachmentDAO.getAttachment", board_index);
   }

   public void deleteAttachment(String attachment_id) {
      System.out.println("===> Mybatis로 deleteAttachment() 실행");
      mybatis.selectList("AttachmentDAO.deleteAttachment", attachment_id);
   }

}