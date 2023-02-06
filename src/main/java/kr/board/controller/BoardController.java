package kr.board.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import kr.board.entity.TblMember;
import kr.board.mapper.BoardMapper;

@Controller
public class BoardController {
	
	@Autowired
	//보드맵퍼를 맵퍼 로 가져다 쓸거다
	private BoardMapper mapper;
	
	//메인 요청
	@RequestMapping("/main.do")
	public String main(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(session.getAttribute("loginMember") != null) {
			TblMember loginMember = (TblMember) session.getAttribute("loginMember");
			System.out.println("id : " + loginMember.getMemId());
		}
		return "main";
	}

	
	
	//서브메뉴 요청
	@RequestMapping("/sub.do")
	public String sub(){
		return "sub";
	}
	
	
	
	//모의체험 메뉴 요청
	@RequestMapping("/questionMain.do")
	public String questionMain(){
		return "questionMain";
	}
	@RequestMapping("/questions.do")
	public String questions(){
		return "questions";
	}	
	@RequestMapping("/questionResults.do")
	public String questionResults(){
		return "questionResults";
	}
	
	
	//금융예방교육 메뉴 요청
	@RequestMapping("/edu.do")
	public String edu(){
		return "edu";
	}
	
	
	
	//금융예방교육 게시판 메뉴 요청
	@RequestMapping("/ViBoard.do")
	public String ViBoard(){
		return "ViBoard";
	}
	
	//금융커뮤니티 게시판 메뉴 요청
	@RequestMapping("/CmBoard.do")
	public String CmBoard(){
		return "CmBoard";
	}
	
	//게시판 테스트용~~
	@RequestMapping("/ViBoardTest.do")
	public String ViBoardTest(){
		return "ViBoardTest";
	}	
	
	
}
