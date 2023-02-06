package kr.board.entity;

public class TblVoicepishing {

    // 보이스피싱 번호 
    private int vpSeq;

    // 대출 사기형 
    private String vpLoan;

    // 수사기관 사칭형 
    private String vpAgency;

    public int getVpSeq() {
        return vpSeq;
    }

    public void setVpSeq(int vpSeq) {
        this.vpSeq = vpSeq;
    }

    public String getVpLoan() {
        return vpLoan;
    }

    public void setVpLoan(String vpLoan) {
        this.vpLoan = vpLoan;
    }

    public String getVpAgency() {
        return vpAgency;
    }

    public void setVpAgency(String vpAgency) {
        this.vpAgency = vpAgency;
    }

    // TblVoicepishing 모델 복사
    public void CopyData(TblVoicepishing param)
    {
        this.vpSeq = param.getVpSeq();
        this.vpLoan = param.getVpLoan();
        this.vpAgency = param.getVpAgency();
    }
}