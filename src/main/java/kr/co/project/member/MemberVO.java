package kr.co.project.member;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter @Setter @ToString
public class MemberVO {

	private int no;
	private String id;
	private String pwd;
	private String name;
	private String email;
	private int gender;
	private String birthday;
	private String tel;
	private String zipcode;
	private String addr1;
	private String addr2;
	private Timestamp regdate;
}
