package kr.board.entity;
//게시판이라고 하는 객체(오브젝트) 만들기

public class Board {
	
	// SQL의테이블 이름과 같게 짖는다
	//게시글 번호, 제목, 내용, 작성자, 작성일, 조회수를 가지는 게시판 만들기
	private int idx;
	private String title;
	private String content; // 내용
	private String writer; // 작성자
	private String indate; //작성일
	private int count; //조회수
	private String mem_id; 
	
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getIndate() {
		return indate;
	}
	public void setIndate(String indate) {
		this.indate = indate;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

}
