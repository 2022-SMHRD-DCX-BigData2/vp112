package kr.board.controller;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import kr.board.entity.Board;
import kr.board.mapper.BoardMapper;

@Controller
public class BoardController {
	
	@Autowired
	//보드맵퍼를 맵퍼 로 가져다 쓸거다
	private BoardMapper mapper;
	
//	@GetMapping("/main.do")
//	public String main() {
//		//webapp/WEB-INF/views에 있는 jsp로 이동
//		return "main";
//	}

	
	@RequestMapping("/main.do")
	public void main() {}
	//디폴트 경로로 메소드의 이름과같은 view를 연결해준다.
	
 
	
	//로그인 요청
	@GetMapping("/login.do")
	public String login() {
		return "login";
	}
	//회원가입 요청
	@GetMapping("/SignUp.do")
	public String SignUp(){
		return "SignUp";
	}
	//로그인 등록버튼 요청- id,pw데이터가 넘어옴
	@RequestMapping("/LoginInsert.do")
	public String LoginInsert(){
		return "LoginInsert";
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
	
	

	
	//커뮤니티게시판 메뉴 요청
	@RequestMapping("/CmBoard.do")
	public String CmBoard(){
		return "CmBoard";
	}
}
