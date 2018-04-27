package com.a.b.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;
import com.a.b.dao.ApplyDAO;
import com.a.b.vo.ApplyBean;
import com.a.b.vo.PageBean;
@Service
public class ApplyManagement {
	
	@Autowired
	private ApplyDAO ApplyDAO;
	private ModelAndView mav;
	
	// 글쓰기
	public ModelAndView apply(ApplyBean ApplyBean) {
		mav = new ModelAndView();
		int result = ApplyDAO.apply(ApplyBean);
		if(result == 0)
			mav.setViewName("bbs/bbs_main");
		else
			mav.setViewName("bbs/bbs_main");
		return mav;
	}
	// 캠페인 리스트
	public ModelAndView apply_mem_list(int page_num) {
		PageBean pb = new PageBean();
		
		mav = new ModelAndView();
		int end_num = page_num*10;
		int start_num = end_num-9;
		
		pb.setEnd_num(end_num);
		pb.setStart_num(start_num);
		
		System.out.println("list에서 page_num : " +page_num);
		
		List<ApplyBean> apply_mem_list = ApplyDAO.apply_mem_list(pb);
		mav.addObject("now_page", page_num);
		mav.addObject("apply_mem_list", apply_mem_list);
		mav.setViewName("admin/admin_apply");
		return mav;
	}
	//목록 페이징 처리를 위한 글 개수 확인
	public int applylistcnt() {
		int applylistcnt = ApplyDAO.applylistcnt();
		System.out.println("DB에서 가져온 리스트 카운트는?" + applylistcnt);
		return applylistcnt;
	}
	// 신청 캠페인 리스트(개인)
	public ModelAndView apply_list(String MEMBER_ID) {
		mav = new ModelAndView();
		List<ApplyBean> apply_list =  ApplyDAO.apply_list(MEMBER_ID);
		mav.addObject("apply_list",apply_list);
		mav.setViewName("mypage/apply_list");
	return mav;
	}
	// 승인 캠페인 리스트(개인)
	public ModelAndView apply_ok_list(String MEMBER_ID) {
		mav = new ModelAndView();
		List<ApplyBean> apply_ok_list =  ApplyDAO.apply_ok_list(MEMBER_ID);
		mav.addObject("apply_ok_list",apply_ok_list);
		mav.setViewName("mypage/apply_ok_list");
	return mav;
	}
	// 리뷰 작성 페이지 (개인)
	public ApplyBean review(int APPLY_NUMBER) {
		return ApplyDAO.review(APPLY_NUMBER);
	}
	// 신청 상세보기(관리자)
	public ApplyBean apply_view(int APPLY_NUMBER) {
		return ApplyDAO.apply_view(APPLY_NUMBER);
	}
	// 처리 변경
	public void apply_modify(ApplyBean ApplyBean) {
		ApplyDAO.apply_modify(ApplyBean);
		
	}
	// 조회수
	public void apply_count (int EXP_APPLY_MEM) {
		ApplyDAO.apply_count(EXP_APPLY_MEM);
	}
		
	// 삭제
	public void apply_delete(int EXP_APPLY_MEM) {
		ApplyDAO.apply_delete(EXP_APPLY_MEM);		
	}
}
