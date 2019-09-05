package com.olive.checklist.view;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.olive.checklist.service.ChecklistService;
import com.olive.checklist.service.ChecklistVO;

@Controller
public class ChecklistController {
	@Autowired
	private ChecklistService checklistService;
	
	@RequestMapping("/insertChecklistTitle.do")     //체크리스트 제목 입력
	public String insertChecklist(ChecklistVO vo) {
		String board_index = vo.getBoard_index();
		System.out.println(vo);
		checklistService.insertChecklistTitle(vo);
		
		return "redirect:getCard.do?board_index=" + board_index;
	}
	
	@RequestMapping("/updateChecklistTitle.do")  //체크리스트 타이틀 수정
	@ResponseBody
	public String updateChecklistTitle(ChecklistVO vo) {
		String board_index = vo.getBoard_index();
		System.out.println(vo);
		checklistService.updateChecklistTitle(vo);
		return "getCard.do?board_index=" + board_index;
	}
	
	@RequestMapping("/insertChecklistContent.do")     //체크리스트 내용 입력
	public String insertChecklistContent(ChecklistVO vo) {
		String board_index = vo.getBoard_index();
		System.out.println("board_index : " + board_index);
		String checklist_content = vo.getChecklist_content();
		System.out.println("checklist_content : -" + checklist_content);
		System.out.println(vo);
		
		checklistService.insertChecklistContent(vo);
		
		return "redirect:getCard.do?board_index=" + board_index;
	}
	
	@RequestMapping("/updateChecklistContent.do")     //체크리스트 내용 수정
	public String updateChecklistContent(ChecklistVO vo) {
		String board_index = vo.getBoard_index();
		
		System.out.println(vo);
		
		checklistService.updateChecklistContent(vo);
		
		return "redirect:getCard.do?board_index=" + board_index;
	}
	
	@RequestMapping("/updateChecklistChecked.do")     //체크리스트 체크여부 수정
	@ResponseBody
	public String updateChecklistChecked(ChecklistVO vo) {
		String board_index = vo.getBoard_index();
		String checklist_id = vo.getChecklist_id();
		String checklist_checked = vo.getChecklist_checked();
		System.out.println("updateChecklistChecked => checklist_id : " + checklist_id);
		System.out.println("updateChecklistChecked => checklist_checked : " + checklist_checked);
		System.out.println(vo);
		
		checklistService.updateChecklistChecked(vo);
		
		return "getCard.do?board_index=" + board_index;
	}
	
	@RequestMapping("/deleteChecklist.do")     //체크리스트 삭제
	public String deleteChecklist(ChecklistVO vo) {
		String board_index = vo.getBoard_index();
		String checklist_id = vo.getChecklist_id();
		System.out.println("deleteChecklist.do-> board_index : " + board_index);
		System.out.println("deleteChecklist.do-> checklist_id : " + checklist_id);
		/*System.out.println(vo);*/
		
		checklistService.deleteChecklist(checklist_id);
		
		return "redirect:getCard.do?board_index=" + board_index;
	}
	
}
