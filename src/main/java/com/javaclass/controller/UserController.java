package com.javaclass.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaclass.domain.UserVO;
import com.javaclass.service.MailSendService;
import com.javaclass.service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userServiceImpl;

	@Autowired
	private MailSendService mailService;
	
	// 이메일 중복 확인
	@PostMapping("user-pages/emailOverlap.do")
	@ResponseBody
	public String emailOverlap(@RequestParam("email") String email) {
		int cnt = userServiceImpl.emailOverlap(email);
		return String.valueOf(cnt);
	}
	
	// 이메일 인증
	@PostMapping("user-pages/emailCheck.do")
	@ResponseBody
	public String emailCheck(String email) {
		System.out.println("이메일 인증 요청이 들어옴!");
		System.out.println("이메일 인증 이메일 : " + email);
		return mailService.joinEmail(email);
	}
	
	// 회원가입
	@RequestMapping("user-pages/insertUser.do")
	public void insertUser(UserVO vo) {
		userServiceImpl.insertUser(vo);
	}
	
	// 로그인
	@RequestMapping("user-pages/login.do")
	public String login(UserVO vo, HttpSession session) {
		
		UserVO result = userServiceImpl.loginCheck(vo);
		
		if(result==null) {
			return "authentication-pages/sign-in"; //닉네임이 틀렸습니다 떠야함
		}else {
			session.setAttribute("logEmail", result.getUserEmail());
			session.setAttribute("logUser", result.getUserName());
			return "redirect:../home-pages/home-01.do";
		}
	}
	
	// 아이디 찾기
	@RequestMapping("user-pages/findEmail.do")
	public String findEmail(UserVO vo, HttpSession session) {
		UserVO result = userServiceImpl.findEmail(vo);
		
		if(result==null) {
			return "authentication-pages/forgot-email.do"; //닉네임이 틀렸습니다 떠야함
		}else {
			session.setAttribute("logEmail", result.getUserEmail());
			return "user-pages/findEmail";
		}
	}
	
	// 비밀번호 찾기
	@RequestMapping("user-pages/findPassword.do")
	public String findPassword(UserVO vo, HttpSession session) {
		userServiceImpl.findPassword(vo);
		System.out.println(vo);
		UserVO result = userServiceImpl.loginCheck(vo);
		System.out.println(result);
		System.out.println(session);
		if(result==null) {
			return "authentication-pages/forgot-password";
		}else {
			session.setAttribute("logname", result.getUserPassword());
			return "authentication-pages/reset-password";
		}
	}
	
	@RequestMapping("/home-pages/my-page.do")
    public String myPage(Model model, HttpSession session) {
        // 필요한 사용자 정보 세팅 등
        return "home-pages/my-page"; // => /WEB-INF/views/home-pages/my-page.jsp
    }
	
	/*
	// 비밀번호 변경
	@RequestMapping("user-pages/changePassword.do")
	public String changePassword(UserVO vo, HttpSession session) {
		userServiceImpl.findPassword(vo);
		System.out.println(vo);
		UserVO result = userServiceImpl.loginCheck(vo);
		System.out.println(result);
		System.out.println(session);
		if(result==null) {
			return "authentication-pages/forgot-password";
		}else {
			session.setAttribute("logname", result.getUserPassword());
			return "authentication-pages/reset-password";
		}
	}
	*/
	
	@RequestMapping("/adminDashBoard")
	public void adminUserBoard(Model m, String searchCondition, String searchKeyword) {
		
		HashMap map = new HashMap();
		map.put("searchCondition", searchCondition);
		map.put("searchKeyword", searchKeyword);
		
		List<UserVO> list = userServiceImpl.getUserBoardList(map);
		m.addAttribute("userBoardList",list);
	}
	
	@RequestMapping("/adminDeleteUserBoard")
	public String adminDeleteUserBoard(UserVO vo) {
		//System.out.println("deleteBoard 요청");
		userServiceImpl.deleteUserBoard(vo);
		return "redirect:adminDashBoard";
	}
	
	@RequestMapping("/adminModifyUserBoard")
	public void adminModifyUserBoard(UserVO vo, Model m) {
		UserVO result = userServiceImpl.modifyUserBoard(vo);
		m.addAttribute("userBoard",result);
	}
	
	@RequestMapping("/adminUpdateUserBoard")
	public String adminUpdateUserBoard(UserVO vo) {
		userServiceImpl.updateUserBoard(vo);
		System.out.println(vo.toString());
		return "redirect:adminDashBoard";
	}
	
	
	
}
