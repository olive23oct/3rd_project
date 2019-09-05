package com.olive.checklist.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.olive.checklist.service.ChecklistService;
import com.olive.checklist.service.ChecklistVO;

@Service("checklistService")
public class ChecklistServiceImpl implements ChecklistService{
	
	@Autowired
	private ChecklistDAO checklistDAO;

	@Override
	public void insertChecklistTitle(ChecklistVO vo) {
		checklistDAO.insertChecklistTitle(vo);	
	}

	@Override
	public void updateChecklistTitle(ChecklistVO vo) {
		System.out.println(">>> ChecklistImpl.updateChecklistTitle()실행");
		checklistDAO.updateChecklistTitle(vo);
	}
	
	@Override
	public void insertChecklistContent(ChecklistVO vo) {
		checklistDAO.insertChecklistContent(vo);			
	}
	
	@Override
	public List<ChecklistVO> getChecklist(String board_index) {
		System.out.println(">>> ChecklistImpl.getChecklist()실행");
		return checklistDAO.getChecklist(board_index);
	}

	@Override
	public void updateChecklistContent(ChecklistVO vo) {
		System.out.println(">>> ChecklistImpl.updateChecklistContent()실행");
		checklistDAO.updateChecklistContent(vo);
	}

	@Override
	public void updateChecklistChecked(ChecklistVO vo) {
		System.out.println(">>> ChecklistImpl.updateChecklistChecked()실행");
		checklistDAO.updateChecklistChecked(vo);
	}

	@Override
	public void deleteChecklist(String checklist_id) {
		System.out.println(">>> ChecklistImpl.deleteChecklist()실행");
		checklistDAO.deleteChecklist(checklist_id);
	}
	
}
