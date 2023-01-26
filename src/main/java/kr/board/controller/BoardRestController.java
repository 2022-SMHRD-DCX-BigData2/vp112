package kr.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import kr.board.entity.Board;
import kr.board.mapper.BoardMapper;


@RestController 
public class BoardRestController {
	
	@Autowired
	private BoardMapper mapper;

	@GetMapping("/board")
	public List<Board> boardAjaxList() { 
		//맴버야 보드리스트 xml실행해시켜. 이 일을 리스트에 담아서 리턴에 리스트만 보내면 되기 때문에 
		//이게 jsp가 아님을 레스트컨트롤러라는 @로 알기 때문에 
		List<Board> list = mapper.boardList();
		return list;
	}
	
	@PostMapping("/board")
	//title, content, writer파라미터를 수집해야 하는데 Board.java객체에 알아서 바구니처럼 가지고 올 수 있음 
	//Board.java의 객체를 가져와서 vo라는 이름으로 사용 
	//리턴 필요없고 ajax통신 데이터가 들어가면 vo에 알아서 sql문이 돌아감. 돌려받는 값도 없게됨
	public void boardAjaxInsert(Board vo) {
		mapper.boardInsert(vo);
	}
	
	@DeleteMapping("/board/{idx}")
	public void boardAjaxDelete(@PathVariable int idx) {
		mapper.boardDelete(idx);
	}
	
	@PutMapping("/board")
	public void boardAjaxUpdate(@RequestBody Board vo) { 
		mapper.boardContentUpdate(vo);
	}
	
	//조회수 증가 
	@GetMapping("/updateCount/{idx}")
	public Board updateCount(@PathVariable int idx) {
		mapper.updateCount(idx);
		//해당 idx를 가지는 게시글 내용
		Board vo = mapper.boardContent(idx);
		//새로 +1된 조회수를 출력하기 위해서 데이터를 보냄
		return vo;
	}
	
}
