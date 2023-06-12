package kr.co.itwu.hakgwa;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@RequestMapping("/hakgwa")
@Controller
public class HakgwaCont {

	public HakgwaCont() {
		System.out.println("---------HakgwaController() 객체 생성");
	}
	
	@Autowired
	HakgwaDAO hakgwaDAO;
	
	
	//학과 목록
	@RequestMapping("/hakgwalist")
	public ModelAndView hakgwalist() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("hakgwa/hakgwalist");
		mav.addObject("hakgwalist", hakgwaDAO.hakgwalist());
		return mav;
	}//hakgwalist() end
	
	//학과 등록 화면
	@RequestMapping("/hakgwawrite")
	public String hakjukwirte() {
		return "/hakgwa/hakgwawrite";
	}//hakgwawrite()end
	
	//학과 등록 구현
	@RequestMapping("/hakgwaIns")
	public String hakgwaIns(@RequestParam Map<String, Object> map) {
		
		//System.out.println(map.get("dcode"));
		//System.out.println(map.get("dname"));
		
		hakgwaDAO.insert(map);
		
		return "redirect:/hakgwa/hakgwalist";
		
	}//hakgwaIns()end

	
}//class end
