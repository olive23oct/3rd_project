package com.olive.attachment.service;

import java.util.List;

public interface AttachmentService {

	void insertAttachment(AttachmentVO vo);         //첨부파일 등록

	List<AttachmentVO> getAttachment(String board_index); //첨부파일 겟
 
	void deleteAttachment(String attachment_id);    //첨부파일 삭제 

}
