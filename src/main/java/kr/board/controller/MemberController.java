package kr.board.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import kr.board.entity.TblMember;
import kr.board.mapper.MemberMapper;


@Controller
public class MemberController {

	@Autowired
	private MemberMapper mapper;
	

	//회원가입jsp 요청
	@GetMapping("/register.do")
	public String register(){
		return "register";
	}
	
	// 회원가입하기 메소드
	@PostMapping("/join.do")
	public String register(TblMember vo){
		mapper.memberJoin(vo);
		return "main";
	}
	
	
	
	
	
	

	//로그인.jsp 요청
	@GetMapping("/login.do")
	public String login() {
		return "login";
	}


	
	//로그인
	@PostMapping("/Login.do")
	public String Login(TblMember mvo, HttpServletRequest request) {
		// 로그인 기능 - 해당 아이디, 비번 일치하는 회원정보 세션에 저장
		TblMember loginMember = mapper.memberLogin(mvo);
		//로그인 정보가 있으면 세션에 저장
		if(loginMember != null) {
			//세션 객체 생성
			HttpSession session = request.getSession();
			//세선에 값 추가
			session.setAttribute("loginMember", loginMember);
		}
		return "redirect:/main.do";
	}
	
	//로그아웃 메소드
	@RequestMapping("/Logout.do")
	public String Logout(HttpSession session) {
		session.removeAttribute("loginMember");
		return "redirect:/main.do";
	}
	
	// 마이페이지 요청
	@RequestMapping("/mypage.do")
	public String mypage(TblMember model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(session.getAttribute("loginMember") != null) {
			TblMember loginMember = (TblMember) session.getAttribute("loginMember");
			System.out.println("id : " + loginMember.getMemId());
		}
		return "mypage";
	}	
	
	

	
}
