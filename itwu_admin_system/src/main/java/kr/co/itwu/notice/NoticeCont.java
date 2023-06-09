package kr.co.itwu.notice;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/notice")
@Controller
public class NoticeCont {
	
	public NoticeCont() {
		System.out.println("---------NoticeController() 객체 생성");
	}
	
	@RequestMapping("/noticelist")
	public String noticelist() {
		return "/notice/noticelist";
	}//noticelist() end
	
	@RequestMapping("/noticewrite")
	public String noticewrite() {
		return "/notice/noticewrite";
	}//noticewrite() end

}//class end
