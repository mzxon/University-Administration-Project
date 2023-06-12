package kr.co.itwu.subject;

import java.io.File;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@RequestMapping("/subject")
@Controller
public class SubjectCont {

	public SubjectCont() {
		System.out.println("-----------SubjectController() 객체 생성");
	}
	
	@Autowired
	SubjectDAO subjectDao;
	
	//강의 목록
	@RequestMapping("/list")
	public ModelAndView list() {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("subject/list");
		mav.addObject("list", subjectDao.list());
		
		return mav;
	}//list() end
	
	
	//강의 등록 화면
	@RequestMapping("/write")
	public String write() {
		return "subject/write";
	}//write() end
	
	
	//등록한 강의 db에 등록
	@RequestMapping("/insert")
	public String insert(@RequestParam Map<String, Object>map
					  ,@RequestParam MultipartFile sub_file
					  ,HttpServletRequest req) {
		

		String filename="-";
		if(sub_file != null && !sub_file.isEmpty()) {
			filename=sub_file.getOriginalFilename();
			try {
				ServletContext application=req.getSession().getServletContext();
				String path=application.getRealPath("/storage"); //실제 경로
				sub_file.transferTo(new File(path+"\\"+filename)); //파일저장
				
			} catch (Exception e) {
				e.printStackTrace(); //System.out.println(e);
			}
		}
		
		map.put("filename", filename);
		
		subjectDao.insert(map);
		return "redirect:/subject/list";
		
	}//insert() end
	
	
	//강의 삭제
	@RequestMapping("delete/{subcode}")
	public String delete(@PathVariable String subcode, HttpServletRequest req) {
		//삭제할 파일명(강의계획서)
		String filename=subjectDao.filename(subcode);
		
		//파일 삭제하기
		if(filename != null && !filename.equals("-")) {
			ServletContext application=req.getSession().getServletContext();
			String path=application.getRealPath("/storage"); //실제 물리 경로
			File file=new File(path+"\\"+filename);
			if(file.exists()) {
				file.delete();
			}
		}
		
		subjectDao.delete(subcode); //테이블 행 삭제

		return "redirect:/subject/list";
	}//delete() end
	
	
	//강의상세보기
	@RequestMapping("detail/{subcode}")
	public ModelAndView detail(@PathVariable String subcode) {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("subject/detail");
		mav.addObject("subject", subjectDao.detail(subcode));
		return mav;
	}//detail() end
	
	
	//강의수정
	@RequestMapping("/update")
	public String update(@RequestParam Map<String, Object> map
						,@RequestParam MultipartFile sub_file
						,HttpServletRequest req) {
		
		String filename="-";
		
		if(sub_file != null && sub_file.isEmpty()) {
			filename=sub_file.getOriginalFilename();
			try {
				ServletContext application=req.getSession().getServletContext();
				String path=application.getRealPath("/storage");
				sub_file.transferTo(new File(path+"\\"+filename));
			
			}catch(Exception e){
				e.printStackTrace(); //==System.out.println(e);
			}//try end
		}else {
			String subcode=(String) map.get("subcode");
			Map<String, Object> subject=subjectDao.detail(subcode);
			filename=subject.get("sub_file").toString();
		}//if end
		
		map.put("filename", filename);
		
		subjectDao.update(map);
		return "redirect:/subject/list";
	}//update() end
	
	
	
	
	
	
	
	
}//class() end
