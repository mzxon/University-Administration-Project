package kr.co.itwu.notice;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/notice")
@Controller
public class NoticeCont {
	
	public NoticeCont() {
		System.out.println("---------NoticeController() 객체 생성");
	}
	
	@RequestMapping("/list")
	public String noticelist() {
		return "/notice/list";
	}//noticelist() end
	
	@RequestMapping("/write")
	public String noticewrite() {
		return "/notice/write";
	}//noticewrite() end

}//class end
