package kr.board.entity;

import java.sql.Timestamp;

public class TblMember {

    // 회원 아이디 
    private String mem_id;

    // 회원 비밀번호 
    private String memPw;

    // 회원 이름 
    private String memName;

    // 회원 휴대폰 
    private String memPhone;

    // 회원 가입일자 
    private Timestamp memJoindate;

    // 회원 유형 일반회원:'M',  관리자:'A'
    private String memType;

    
	//getter,setter 만들기. 단축키 ait+shift+s
    public String getMem_id() {
    	return mem_id;
    }
    
    public void setMem_id(String mem_id) {
    	this.mem_id = mem_id;
    }

    public String getMemPw() {
        return memPw;
    }

	public void setMemPw(String memPw) {
        this.memPw = memPw;
    }

    public String getMemName() {
        return memName;
    }

    public void setMemName(String memName) {
        this.memName = memName;
    }

    public String getMemPhone() {
        return memPhone;
    }

    public void setMemPhone(String memPhone) {
        this.memPhone = memPhone;
    }

    public Timestamp getMemJoindate() {
        return memJoindate;
    }

    public void setMemJoindate(Timestamp memJoindate) {
        this.memJoindate = memJoindate;
    }

    public String getMemType() {
        return memType;
    }

    public void setMemType(String memType) {
        this.memType = memType;
    }

    // TblMember 모델 복사
    public void CopyData(TblMember param)
    {
    	
        this.mem_id = param.getMem_id();
        this.memPw = param.getMemPw();
        this.memName = param.getMemName();
        this.memPhone = param.getMemPhone();
        this.memJoindate = param.getMemJoindate();
        this.memType = param.getMemType();
    }
    


	@Override
	public String toString() {
		return "TblMember [mem_id=" + mem_id + ", memPw=" + memPw + ", memName=" + memName + "]";
	}
}

