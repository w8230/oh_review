package com.a.b.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.a.b.dao.ContactDAO;
import com.a.b.vo.ContactBean;
import com.a.b.vo.ContactReplyBean;
import com.a.b.vo.PageBean;

@Service
public class ContactManagement {
	@Autowired
	private ContactDAO cDao;
	private ModelAndView mav;
	
	// 1:1 문의 작성
	public ModelAndView cts_write(ContactBean cb) {
		mav=new ModelAndView();
		//글 작성 성공 실패여부 판단을 위한 처리 부분
		int result = cDao.cts_write(cb);
		if(result==0) {
		mav.setViewName("alert/login_fail");
		}
		else
		mav.setViewName("alert/cts_result");
		return mav;
	}
	
	// 1:1 문의 리스트
	public ModelAndView cts_list(int page_num) {
		PageBean pb = new PageBean();
		
		mav = new ModelAndView();
		int end_num = page_num*10;
		int start_num = end_num-9;
		
		pb.setEnd_num(end_num);
		pb.setStart_num(start_num);

		List<ContactBean> cts_list = cDao.cts_list(pb);
		mav.addObject("now_page", page_num);
		mav.addObject("cts_list", cts_list);
		mav.setViewName("contact/cts_list");
		return mav;
	}
	// 목록 페이징 처리를 위한 글 개수 확인
	public int cts_listcnt() {
		int cts_listcnt = cDao.cts_listcnt();
		return cts_listcnt;
	}
	
	
	// 상세보기
	public ContactBean cts_view(int CTS_NUMBER) {
		return cDao.cts_view(CTS_NUMBER);
	}
	
	// 댓글 작성
	public ModelAndView cts_reply_action(ContactReplyBean ctrb) {
		mav=new ModelAndView();
		int result=cDao.cts_reply_action(ctrb);
		
		if(result==0) {
			mav.setViewName("bbs/bbs_main");
		}else {
			mav.setViewName("cts_view?CTS_NUMBER="+ctrb.getCTS_NUMBER());
		}
		return mav;	
	    }
	//댓글 목록
	public List<ContactReplyBean> cts_reply_list(int CTS_NUMBER) {
		List<ContactReplyBean> cts_reply_list=cDao.cts_reply_list(CTS_NUMBER);
		return cts_reply_list;
		}
	// 작성한 문의 리스트
	public ModelAndView my_contact_list(String MEMBER_ID) {
		mav = new ModelAndView();
		List<ContactBean> my_contact_list =  cDao.my_contact_list(MEMBER_ID);
		mav.addObject("my_contact_list",my_contact_list);
		mav.setViewName("mypage/my_contact_list");
	return mav;
	}
}
