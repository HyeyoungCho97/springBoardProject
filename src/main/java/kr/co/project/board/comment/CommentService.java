package kr.co.project.board.comment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommentService {
	
	@Autowired
	CommentMapper mapper;
	
	public boolean insert(CommentVO vo) {
		return mapper.insert(vo)>0? true:false;
	}
	public boolean update(CommentVO vo) {
		return mapper.insert(vo)>0? true:false;
	}
	public boolean delete(CommentVO vo) {
		return mapper.insert(vo)>0? true:false;
	}
	
	public List<CommentVO> list(CommentVO vo){
		return mapper.list(vo);
	}
}
