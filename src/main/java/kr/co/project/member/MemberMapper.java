package kr.co.project.member;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberMapper {
	int insert(MemberVO vo);
	MemberVO login(Map map);
	int dupCheck(Map map);
	String findId(MemberVO vo);
	MemberVO findPwd(MemberVO vo);
	int updateTempPwd(MemberVO vo);
}