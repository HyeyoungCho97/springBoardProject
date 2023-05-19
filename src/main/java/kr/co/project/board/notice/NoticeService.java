package kr.co.project.board.notice;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NoticeService {
	
	@Autowired
	NoticeMapper mapper;
	
	public boolean insert(NoticeVO vo) {
		return mapper.insert(vo)>0? true: false;
	}
	public boolean update(NoticeVO vo) {
		return mapper.update(vo)>0? true: false;
	}
	public NoticeVO edit(NoticeVO vo) {
		return mapper.view(vo);
	}
	public boolean delete(NoticeVO vo) {
		return mapper.delete(vo)>0? true: false;
	}

	public NoticeVO view(NoticeVO vo) {
		mapper.updateViewcount(vo.getNo());
		return mapper.view(vo);
	}
	//목록(검색, 페이징)
	public Map index(NoticeVO vo) {
		// 총개수 구하기
		int totalCount= mapper.count(vo);
		// 총페이지수 구하기
		int totalPage = totalCount/vo.getRowPerPage();
		if( totalCount%vo.getRowPerPage() > 0) totalPage++;
		// startIdx 구하기
		int startIdx = (vo.getPage()-1)*vo.getRowPerPage();
		vo.setStartIdx(startIdx);
		// 목록 조회
		List<NoticeVO> list = mapper.list(vo);
		// 페이지 관련 처리
		int endPage = (int)Math.ceil(vo.getPage()/10.0)*10;
		int startPage = endPage-9;
		if (endPage>totalPage) endPage=totalPage;
		boolean prev = startPage>1? true: false;
		boolean next = totalPage>endPage? true: false;
		// map 저장
		Map map = new HashMap();
		map.put("totalCount", totalCount);
		map.put("totalPage", totalPage);
		map.put("list", list);
		map.put("startPage", startPage);
		map.put("endPage", endPage);
		map.put("prev", prev);
		map.put("next", next);
		
		return map;
	}
}
