package kr.co.project.board.comment;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter @Setter @ToString
public class CommentVO {
	
	private int no;	//pk
	private String comment;	//내용
	private int memberno;	//글쓴이
	private Timestamp regdate;	//생성일
	private int boardno;	// 게시글의 pk
	private int board_category;		//게시판 구분값
	private int modifydate;		//수정일
}