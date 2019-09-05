package com.olive.user.view;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.olive.board.service.BoardVO;
import com.olive.user.service.UserService;
import com.olive.user.service.UserVO;

@Controller
public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	@ResponseBody
	public String logIn(UserVO vo, HttpSession session) {
		System.out.println(">> 로그인 처리");
		System.out.println("전달받은 vo: " + vo);

		String inputEmail = vo.getEmail(); // 입력한 이메일
		String inputPwd = vo.getPassword(); // 입력한 비번
		System.out.println("입력한 이메일 :" + inputEmail + "입력 비번 : " + inputPwd);
		String loginMsg = "";

		UserVO user = userService.logIn(vo); // 디비에서 아이디 있는지 조회

		System.out.println(user);
		System.out.println("유저비번 : " + user.getPassword());
		String DBPwd = user.getPassword();
		System.out.println("디비 비번 : " + DBPwd);

		if (user == null) { // 해당 아이디 없을때
			loginMsg = "noAccount";
			return loginMsg;
		} else if (inputPwd.equals(DBPwd)) { // 입력비번 하고 디비 비번하고 같으면
			session.setAttribute("user", user);
			loginMsg = "success";
			return loginMsg;
		} else {
			loginMsg = "wrongPwd";
			return loginMsg;
		}
	}

	@RequestMapping("/logout.do") // 로그아웃
	public String logout(HttpSession session) {
		System.out.println(">>> 로그아웃 처리 - logout()");
		session.invalidate();
		return "login.jsp";
	}

	@RequestMapping("/insertUser.do") // 회원가입
	public String insertUser(UserVO vo) throws IllegalStateException, IOException {
		System.out.println(">>> 회원가입 - insertUser()");
		vo.setImage(null);
		System.out.println("전달받은 vo : " + vo);
		userService.insertUser(vo);
		String insertMsg = "";
		return "login.jsp";
	}

	@RequestMapping(value = "/checkEmail.do", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public int postIdCheck(UserVO vo, HttpServletRequest request, HttpSession session) throws Exception {

		// String email = vo.getEmail();
		vo.setEmail(request.getParameter("id"));
		System.out.println("vo:" + vo);
		UserVO idCheck = userService.checkEmail(vo);

		System.out.println("idcheck:" + idCheck);
		int result = 0;

		if (idCheck != null) {
			System.out.println("1리턴");
			result = 1;
		}

		return result;

	}

	@RequestMapping(value = "/updateUser.do") // 회원 정보 수정
	public String updateUser(UserVO vo, HttpSession session, @RequestParam("file1") MultipartFile file)
			throws IllegalStateException, IOException {
		System.out.println(">>> 회원정보 수정 - updateUser()");

		File image = new File("C:\\mineralpoint\\bit_3rd_project\\olive2\\src\\main\\webapp\\upload\\"
				+ ((MultipartFile) file).getOriginalFilename());
		file.transferTo(image);
		vo.setImage(file.getOriginalFilename());
		System.out.println("업데이트 vo :" + vo);

		userService.updateUser(vo);

		session.setAttribute("user", userService.getUser(vo));
		return "mypage.jsp";

	}
	/*
	 * 20190709 이광호
	 * 유저검색기능 추가
	 */
	@RequestMapping(value = "/searchUser.do") // 회원 검색
	@ResponseBody
	public List<UserVO> searchUser(UserVO vo) {
		System.out.println(">>> 회원 검색 - searchUser()");
		return userService.searchUser(vo);
	}
}