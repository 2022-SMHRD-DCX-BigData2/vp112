package kr.board.mapper;

import java.util.List;
import kr.board.entity.MemberVO;

//기본 메서드 세팅 
public interface MemberDAO {
	//자바코드와 sql(xml)을 따로 관리,
	//맵핑으로 이 둘을 연결시킴
	
	//회원 목록
	public List<MemberVO> memberList();
	
	//회원 입력
	public void insertMember(MemberVO vo);
	
	//회원 정보 상세보기
	public MemberVO viewMember();
	
	//회원삭제
	public void deleteMember(String userId);
	
	//회원정보 수정
	public void updateMember(MemberVO vo);
	
}

