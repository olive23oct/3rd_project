package com.olive.comment.service;

import java.util.List;


public interface CommentService {
	
	void insertComment(CommentVO vo); // 댓글 입력
	List<CommentVO> getComment(String board_index);
	void deleteComment(String comment_id);//댓글 삭제
	void updateComment(CommentVO vo);//댓글 수정
}
