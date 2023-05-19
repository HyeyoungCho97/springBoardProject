package kr.co.project.member;

public interface MemberService {

	int insert(MemberVO vo);
	MemberVO login(String id, String pwd);
	int dupCheck(String id);
	String findId(MemberVO vo);
	MemberVO findPwd(MemberVO vo);
	
}
