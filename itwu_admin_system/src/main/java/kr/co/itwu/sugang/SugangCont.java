package kr.co.itwu.sugang;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.itwu.member.MemberDTO;
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
	
	//수강신청 화면
	@RequestMapping("/list")
	public ModelAndView list() {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("sugang/list");
		mav.addObject("list", subjectDao.list());
		
		return mav;
	}
	
	
	//강의 수강신청
	@RequestMapping("/insert/{subcode}")
	public String insert(HttpSession session
						,@PathVariable String subcode
						,@RequestParam("status") int status) {
		Map<String, Object> map = new HashMap<>();
		
		Object obj=session.getAttribute("res");
		MemberDTO code=(MemberDTO)obj;
		//System.out.println(session.getAttribute("res"));
		//System.out.println(code);
		//System.out.println(code.getCode());
		//System.out.println(code.getPasswd());
		
		map.put("subcode", subcode);
		map.put("code", code.getCode());
		map.put("status", status);
		
		sugangDao.insert(map);
		
		return "redirect:/sugang/list";
		
	}//insert() end
	
	
	//수강신청 내역
	@RequestMapping("/mylist")
	public ModelAndView mylist(HttpSession session) {
		
		Object obj=session.getAttribute("res");
		MemberDTO code=(MemberDTO)obj;
		String id=(String)code.getCode();
		System.out.println("---------------------" + id);
		
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("sugang/mylist");
		mav.addObject("mylist", sugangDao.mylist(id));
		
		return mav;
		
	}//sugangmylist() end
	
	
	//장바구니 내역
	@RequestMapping("/cart")
	public ModelAndView cart(HttpSession session) {
		
		Object obj=session.getAttribute("res");
		MemberDTO code=(MemberDTO)obj;
		String id=(String)code.getCode();
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("sugang/cart");
		mav.addObject("cart", sugangDao.cart(id));
		
		return mav;
		
	}//sugangmylist() end
	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping("/timetable")
	public String timetable() {
		return "/sugang/timetable";
	}//timetable() end
	

}//class end
