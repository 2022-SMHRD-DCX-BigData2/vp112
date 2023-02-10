package kr.board.entity;

import java.math.BigDecimal;
import java.sql.Timestamp;

public class TblCommunity {

    // 글 번호 
    private int commIdx; //idx
    
    // 글 제목 
    private String commTitle; //title

    // 글 내용 
    private String commContent; //content

    // 글 첨부파일 
    private String commFile;

    // 글 작성일자 
    private String commDate;  //indate

    // 회원  아이디 
    private String mem_id; // id
    
    // 글 작성자 
    private String commWriter; //writer

    // 글 조회수 
    private Integer commViews;  //count

    // 글 공감수 
    private BigDecimal commShares;

    public int getCommIdx() {
        return commIdx;
    }

    public void setCommIdx(int commIdx) {
        this.commIdx = commIdx;
    }

    public String getCommTitle() {
        return commTitle;
    }

    public void setCommTitle(String commTitle) {
        this.commTitle = commTitle;
    }

    public String getCommContent() {
        return commContent;
    }

    public void setCommContent(String commContent) {
        this.commContent = commContent;
    }

    public String getCommFile() {
        return commFile;
    }

    public void setCommFile(String commFile) {
        this.commFile = commFile;
    }

    public String getCommDate() {
        return commDate;
    }

    public void setCommDate(String commDate) {
        this.commDate = commDate;
    }

    public String getMem_id() {
        return mem_id;
    }

    public void setMem_id(String mem_id) {
        this.mem_id = mem_id;
    }

    public String getCommWriter() {
    	return commWriter;
    }
    
    public void setCommWriter(String commWriter) {
    	this.commWriter = commWriter;
    }
    
    public Integer getCommViews() {
        return commViews;
    }

    public void setCommViews(Integer commViews) {
        this.commViews = commViews;
    }

    public BigDecimal getCommShares() {
        return commShares;
    }

    public void setCommShares(BigDecimal commShares) {
        this.commShares = commShares;
    }

    // TblCommunity 모델 복사
    public void CopyData(TblCommunity param)
    {
        this.commIdx = param.getCommIdx();
        this.commTitle = param.getCommTitle();
        this.commContent = param.getCommContent();
        this.commFile = param.getCommFile();
        this.commDate = param.getCommDate();
        this.mem_id = param.getMem_id();
        this.commWriter = param.getCommWriter();
        this.commViews = param.getCommViews();
        this.commShares = param.getCommShares();
    }

}