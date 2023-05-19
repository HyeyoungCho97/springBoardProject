package kr.co.project.board.notice;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface NoticeMapper {
	
	int insert(NoticeVO vo);
	int update(NoticeVO vo);
	int delete(NoticeVO vo);
	int count(NoticeVO vo);
	List<NoticeVO> list(NoticeVO vo);
	NoticeVO view(NoticeVO vo);
	int updateViewcount(int no);
	
}