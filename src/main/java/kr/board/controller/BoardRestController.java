package kr.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import kr.board.entity.TblCommunity;
import kr.board.entity.Board;
import kr.board.entity.TblMember;
import kr.board.mapper.BoardMapper;
import kr.board.mapper.MemberMapper;


@RestController 
public class BoardRestController {
	
	@Autowired
	private BoardMapper Bmapper;
	
	
	//금융예방교육
//	@GetMapping("/board2")
//	public List<Board> boardAjaxList2() { 
//		List<Board> list = Bmapper.boardList2();
//		return list;
//	}
//	@PostMapping("/board2")
//	public void boardAjaxInsert2(Board vo) {
//		Bmapper.boardInsert2(vo);
//	}
//	@DeleteMapping("/board2/{idx}")
//	public void boardAjaxDelete2(@PathVariable int idx) {
//		Bmapper.boardDelete2(idx);
//	}
//	@PutMapping("/board2")
//	public void boardAjaxUpdate2(@RequestBody Board vo) { 
//		Bmapper.boardContentUpdate2(vo);
//	}
//	//조회수 증가 
//	@GetMapping("/updateCount2/{idx}")
//	public Board updateCount2(@PathVariable int idx) {
//		Bmapper.updateCount2(idx);
//		//해당 idx를 가지는 게시글 내용
//		Board vo = Bmapper.boardContent2(idx);
//		//새로 +1된 조회수를 출력하기 위해서 데이터를 보냄
//		return vo;
//	}	

	
	//커뮤니티2 ########################
//	@GetMapping("/TDLCommunity")
//	public List<TblCommunity> CmboardAjaxList() { 
//		List<TblCommunity> list = Bmapper.CmboardList();
//		return list;
//	}
//	@PostMapping("/TDLCommunity")
//	public void CmboardAjaxInsert(TblCommunity vo) {
//		Bmapper.CmboardInsert(vo);
//		System.out.println(vo.getCommDate());
//	}
//	@DeleteMapping("/TDLCommunity/{commIdx}")
//	public void CmboardAjaxDelete(@PathVariable int commIdx) {
//		Bmapper.CmboardDelete(commIdx);
//	}
//	@PutMapping("/TDLCommunity")
//	public void CmboardAjaxUpdate(@RequestBody TblCommunity vo) { 
//		Bmapper.CmboardContentUpdate(vo);
//	}
//	//조회수 증가 
//	@GetMapping("/CmupdateCount/{commIdx}")
//	public TblCommunity CmupdateCount(@PathVariable int commIdx) {
//		Bmapper.CmupdateCount(commIdx);
//		//해당 idx를 가지는 게시글 내용
//		TblCommunity vo = Bmapper.CmboardContent(commIdx);
//		//새로 +1된 조회수를 출력하기 위해서 데이터를 보냄
//		
//		return vo;
//	}
//	
	
	
	
	
	
	
	
	
	
	//커뮤니티1
	@GetMapping("/board")
	public List<Board> boardAjaxList() { 
		//맴버야 보드리스트 xml실행해시켜. 이 일을 리스트에 담아서 리턴에 리스트만 보내면 되기 때문에 
		//이게 jsp가 아님을 레스트컨트롤러라는 @로 알기 때문에 
		List<Board> list = Bmapper.boardList();
		return list;
	}
	@PostMapping("/board")
	//title, content, writer파라미터를 수집해야 하는데 Board.java객체에 알아서 바구니처럼 가지고 올 수 있음 
	//Board.java의 객체를 가져와서 vo라는 이름으로 사용 
	//리턴 필요없고 ajax통신 데이터가 들어가면 vo에 알아서 sql문이 돌아감. 돌려받는 값도 없게됨
	public void boardAjaxInsert(Board vo) {
		Bmapper.boardInsert(vo);
	}
	@DeleteMapping("/board/{idx}")
	public void boardAjaxDelete(@PathVariable int idx) {
		Bmapper.boardDelete(idx);
	}
	@PutMapping("/board")
	public void boardAjaxUpdate(@RequestBody Board vo) { 
		Bmapper.boardContentUpdate(vo);
	}
	//조회수 증가 
	@GetMapping("/updateCount/{idx}")
	public Board updateCount(@PathVariable int idx) {
		Bmapper.updateCount(idx);
		//해당 idx를 가지는 게시글 내용
		Board vo = Bmapper.boardContent(idx);
		//새로 +1된 조회수를 출력하기 위해서 데이터를 보냄
		return vo;
	}
	
	
	
	
	
	//회원정보  업데이트
	@Autowired
	private MemberMapper Mmapper;
	
	@RequestMapping(value="/memUpdate", method=RequestMethod.POST)
	public void memUpdate(@RequestBody TblMember vo) {
		System.out.println("memUpdate 컨트롤러  실행 성공");
		Mmapper.memUpdate(vo);
	}
}
