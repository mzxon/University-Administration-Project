package kr.co.itwu.tuition;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@RequestMapping("/tuition")
@Controller
public class TuituionCont {

	public TuituionCont() {
		System.out.println("---------TuitionController() 객체 생성");
	}
	
	@Autowired
	TuitionDAO tuitionDAO;
	
	//등록금 목록
	@RequestMapping("/list")
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/tuition/list");
		mav.addObject("list",tuitionDAO.list());
		return mav;
	}//list() end
	
	
	//등록금 등록
	@RequestMapping("/write")
	public String write() {
		return "/tuition/write";
	}//write() end
	
	
	
}//class end
