package kr.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Update;

import kr.board.entity.TblComment;
import kr.board.entity.Board;
import kr.board.entity.TblCommunity;


@Mapper
public interface BoardMapper {
	//자바코드와 sql(xml)을 따로 관리,
	
	

	//맵핑으로 이 둘을 연결시킴
	public List<Board> boardList2();

	public void boardInsert2(Board vo); 

	public Board boardContent2(int theIdx);
	
	//커뮤니티  게시판 업데이트 메소드 
	public void boardUpdate2(Board vo);

	public void boardDelete2(int idx);
	
	public void boardContentUpdate2(Board vo);

	//sql문을 xml로 관리 안하는 경우 
	@Update("update board set count=count+1 where idx=#{idx}") 
	public void updateCount2(int idx);
	
	
	
	
	 
	//커뮤니티 2 ###########################
	public List<TblCommunity> CmboardList();

	public void CmboardInsert(TblCommunity vo); 

	public TblCommunity CmboardContent(int theIdx);
	
	//커뮤니티  게시판 업데이트 메소드 
	public void CmboardUpdate(TblCommunity vo);

	public void CmboardDelete(int commIdx);
	
	public void CmboardContentUpdate(TblCommunity vo);
	
	public void CmupdateCount(int commIdx);
	
	
	
	public List<Board> boardList();

	public void boardInsert(Board vo); 

	public Board boardContent(int theIdx);
	
	//커뮤니티  게시판 업데이트 메소드 
	public void boardUpdate(Board vo);
	// 삭제
	public void boardDelete(int idx);
	//내용 업뎃
	public void boardContentUpdate(Board vo);
	//조회수 업뎃
	public void updateCount(int idx);
	
	

}
