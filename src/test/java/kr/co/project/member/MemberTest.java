package kr.co.project.member;

import java.util.HashMap;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(classes = {config.MvcConfig.class})
public class MemberTest {

	@Autowired
	MemberMapper mapper;
	
	@Test
	public void insert() {
		MemberVO vo = new MemberVO();
		vo.setId("hong2");
		vo.setPwd("1234");
		vo.setName("홍길동");
		vo.setEmail("hong@gmail.com");
		vo.setGender(1);
		int r = mapper.insert(vo);
		System.out.println(r);
	}
	
	@Test
	public void login() {
		Map map = new HashMap();
		map.put("id", "hong2");
		map.put("pwd", "12345");
		System.out.println(mapper.login(map));
	}
}
