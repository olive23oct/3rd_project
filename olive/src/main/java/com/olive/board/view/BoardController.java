package com.olive.board.view;

import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.olive.activity.service.ActivityService;
import com.olive.activity.service.ActivityVO;
import com.olive.attachment.service.AttachmentService;
import com.olive.attachment.service.AttachmentVO;
import com.olive.board.service.BoardService;
import com.olive.board.service.BoardVO;
import com.olive.checklist.service.ChecklistService;
import com.olive.checklist.service.ChecklistVO;
import com.olive.comment.service.CommentService;
import com.olive.comment.service.CommentVO;
import com.olive.member.service.MemberService;
import com.olive.member.service.MemberVO;
import com.olive.schedule.service.ScheduleService;
import com.olive.schedule.service.ScheduleVO;
import com.olive.user.service.UserVO;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	@Autowired
	private MemberService memberService;
	@Autowired
	private AttachmentService attachmentService;
	@Autowired
	private ChecklistService checklistService;
	@Autowired
	private ScheduleService scheduleService;
//	@Autowired
//	private ActivityService activityService;
	@Autowired
	private CommentService commentService;
	

	@RequestMapping("/insertBoard.do")
	public String insertBoard(ActivityVO avo, MemberVO vo, HttpServletRequest request, HttpSession session, Model model) {
		Map<String, String> boardMap = new HashMap<>();
		System.out.println("파라미터 : " + (String) request.getParameter("title"));
		boardMap.put("title", (String) request.getParameter("title"));
		boardMap.put("color", (String) request.getParameter("color"));// 로그인 과정을 안거칠경우 사용 테스트용
		System.out.println(((UserVO) session.getAttribute("user")).getUser_id());
		boardMap.put("user_id", ((UserVO) session.getAttribute("user")).getUser_id());// 로그인과정 거치면 사용
		System.out.println("boardMap : " + boardMap);
		boardService.insertBoard(boardMap);

		vo.setInsertCondition("createBoard");
		vo.setUser_id(((UserVO)session.getAttribute("user")).getUser_id());//로그인과정
		// 거치면 사용
		//vo.setUser_id("user1");// 로그인 과정을 안거칠경우 사용 테스트용
		System.out.println("MemberVO vo : " + vo);
		memberService.insertMember(vo);

		// 가지고있는 데이터가 user_id와 최근 생성 날짜
		String board_index = boardService.getNewBoard(vo).getBoard_index();
		vo.setBoard_index(board_index);
//		model.addAttribute("boardContents", boardService.getBoard(vo)); // 데이타 저장
//		System.out.println("boardContents : " + boardService.getBoard(vo).size());
		
		//activity추가
		avo.setAction("를 생성 했");
		avo.setBoard_index(boardService.getNewBoard(vo).getBoard_index());
		avo.setUser_id(((UserVO)session.getAttribute("user")).getUser_id());
		System.out.println("ActivityVO avo : " + avo);
		//activityService.insertActivity(avo);
		
		session.setAttribute("board", memberService.getMember(vo));
		
		return "redirect:getBoard.do";
	}

	@RequestMapping("/insertList.do") // 리스트 추가 ajax 방식으로
	@ResponseBody
	public String insertList(ActivityVO avo, BoardVO vo, HttpSession session, Model model, HttpServletRequest request) {

		String ListName = vo.getTitle();
		System.out.println("입력받은 리스트 타이틀" + ListName);
		System.out.println("session : " + session);
		vo.setCreator(((UserVO)session.getAttribute("user")).getUser_id());
		System.out.println("리스트 vo : " + vo);
		boardService.insertList(vo);
		
		//activity추가
		avo.setAction("를 생성 했");
		avo.setUser_id(((UserVO)session.getAttribute("user")).getUser_id());
		System.out.println("ActivityVO avo : " + avo);
		//activityService.insertActivity(avo);
		
		
		return ListName;
	}

	@RequestMapping("/insertCard.do") // 카드 추가 ajax방식으로
	@ResponseBody
	public String insertCard(ActivityVO avo, BoardVO vo, HttpSession session) throws Exception {

		boardService.insertCard(vo);
		String CardName = vo.getTitle();
		System.out.println(CardName);
		vo.setCreator(((UserVO)session.getAttribute("user")).getUser_id());
		System.out.println("카드 vo : " + vo);
		//CardName = URLEncoder.encode(CardName, "UTF-8");
		
		//activity추가
		avo.setAction("를 생성 했");
		avo.setBoard_index(vo.getBoard_index());
		avo.setUser_id(((UserVO)session.getAttribute("user")).getUser_id());
		avo.setBoard_index("0");
		System.out.println("ActivityVO avo : " + avo);
		//activityService.insertActivity(avo);
				
		return CardName;
	}

	@RequestMapping("/getBoard.do")
	public String getBoard(MemberVO vo, Model model, HttpSession session) {
		System.out.println(">>> 보드 조회 처리 - getBoard()");
		System.out.println("vo : " + vo);
		System.out.println("session : " + session.getAttribute("board"));
		
		session.removeAttribute("board");
		session.setAttribute("board", vo);
		
		model.addAttribute("member", memberService.getMemberList(((MemberVO)session.getAttribute("board")).getBoard_index())); // 보드의 멤버 조회
		model.addAttribute("boardContents", boardService.getBoard((MemberVO)session.getAttribute("board"))); // 데이타 저장
		System.out.println("boardContents : " + boardService.getBoard((MemberVO)session.getAttribute("board")).size());
		
		return "board.jsp";
	}

	@RequestMapping("/getBoardList.do")
	public String getBoardList(HttpSession session, Model model) {
		System.out.println(">>> 보드 리스트 조회 처리 - getBoardList()");
		UserVO vo = (UserVO) session.getAttribute("user");
		//UserVO vo = new UserVO();
		// 임의 데이터 삽입후 테스트
		//vo.setUser_id("user1");
		// 전체 데이타 조회
		// System.out.println("유저 : "+(UserVO)session.getAttribute("user"));

		// 임의 데이터 삽입
		List<BoardVO> boardList = boardService.getBoardList(vo);

		System.out.println("boardList : " + boardList);
		model.addAttribute("boardList", boardList);
		return "main_board.jsp";
	}

	@RequestMapping(value = "/updateTitle.do", produces = "application/text;charset=utf8")
	@ResponseBody
	public String updateTitle(BoardVO vo, ActivityVO avo, HttpSession session) {
	
		System.out.println(">>> 글 수정 처리 - updateBoard()");

		boardService.updateTitle(vo);
		String title = vo.getTitle();
		
		//activity추가
		avo.setAction("를 변경 했");
		avo.setBoard_index(vo.getBoard_index());
		avo.setUser_id(((UserVO)session.getAttribute("user")).getUser_id());
		System.out.println("ActivityVO avo : " + avo);
		//activityService.insertActivity(avo);
		
		return title;
	}

	@RequestMapping("/updateCardContent.do") // 카드 내용 추가
	public String updateCardContent(ActivityVO avo, BoardVO vo, HttpSession session, HttpServletRequest request, Model model) throws Exception {
		
		boardService.updateCardContent(vo);
		String board_index = vo.getBoard_index();
		model.addAttribute("list_title", request.getParameter("list_title"));
		
		//activity추가
		avo.setAction("를 카드 내용을 변경 했");
		avo.setBoard_index(vo.getBoard_index());
		avo.setUser_id(((UserVO)session.getAttribute("user")).getUser_id());
		System.out.println("ActivityVO avo : " + avo);
		//activityService.insertActivity(avo);
		
		return "redirect:getCard.do?board_index=" + board_index;
	}

	@RequestMapping("/getCard.do")
    public String getCard(HttpServletRequest request, HttpSession session, Model model) {
       String board_index = request.getParameter("board_index");

       System.out.println(">>> 카드겟 - getCard()");

       BoardVO card = boardService.getCard(board_index);
       List<AttachmentVO> attachment = attachmentService.getAttachment(board_index);
       List<ChecklistVO> checklist = checklistService.getChecklist(board_index);
       List<CommentVO> comment= commentService.getComment(board_index);
       //List<ScheduleVO> schedule = scheduleService.getSchedule(board_index);
       model.addAttribute("board_id", request.getParameter("board_id"));
       model.addAttribute("list_title", request.getParameter("list_title"));
       model.addAttribute("card", card);
       model.addAttribute("attachment", attachment);
       model.addAttribute("checklist", checklist);
       model.addAttribute("comment", comment);
       //model.addAttribute("schedule", schedule);
       return "card.jsp";
    }

	/*
	 * 2019.07.05 아카이브로 보내기 이광호
	 * 2019.07.11 아카이브로 보내기 수정
	 */
	@RequestMapping("/updateArchive.do")
	public void updateArchive(ActivityVO avo, BoardVO vo, HttpSession session) {
		System.out.println(vo);
		System.out.println(">>> 보드 아카이브로 보내기 - updateArchive()");
		System.out.println("수정요청 vo : " + vo);
		
		if (vo.getBoard_id() != null) {
			System.out.println("보드를 아카이브로 보내기");
			vo.setArchiveCondition("board");
		} else if (vo.getList_id() != null) {
			System.out.println("리스트를 아카이브로 보내기");
			vo.setArchiveCondition("list");
		} else if (vo.getCard_id() != null) {
			System.out.println("카드를 아카이브로 보내기");
			vo.setArchiveCondition("card");
		}
		
		if(vo.getArchive() == null || vo.getArchive().equalsIgnoreCase("n")) {// archive을 y로
			vo.setArchive("y");
		}
		else if (vo.getArchive().equalsIgnoreCase("y")) {// archive를 n으로
			vo.setArchive("n");
		} 
		boardService.updateArchive(vo);
		
		//activity추가
		avo.setAction("를 아카이브로 보냈");
		avo.setBoard_index(vo.getBoard_index());
		avo.setUser_id(((UserVO)session.getAttribute("user")).getUser_id());
		System.out.println("ActivityVO avo : " + avo);
		//activityService.insertActivity(avo);
	}

	/*
	 * 2019.07.05 보드삭제 이광호
	 * 2019.07.11 보드삭제 수정
	 */
	@RequestMapping(value="/deleteBoard.do", method = {RequestMethod.POST })
	public String deleteBoard(ActivityVO avo, BoardVO vo, HttpSession session) {
		System.out.println(vo);
		System.out.println(">>> 보드 삭제 - updateArchive()");
		System.out.println("수정요청 vo : " + vo);
		
		if (vo.getBoard_id() != null) {
			System.out.println("보드 삭제");
			vo.setDeleteCondition("board");
		} else if (vo.getList_id() != null) {
			System.out.println("리스트 삭제");
			vo.setDeleteCondition("list");
		} else if (vo.getCard_id() != null) {
			System.out.println("카드 삭제");
			vo.setDeleteCondition("card");
		}
		
		if (vo.getArchive().equalsIgnoreCase("y")) {// archive가 y일경우 삭제
			boardService.deleteBoard(vo);
		} else {// archive가 y가 아닌경우
			return "getBoard.do";
		}
		//activity추가
//		avo.setAction("를 삭제 했");
//		avo.setBoard_index(vo.getBoard_index());
//		avo.setUser_id(((UserVO)session.getAttribute("user")).getUser_id());
//		System.out.println("ActivityVO avo : " + avo);
//		activityService.insertActivity(avo);
		
		return "getBoard.do";
	}
	
	/*
	 * 2019.07.15 보드 설명추가 유희진
	 */
	@RequestMapping(value="/updateBoardContent.do", produces = "application/text;charset=utf8") 
	@ResponseBody
	public String updateBoardContent(BoardVO vo, HttpServletRequest request) throws Exception {
		boardService.updateBoardContent(vo);
		System.out.println(vo);
		String boardContent = vo.getContent();
		System.out.println(boardContent);
		vo.getBoard_index();
		return boardContent;
	}
	/*
	 * 2019.07.16  보드배경색 변경 유희진
	 */
	@RequestMapping(value="/updateBoardColor.do", produces = "application/text;charset=utf8") 
	@ResponseBody
	public String updateBoardColor(BoardVO vo, HttpServletRequest request) throws Exception {
		boardService.updateBoardColor(vo);
		System.out.println(vo);
		String boardColor = vo.getColor();
		System.out.println(boardColor);
		vo.getBoard_index();
		return boardColor;
	}
	
	/*
	 * 2019.07.17 리스트오더 변경 이광호
	 */
	@RequestMapping(value="/updateListOrder.do", produces = "application/json;charset=utf8", method = RequestMethod.POST)
	@ResponseBody
	public void updateListOrder(@RequestBody Map<String, String> map) {
		
		int startListOrder = Integer.parseInt(map.get("start_list_order"));
		int changedListOrder = Integer.parseInt(map.get("current_list_order"));
		
		
		System.out.println("start_list_order : " + startListOrder);
		System.out.println("current_list_order : " + changedListOrder);
		System.out.println("board_index : " + map.get("board_index"));
		
		
		if (startListOrder < changedListOrder) {//리스트가 오른쪽으로 갔을 때
			map.put("changeCondition", "changedOrderLessThanStartOrder");
			System.out.println("리스트가 오른쪽으로 갔을 때");
			boardService.updateOthersListOrderRight(map);
			boardService.updateListOrder(map);
			System.out.println("리스트가 오른쪽으로 갔을 때 - 끝");
		} else if (startListOrder > changedListOrder) {//리스트가 왼쪽으로 갔을 때 
			map.put("changeCondition", "changedOrderGreaterThanStartOrder");
			System.out.println("리스트가 왼쪽으로 갔을 때");
			boardService.updateOthersListOrderLeft(map);
			boardService.updateListOrder(map);
			System.out.println("리스트가 왼쪽으로 갔을 때 - 끝");
		} 
		
	}
	
	/*
    * 2019.07.17  보드 내 검색 김다희 
    */
	@RequestMapping(value="/searchBoard.do", produces = "application/json; charset=utf8") 
	@ResponseBody
	public List<BoardVO> searchBoard(BoardVO vo, HttpServletRequest request,Model model) throws Exception {


		System.out.println("vo : " + vo);
		List<BoardVO> searchResult =  boardService.searchBoard(vo);

		System.out.println("searchResult"+searchResult);

		return searchResult;
	}

	/*
    * 2019.07.18  보드 전체 검색 김다희 
    */
	@RequestMapping(value="/searchBoardAll.do", produces = "application/json; charset=utf8") 
	@ResponseBody
	public List<BoardVO> searchBoardAll(BoardVO vo, HttpServletRequest request,Model model) throws Exception {

		System.out.println("vo : " + vo);
		List<BoardVO> searchAll =  boardService.searchBoardAll(vo);

		System.out.println("searchAll : "+searchAll);

		return searchAll;
	}

}