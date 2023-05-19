package kr.co.project.member;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import util.SendMail;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	MemberMapper mapper;
	
	@Override
	public int insert(MemberVO vo) {
		return mapper.insert(vo);
	}

	@Override
	public MemberVO login(String id, String pwd) {
		Map map = new HashMap();
		map.put("id", id);
		map.put("pwd", pwd);
		return mapper.login(map);
	}

	@Override
	public int dupCheck(String id) {
		Map map = new HashMap();
		map.put("id", id);
		return mapper.dupCheck(map);
	}

	@Override
	public String findId(MemberVO vo) {
		
		return mapper.findId(vo);
	}

	@Override
	public MemberVO findPwd(MemberVO vo) {
		
		MemberVO result= mapper.findPwd(vo);
		SendMail sm = new SendMail();
		if(result != null) {
			//임시 비밀번호(영문2자+숫자2)
			String temp="";
			//영문2자
			for(int i=0; i<2; i++) {
				temp += (char)(Math.random()*26+65);
			}
			//숫자2자
			for(int i=0; i<2; i++) {
				temp += Math.round((Math.random()*10));
			}
			System.out.println(temp);
			result.setPwd(temp);
			mapper.updateTempPwd(result);
			//메일발송
			sm.send("love970922@naver.com", result.getEmail(), "임시비밀번호 발송", temp);
			
			return result;
		}
	
		return null;
	}

}
