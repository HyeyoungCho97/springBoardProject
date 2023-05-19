package kr.co.project.board.notice;

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
public class NoticeTest {

	@Autowired
	NoticeMapper mapper;
	
//	@Test
//	public void insertTest() {
//		NoticeVO vo = new NoticeVO();
//		
//		for(int i=101; i<200; i++) {
//			vo.setTitle("제목"+i);
//			vo.setContent("내용"+i);
//			mapper.insert(vo);
//		}	
//	} 
	
	@Test
	public void count() {
		NoticeVO vo= new NoticeVO();
		vo.setStype("title");
		vo.setSword("9");
		System.out.println("총 개수: "+mapper.count(vo));
	}
	
	@Test
	public void list() {
		NoticeVO vo= new NoticeVO();
//		vo.setStype("title");
//		vo.setSword("9");
		mapper.list(vo).forEach(b -> System.out.println(b));
	}
}
