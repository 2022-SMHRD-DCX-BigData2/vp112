package kr.board.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.board.entity.TblMember;

@Mapper
public interface MemberMapper {
	//자바코드와 sql(xml)을 따로 관리,
	//맵핑으로 이 둘을 연결시킴


	
	// 회원가입
	public void memberJoin(TblMember Membervo);

	// 회원정보
	public TblMember memberLogin(TblMember mvo);
	
	// 회원정보 수정
	public void memUpdate(TblMember vo);
	
}
