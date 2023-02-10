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
			System.out.println("id : " + loginMember.getMem_id());
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
	
	
	
	//OX퀴즈 메뉴 요청
	@RequestMapping("/OX.do")
	public String OX(){
		return "OX";
	}
	
	//금융예방교육 이미지 게시판 요청
	@RequestMapping("/edu.do")
	public String edu(){
		return "edu";
	}
	
	// TDLCommunity 커뮤니티 게시판
	@RequestMapping("/TDLCommunity.do")
	public String TDLCommunity(){
		return "TDLCommunity";
	}	
	
	//금융커뮤니티 게시판 메뉴 요청
//	@RequestMapping("/CmBoard.do")
//	public String CmBoard(){
//		return "CmBoard";
//	}
	
	
	
}
