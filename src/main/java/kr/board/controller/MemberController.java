package kr.board.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import kr.board.entity.Member;
import kr.board.mapper.BoardMapper;

@Controller
public class MemberController {

	@Autowired
	private BoardMapper mapper;
	
	@PostMapping("/Login.do")
	public String Login(Member mvo, HttpServletRequest request) {
		// 로그인 기능 - 해당 아이디, 비번 일치하는 회원정보 세션에 저장
		Member loginMember = mapper.memberLogin(mvo);
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
}
