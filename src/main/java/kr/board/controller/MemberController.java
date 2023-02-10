package kr.board.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
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
	
	
	//회원가입 시 아이디 중복 확인
	@RequestMapping(value = "/user_id_check")
	@ResponseBody
	public String user_id_check(TblMember mvo, HttpServletRequest request) {
		// result_idCheck = [상태값] / 0(중복 없음) / 1(중복 발생)
		int result_idCheck = 3;
		String mem_id = request.getParameter("mem_id");
		System.out.println("중복확인 클릭 아이디 : "+mem_id);
		// id 중복 검사
		try {
			result_idCheck = mapper.id_check(mem_id);
		} catch (Exception e) {
			System.out.println("아이디 중복확인 MemberController 오류");
			e.printStackTrace();
		}
		return String.valueOf(result_idCheck);
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
	
	// 마이페이지 요청 메소드
	@RequestMapping("/mypage.do")
	public String mypage(TblMember mvo, HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(session.getAttribute("loginMember") != null) {
			TblMember loginMember = (TblMember) session.getAttribute("loginMember");
			System.out.println(" mypage 컨트롤러 => id : " + loginMember.getMem_id());
		}
		return "mypage";
	}	
}
