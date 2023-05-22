package kr.co.project.board.comment;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CommentMapper {
	
	int insert(CommentVO vo);
	int update(CommentVO vo);
	int delete(CommentVO vo);
	int count(CommentVO vo);
	List<CommentVO> list(CommentVO vo);
}