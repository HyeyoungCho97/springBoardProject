package kr.co.project.board.comment;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.project.member.MemberVO;

@Controller
@RequestMapping("/board/comment")
public class CommentController {
	
	@Autowired
	CommentService cService;

}
