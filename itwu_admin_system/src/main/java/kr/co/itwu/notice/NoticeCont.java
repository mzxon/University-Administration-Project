package kr.co.itwu.notice;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@RequestMapping("/notice")
@Controller
public class NoticeCont {
	
	public NoticeCont() {
		System.out.println("---------NoticeController() 객체 생성");
	}
	
	@Autowired
	NoticeDAO noticeDao;
	
	//공지사항 목록 조회	
	@RequestMapping("/list")
	public ModelAndView noticelist() {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("notice/list");
		mav.addObject("list", noticeDao.list());
		
		return mav;
	}//list() end
	
	//공지사항 등록 화면
	@RequestMapping("/write")
	public String noticewrite() {
		return "notice/write";
	}//write() end
	
	//공지사항 등록
	@RequestMapping("/insert")
	public String insert(@RequestParam Map<String, Object> map) {
		noticeDao.insert(map);
		return "redirect:/notice/list";
	}
	
	//공지사항 상세
	@RequestMapping("detail/{no}")
	public ModelAndView detail(@PathVariable int no) {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("notice/detail");
		mav.addObject("notice", noticeDao.detail(no));
		return mav;
	}
	
	
	
	
	
	
	

}//class end
