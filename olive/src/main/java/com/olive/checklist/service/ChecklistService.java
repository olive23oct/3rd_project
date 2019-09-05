package com.olive.checklist.service;

import java.util.List;

public interface ChecklistService {

	void insertChecklistTitle(ChecklistVO vo);
	void updateChecklistTitle(ChecklistVO vo);
	void insertChecklistContent(ChecklistVO vo);
	List<ChecklistVO> getChecklist(String board_index);
	void updateChecklistContent(ChecklistVO vo);
	void updateChecklistChecked(ChecklistVO vo);
	void deleteChecklist(String checklist_id);

}
