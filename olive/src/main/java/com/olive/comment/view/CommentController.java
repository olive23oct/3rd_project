package com.olive.comment.view;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.olive.comment.service.CommentService;
import com.olive.comment.service.CommentVO;


@Controller
public class CommentController {
	@Autowired
	private CommentService commentService;
	
	/* 댓글 입력 */
	@RequestMapping(value="/insertComment.do")
	@ResponseBody
	public String insertComment(CommentVO vo) {
		
		String board_index = vo.getBoard_index();
		String writer = vo.getWriter();
		System.out.println("board_index : " + board_index);
		System.out.println("writer : " + writer);
		System.out.println(vo);
		
		commentService.insertComment(vo);
		return "redirect:getCard.do?board_index=" + board_index;
	}
	
	/* 댓글 삭제 */
	@RequestMapping(value="/deleteComment.do", method = RequestMethod.POST)
	@ResponseBody
	public String deleteComment(CommentVO vo)
	         throws IllegalStateException, IOException {
		
		System.out.println(">>댓글 삭제 - deleteComment()");
		String board_index = vo.getBoard_index();
	    String comment_id = vo.getComment_id();
	    System.out.println("Controller(board_index) : " + board_index);
	    System.out.println("Controller(comment_id) : " + comment_id);
	    commentService.deleteComment(comment_id);
	    return "redirect:getCard.do?board_index=" + board_index;
	}
	
	/* 댓글 수정 */
	@RequestMapping(value="/updateComment.do")
	@ResponseBody
	public String updateComment(CommentVO vo)
	         throws IllegalStateException, IOException {
		System.out.println(">>댓글 수정 - updateComment()");
		String board_index = vo.getBoard_index();
	    String comment_id = vo.getComment_id();
	    String comment_content=vo.getComment_content();
	    System.out.println("Controller(board_index) : " + board_index);
	    System.out.println("Controller(comment_id) : " + comment_id);
	    System.out.println("Controller(comment_content) : " + comment_content);
	    commentService.updateComment(vo);
	   
		return "redirect:getCard.do?board_index=" + board_index;
	}
	
	
}
