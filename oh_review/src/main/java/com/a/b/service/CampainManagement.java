package com.a.b.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;
import com.a.b.vo.CampainBean;
import com.a.b.vo.PageBean;
import com.a.b.vo.ReviewBean;
import com.a.b.dao.CampainDAO;

@Service
public class CampainManagement {

	@Autowired
	private CampainDAO CampainDAO;
	private ModelAndView mav;
	
	// 캠페인 리스트
	public ModelAndView list(int page_num) {
		PageBean pb = new PageBean();
		
		mav = new ModelAndView();
		int end_num = page_num*9;
		int start_num = end_num-9;
		
		pb.setEnd_num(end_num);
		pb.setStart_num(start_num);
		
		System.out.println("list에서 page_num : " +page_num);
		
		List<CampainBean> list = CampainDAO.list(pb);
		mav.addObject("now_page", page_num);
		mav.addObject("list", list);
		mav.setViewName("bbs/list");
		return mav;
	}
	//목록 페이징 처리를 위한 글 개수 확인
	public int listcnt() {
		int listcnt = CampainDAO.listcnt();
		System.out.println("DB에서 가져온 리스트 카운트는?" + listcnt);
		return listcnt;
	}
	
	// 글쓰기
	public ModelAndView write(CampainBean CampainBean) {
		mav = new ModelAndView();
		int result = CampainDAO.write(CampainBean);
		if(result == 0)
			mav.setViewName("admin/admin_forum");
		else
			mav.setViewName("admin/admin_forum");
		return mav;
	}
	
	// 인기 리스트
	public ModelAndView bbs_main() {
		mav = new ModelAndView();
			List<CampainBean> bbs_main =  CampainDAO.bbs_main();
			mav.addObject("bbs_main",bbs_main);
			mav.setViewName("bbs/bbs_main");
			
		return mav;
	}
	
/*	// 관리자 리스트
	public ModelAndView admin_bbs_list() {
		mav = new ModelAndView();
			List<CampainBean> admin_bbs_list =  CampainDAO.admin_bbs_list();
			mav.addObject("admin_bbs_list",admin_bbs_list);
			mav.setViewName("admin/admin_forum");
			
		return mav;
	}*/
	// 캠페인 리스트
	public ModelAndView admin_bbs_list(int page_num) {
		PageBean pb = new PageBean();
		
		mav = new ModelAndView();
		int end_num = page_num*10;
		int start_num = end_num-9;
		
		pb.setEnd_num(end_num);
		pb.setStart_num(start_num);
		
		System.out.println("list에서 page_num : " +page_num);
		
		List<CampainBean> admin_bbs_list = CampainDAO.admin_bbs_list(pb);
		mav.addObject("now_page", page_num);
		mav.addObject("admin_bbs_list", admin_bbs_list);
		mav.setViewName("admin/admin_forum");
		return mav;
	}
	
	// 먹거리 리스트
	public ModelAndView bbs_eat() {
		mav = new ModelAndView();
			List<CampainBean> bbs_eat =  CampainDAO.bbs_eat();
			mav.addObject("bbs_eat",bbs_eat);
			mav.setViewName("bbs/bbs_eat");
		return mav;
	}
	
	// 의류 리스트
	public ModelAndView bbs_fashion() {
		mav = new ModelAndView();
		List<CampainBean> bbs_fashion =  CampainDAO.bbs_fashion();
		mav.addObject("bbs_fashion",bbs_fashion);
		mav.setViewName("bbs/bbs_fashion");
		
		return mav;
	}
	
	// 여행/숙박 리스트
	public ModelAndView bbs_trip() {
		mav = new ModelAndView();
			List<CampainBean> bbs_trip =  CampainDAO.bbs_trip();
			mav.addObject("bbs_trip",bbs_trip);
			mav.setViewName("bbs/bbs_trip");
		return mav;
	}
	
	// 뷰티/헬스케어 리스트
	public ModelAndView bbs_beauty() {
		mav = new ModelAndView();
			List<CampainBean> bbs_beauty =  CampainDAO.bbs_beauty();
			mav.addObject("bbs_beauty",bbs_beauty);
			mav.setViewName("bbs/bbs_beauty");
		return mav;
	}
	
	// 문화/생활 리스트
	public ModelAndView bbs_culture() {
		mav = new ModelAndView();
			List<CampainBean> bbs_culture =  CampainDAO.bbs_culture();
			mav.addObject("bbs_culture",bbs_culture);
			mav.setViewName("bbs/bbs_culture");
		return mav;
	}
	
	// 배송형 리스트
	public ModelAndView bbs_delivery() {
		mav = new ModelAndView();
			List<CampainBean> bbs_delivery =  CampainDAO.bbs_delivery();
			mav.addObject("bbs_delivery",bbs_delivery);
			mav.setViewName("bbs/bbs_delivery");
		return mav;
	}
	
	// 조회수
	public void increaseViewcnt (int EXP_HIT) {
		CampainDAO.increaseViewcnt(EXP_HIT);
	}
	
	// 상세보기
	public CampainBean campain_content_view(int EXP_BBS_NUMBER) {
		return CampainDAO.campain_content_view(EXP_BBS_NUMBER);
	}
	
	// 상세보기(관리자)
	public CampainBean admin_content_modify(int EXP_BBS_NUMBER) {
		return CampainDAO.admin_content_modify(EXP_BBS_NUMBER);
	}
	
	// 캠페인 신청 
	public CampainBean campain_apply(int EXP_BBS_NUMBER) {
		return CampainDAO.campain_apply(EXP_BBS_NUMBER);
	}
	
	// 수정
	public void modify(CampainBean CampainBean) {
		CampainDAO.modify(CampainBean);
		
	}
	 
	// 삭제
	public void delete(int EXP_BBS_NUMBER) {
		CampainDAO.delete(EXP_BBS_NUMBER);		
	}
	
	// 검색
	public ModelAndView search(String search) {
	mav = new ModelAndView();
	List<CampainBean> searchList = CampainDAO.search(search);
	mav.addObject("searchList", searchList);
	mav.setViewName("bbs/bbs_search_list");
	return mav;
	   }
	
	// 리뷰 작성
	public ModelAndView review_reply(ReviewBean rb) {
		mav=new ModelAndView();
		int result=CampainDAO.review_reply(rb);
		
		if(result==0) {
			mav.setViewName("bbs/bbs_main");
		}else {
			mav.setViewName("campain_content_view?EXP_BBS_NUMBER="+rb.getEXP_BBS_NUMBER());
		}
		return mav;	
	    }
	
	//리뷰 목록
	public List<ReviewBean> reply_list(int EXP_BBS_NUMBER) {
		List<ReviewBean> replyList=CampainDAO.reply_list(EXP_BBS_NUMBER);
		return replyList;
		}
	
	// 작성한 리뷰 리스트(개인)
	public ModelAndView review_list(String MEMBER_ID) {
		mav = new ModelAndView();
		List<ReviewBean> review_reply =  CampainDAO.review_list(MEMBER_ID);
		mav.addObject("review_list",review_reply);
		mav.setViewName("mypage/review_list");
	return mav;
	}
	
	//글 삭제를 위한 처리
	public void review_delete(int REV_NUM) {
		CampainDAO.review_delete(REV_NUM);
		
	}
}

