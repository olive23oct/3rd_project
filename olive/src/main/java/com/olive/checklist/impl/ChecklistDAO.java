package com.olive.checklist.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.olive.checklist.service.ChecklistVO;

@Repository("checklistDAO")
public class ChecklistDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public ChecklistDAO() {
		System.out.println(">> BoardDAO 객체 생성");
	}

	public void insertChecklistTitle(ChecklistVO vo) {  //체크리스트 제목 입력
		System.out.println("===> insertChecklistTitle() 실행");
		mybatis.insert("ChecklistDAO.insertChecklistTitle", vo);
	}
	
	public void updateChecklistTitle(ChecklistVO vo) {
		System.out.println("===> updateChecklistTitles() 실행");
		mybatis.update("ChecklistDAO.updateChecklistTitle", vo);
	}
	

	public void insertChecklistContent(ChecklistVO vo) {
		System.out.println("===> insertChecklistContent() 실행");
		mybatis.insert("ChecklistDAO.insertChecklistContent", vo);
	}

	public List<ChecklistVO> getChecklist(String board_index) {
		System.out.println("===> getChecklist() 실행");
		return mybatis.selectList("ChecklistDAO.getChecklist", board_index);
	}

	public void updateChecklistContent(ChecklistVO vo) {
		System.out.println("===> updateChecklistContent() 실행");
		mybatis.update("ChecklistDAO.updateChecklistContent", vo);
	}

	public void updateChecklistChecked(ChecklistVO vo) {
		System.out.println("===> updateChecklistChecked() 실행");
		mybatis.update("ChecklistDAO.updateChecklistChecked", vo);
	}

	public void deleteChecklist(String checklist_id) {
		System.out.println("===> deleteChecklist() 실행");
		mybatis.delete("ChecklistDAO.deleteChecklist", 	checklist_id);
	}
	
	
	
}
