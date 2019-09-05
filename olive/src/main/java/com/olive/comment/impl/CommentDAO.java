package com.olive.comment.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.olive.checklist.service.ChecklistVO;
import com.olive.comment.service.CommentVO;

@Repository("commentDAO")
public class CommentDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public CommentDAO() {
		System.out.println(">> CommentDAO 객체 생성");
	}
	
	public void insertComment(CommentVO vo) {
		System.out.println("===>Mybatis로 insertComment() 실행");
		mybatis.insert("CommentDAO.insertComment", vo);
	}
	
	public List<CommentVO> getComment(String board_index) {
		System.out.println("===> getComment() 실행");
		return mybatis.selectList("CommentDAO.getComment", board_index);
	}
	
	public void deleteComment(String comment_id) {
		System.out.println("===> Mybatis로 deleteComment() 실행");
		mybatis.selectList("CommentDAO.deleteComment", comment_id);
	}
	
	public void updateComment(CommentVO vo) {
		System.out.println("===> Mybatis로 updateComment() 실행");
		mybatis.selectList("CommentDAO.updateComment", vo);
	}
	
}
