package com.olive.comment.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.olive.comment.service.CommentService;
import com.olive.comment.service.CommentVO;

@Service("commentService")
public  class CommentServiceImpl implements CommentService{
	
	@Autowired
	private CommentDAO commentDAO;
	
	@Override
	public void insertComment(CommentVO vo) {
		System.out.println(">>> CommentImpl.insertComment()실행");
		commentDAO.insertComment(vo);
	}
	@Override
	public List<CommentVO> getComment(String board_index) {
		System.out.println(">>> CommentImpl.getComment()실행");
		return commentDAO.getComment(board_index);
	}
	
	@Override
	public void deleteComment(String comment_id) {
		System.out.println(">>> CommentImpl.deleteComment()실행");
		commentDAO.deleteComment(comment_id);
	}
	@Override
	public void updateComment(CommentVO vo) {
		System.out.println(">>> CommentImpl.updateComment()실행");
		commentDAO.updateComment(vo);
		
	}
}
