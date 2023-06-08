package kr.co.itwu.sugang;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/sugang")
@Controller
public class SugangCont {
	
	public SugangCont() {
		System.out.println("---------SugangController() 객체 생성");
	}
	
	@RequestMapping("/list")
	public String suganglist() {
		return "/sugang/list";
	}//suganglist() end
	
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
