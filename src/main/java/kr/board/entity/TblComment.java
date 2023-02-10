package kr.board.entity;

import java.sql.Timestamp;

public class TblComment {

    // 댓글 순번 
    private int cmtIdx;

    // 원글 순번 
    private int commIdx;

    // 댓글 내용 
    private String cmtContent;

    // 댓글 작성일자 
    private Timestamp cmtDate;

    // 댓글 작성자 
    private String mem_id;

    public int getCmtIdx() {
        return cmtIdx;
    }

    public void setCmtIdx(int cmtIdx) {
        this.cmtIdx = cmtIdx;
    }

    public int getCommIdx() {
        return commIdx;
    }

    public void setCommIdx(int commIdx) {
        this.commIdx = commIdx;
    }

    public String getCmtContent() {
        return cmtContent;
    }

    public void setCmtContent(String cmtContent) {
        this.cmtContent = cmtContent;
    }

    public Timestamp getCmtDate() {
        return cmtDate;
    }

    public void setCmtDate(Timestamp cmtDate) {
        this.cmtDate = cmtDate;
    }

    public String getmem_id() {
        return mem_id;
    }

    public void setmem_id(String mem_id) {
        this.mem_id = mem_id;
    }

    // TblComment 모델 복사
    public void CopyData(TblComment param)
    {
        this.cmtIdx = param.getCmtIdx();
        this.commIdx = param.getCommIdx();
        this.cmtContent = param.getCmtContent();
        this.cmtDate = param.getCmtDate();
        this.mem_id = param.getmem_id();
    }
}