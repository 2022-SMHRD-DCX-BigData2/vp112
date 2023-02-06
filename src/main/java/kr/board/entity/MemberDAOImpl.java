package kr.board.entity;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.board.mapper.MemberDAO;

//현재 클래스를 DAO bead으로 등록시킴
//회원목록 구현
// 맵퍼입니다.
@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Inject
	
	SqlSession sqlSession;
	
	
	//회원 목록
	@Override
	public List<MemberVO> memberList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insertMember(MemberVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public MemberVO viewMember() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteMember(String userId) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateMember(MemberVO vo) {
		// TODO Auto-generated method stub
		
	}
}
