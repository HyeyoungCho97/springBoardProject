package kr.co.project.board.comment;

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
public class CommentTest {

	@Autowired
	CommentMapper mapper;
	
	@Test
	public void insert() {
		CommentVO vo = new CommentVO();

		vo.setComment("Hello World!");
		vo.setMemberno(2);
		mapper.insert(vo);
	}	
	 
	
	@Test
	public void count() {
		CommentVO vo= new CommentVO();
		vo.setBoardno(0);
		System.out.println("총 개수: "+mapper.count(vo));
	}
	
	@Test
	public void list() {
		CommentVO vo= new CommentVO();
		vo.setBoardno(0);
		mapper.list(vo).forEach(b -> System.out.println(b));
	}
}
