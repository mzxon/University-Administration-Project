package kr.co.itwu.sugang;

import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.itwu.subject.SubjectDAO;

@RequestMapping("/sugang")
@Controller
public class SugangCont {
	
	public SugangCont() {
		System.out.println("---------SugangController() 객체 생성");
	}
	
	@Autowired
	SubjectDAO subjectDao;
	
	@Autowired
	SugangDAO sugangDao;
	
	//강의 목록
	@RequestMapping("/list")
	public ModelAndView list() {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("sugang/list");
		mav.addObject("list", subjectDao.list());
		
		return mav;
	}
	
	
	//강의 수강신청
	@RequestMapping("insert/{subcode}")
	public String insert(@PathVariable String subcode, HttpServletResponse response) {
		Map<String, Object> map=subjectDao.detail(subcode);
		
		sugangDao.insert(map);
		
	}
	
	
	//강의 담기(장바구니)
	
	
	
	
	
	
	
	
	
	
	@RequestMapping("/mylist")
	public String sugangmylist() {
		return "/sugang/mylist";
	}//sugangmylist() end
	
	@RequestMapping("/timetable")
	public String timetable() {
		return "/sugang/timetable";
	}//timetable() end
	
	@RequestMapping("/cart")
	public String cart() {
		return "/sugang/cart";
	}//cart() end

}//class end
