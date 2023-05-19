package kr.co.project.board.notice;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter @Setter @ToString
public class NoticeVO {
	
	private int no;
	private String title;
	private String content;
	private int viewcount;
	private Timestamp regdate;
	private String filename_org;
	private String filename_real;
	private int memberno;
	private String membername;
	
	private String stype;	//검색타입
	private String sword;	//검색어
	private int startIdx;	//limit 시작인덱스
	private int page;	//사용자가 요청한 페이지
	private int rowPerPage; //페이지당 로우 수
	
	public NoticeVO() {
		this.page=1;
		this.startIdx=0;
		this.rowPerPage=10;
	}
}
