package kr.co.project.board.notice;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.project.member.MemberVO;

@Controller
@RequestMapping("/board/notice")
public class NoticeController {
	
	@Autowired
	NoticeService nService;
	
	@GetMapping("/index.do")
	public String index(NoticeVO param, Model model) {
		model.addAttribute("result", nService.index(param));
		return "/board/notice/index";
	}
	
	@GetMapping("/write.do")
	public void write() {
	
	}
	
	@PostMapping("insert.do")
	public String insert(Model model, NoticeVO vo, HttpSession sess) {
		MemberVO loginSession = (MemberVO)sess.getAttribute("loginSession");
		vo.setMemberno(loginSession.getNo());
		if(nService.insert(vo)) {
			model.addAttribute("msg", "정상적으로 등록되었습니다.");
			model.addAttribute("url", "index.do");
		}else {
			model.addAttribute("msg", "등록 실패");
		}
		return "include/alert";
	}
	
	@GetMapping("/view.do")
	public String view(Model model, NoticeVO vo) {
		model.addAttribute("data", nService.view(vo));
		return "/board/notice/view";
	}
	
	@GetMapping("/edit.do")
	public String edit(Model model, NoticeVO vo) {
		model.addAttribute("data", nService.view(vo));
		return "/board/notice/edit";
	}
	
	@PostMapping("update.do")
	public String update(Model model, NoticeVO vo) {
		if(nService.update(vo)) {
			model.addAttribute("msg", "정상적으로 수정되었습니다.");
			model.addAttribute("url", "view.do?no="+vo.getNo());
		}else {
			model.addAttribute("msg", "수정 실패");
		}
		return "include/alert";
	}
	
	@GetMapping("delete.do")
	public String delete(Model model, NoticeVO vo) {
		if(nService.delete(vo)) {
			model.addAttribute("msg", "정상적으로 삭제되었습니다.");
			model.addAttribute("url", "index.do");
		}else {
			model.addAttribute("msg", "삭제 실패");
		}
		return "include/alert";
	}
}
