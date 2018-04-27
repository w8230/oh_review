package com.a.b.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.a.b.service.ContactManagement;
import com.a.b.vo.ContactBean;
import com.a.b.vo.ContactReplyBean;

@Controller
@SessionAttributes("login_member")
public class ContactController {
	
	@Autowired
	private ContactManagement ctsmm;
	private ModelAndView mav;
	
	// 1:1 문의 작성
	@RequestMapping(value = "/cts_write", method = RequestMethod.POST)
	public ModelAndView cts_write(ContactBean cb) {
		mav=ctsmm.cts_write(cb);
		return mav;
	}
	
	// 캠페인 리스트(전체)
	@RequestMapping(value = "/cts_list", method = RequestMethod.GET)
	public ModelAndView cts_list(HttpServletRequest request) {
		int page_num = Integer.parseInt(request.getParameter("page_num"));
		double listcnt_double = (double)ctsmm.cts_listcnt()/10;
		int listcnt_int = (int)listcnt_double;
		if(listcnt_double == listcnt_int) {
			request.setAttribute("total_page", listcnt_int);
		}else {
			listcnt_int = listcnt_int+1;
			request.setAttribute("total_page", listcnt_int);
		}
		mav = ctsmm.cts_list(page_num);
		return mav;
	}
	
	// 1:1 문의 상세보기
	@RequestMapping(value = "/cts_view", method = RequestMethod.GET)
	public ModelAndView cts_view(@RequestParam("CTS_NUMBER")int CTS_NUMBER) {

	mav = new ModelAndView();
	mav.setViewName("contact/cts_view");
	mav.addObject("cts_view", ctsmm.cts_view(CTS_NUMBER));
	mav.addObject("cts_reply_list", ctsmm.cts_reply_list(CTS_NUMBER));
	return mav; 
}	
	// 댓글 작성
	@RequestMapping(value = "/cts_reply_action", method = RequestMethod.POST)
	public String cts_reply_action(HttpServletRequest request) {
		
		int CTS_NUMBER=Integer.parseInt(request.getParameter("CTS_NUMBER"));
		String CTS_RP_CONTENT=request.getParameter("CTS_RP_CONTENT");
		String CTS_RP_DATE=request.getParameter("CTS_RP_DATE");

		ContactReplyBean ctrb= new ContactReplyBean();
		ctrb.setCTS_NUMBER(CTS_NUMBER);
		ctrb.setCTS_RP_CONTENT(CTS_RP_CONTENT);
		ctrb.setCTS_RP_DATE(CTS_RP_DATE);
		ctsmm.cts_reply_action(ctrb);
		return "redirect:cts_view?CTS_NUMBER="+CTS_NUMBER;
	}
	// 작성한 문의 리스트(개인, 전체)
	@RequestMapping(value = "/my_contact_list", method = RequestMethod.GET)
	public ModelAndView my_contact_list(@RequestParam("MEMBER_ID") String MEMBER_ID) {
		mav = ctsmm.my_contact_list(MEMBER_ID);
		return mav; 
	}
}
