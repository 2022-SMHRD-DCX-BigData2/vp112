package kr.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import kr.board.entity.Board;
import kr.board.entity.Member;

@Mapper
public interface BoardMapper {
	//자바코드와 sql(xml)을 따로 관리,
	//맵핑으로 이 둘을 연결시킴
	
	public List<Board> boardList();

	public void boardInsert(Board vo); 

	public Board boardContent(int theIdx);

	//게시판 업데이트하는 메소드 
	public void boardUpdate(Board vo);

	public void boardDelete(int idx);
	
	public void boardContentUpdate(Board vo);

	//sql문을 xml로 관리 안하는 경우 
	@Update("update vp112 set count=count+1 where idx=#{idx}") 
	public void updateCount(int idx);

	
	
	//회원정보
	public Member memberLogin(Member mvo);
}
