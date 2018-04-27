package com.a.b.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import com.a.b.service.ApplyManagement;
import com.a.b.vo.ApplyBean;

@Controller
@SessionAttributes("login_member")
public class ApplyController {
	
	@Autowired
	private ApplyManagement ap;
	private ModelAndView mav;
	

	// 캠페인 신청
	@RequestMapping(value = "/apply", method = RequestMethod.POST)
	//빈 타입으로 입력한 내용을 받아온다. 
	public String write(@ModelAttribute ApplyBean ApplyBean, int EXP_BBS_NUMBER) {
		//글 쓰기를 위한 메소드 호출
		ap.apply(ApplyBean);
		ap.apply_count(EXP_BBS_NUMBER);
		//글 쓰기 완료 후 글 목록으로 이동		
		return "redirect:bbs_main";
	}
	
	// 캠페인 리스트(전체)
	@RequestMapping(value = "/apply_mem_list", method = RequestMethod.GET)
	public ModelAndView apply_mem_list(HttpServletRequest request) {
		int page_num = Integer.parseInt(request.getParameter("page_num"));
		
		double listcnt_double = (double)ap.applylistcnt()/10;
		
		int listcnt_int = (int)listcnt_double;
		if(listcnt_double == listcnt_int) {
			request.setAttribute("total_page", listcnt_int);
		}else {
			listcnt_int = listcnt_int+1;
			request.setAttribute("total_page", listcnt_int);
		}
		mav = ap.apply_mem_list(page_num);
		return mav;
		}
	
		// 신청한 캠페인 리스트(개인, 전체)
		@RequestMapping(value = "/apply_list", method = RequestMethod.GET)
		public ModelAndView list(@RequestParam("MEMBER_ID") String MEMBER_ID) {
			mav = ap.apply_list(MEMBER_ID);
			return mav; 
		}
		// 승인한 캠페인 리스트(개인, 승인)
		@RequestMapping(value = "/apply_ok_list", method = RequestMethod.GET)
		public ModelAndView apply_ok_list(@RequestParam("MEMBER_ID") String MEMBER_ID) {
			mav = ap.apply_ok_list(MEMBER_ID);
			return mav; 
		}
		// 리뷰 작성 페이지 이동(개인)
		@RequestMapping(value = "/review", method = RequestMethod.GET)
		public ModelAndView review(@RequestParam("APPLY_NUMBER") int APPLY_NUMBER) {
			mav = new ModelAndView();
			mav.setViewName("mypage/review");
			mav.addObject("review", ap.review(APPLY_NUMBER));
			return mav; 
		}
		// 신청 상세보기 (관리자)
		@RequestMapping(value = "/apply_view", method = RequestMethod.GET)
		public ModelAndView appy_view(@RequestParam("APPLY_NUMBER") int APPLY_NUMBER) {
			mav = new ModelAndView();
			mav.setViewName("admin/apply_view");
			mav.addObject("apply_view", ap.apply_view(APPLY_NUMBER));
			return mav; 
		}
		// 처리 변경 (관리자)
		@RequestMapping(value = "/apply_modify", method = RequestMethod.POST)
		public String modify(@ModelAttribute ApplyBean ApplyBean) {
			ap.apply_modify(ApplyBean);
			return "alert/close"; 

		}
		// 신청서 삭제
		@RequestMapping(value = "/apply_delete")
		public String apply_delete(@RequestParam("APPLY_NUMBER") int APPLY_NUMBER) {
			ap.apply_delete(APPLY_NUMBER);
			return "alert/delete_result"; 
		}
}
