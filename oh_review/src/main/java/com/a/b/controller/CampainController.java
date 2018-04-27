package com.a.b.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import com.a.b.vo.CampainBean;
import com.a.b.vo.ReviewBean;
import com.a.b.service.CampainManagement;


@Controller
@SessionAttributes("login_member")
public class CampainController {

	@Autowired
	private CampainManagement cm;
	private ModelAndView mav;
	
	@RequestMapping(value = "/bbs_main", method = RequestMethod.GET)
	public ModelAndView bbs_main() {
		mav = cm.bbs_main();
		return mav; 
	}
	
	// 캠페인 등록
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String write(MultipartHttpServletRequest mtfRequest) {
		//글 쓰기를 위한 메소드 호출
		CampainBean CampainsBean= new CampainBean();
	        String EXP_CATEGORIE=mtfRequest.getParameter("EXP_CATEGORIE").trim(); // 대분류 카테고리
	        String EXP_CATEGORIE_DETAIL=mtfRequest.getParameter("EXP_CATEGORIE_DETAIL").trim(); // 소분류 카테고리
	        String EXP_ADD_CITY=mtfRequest.getParameter("EXP_ADD_CITY").trim(); // 도시
	        String EXP_ADD_DETAIL=mtfRequest.getParameter("EXP_ADD_DETAIL").trim(); // 지역
	        int EXP_RECRUIT_MEM=Integer.parseInt(mtfRequest.getParameter("EXP_RECRUIT_MEM")); // 모집인원
	        String EXP_RECUIT_DATE=mtfRequest.getParameter("EXP_RECUIT_DATE").trim(); // 마감날짜
	        String EXP_TITLE=mtfRequest.getParameter("EXP_TITLE").trim(); // 제목
	        String CONTENT_EXPERIENCE=mtfRequest.getParameter("CONTENT_EXPERIENCE").trim(); // 모집 내용
	        String CONTENT_ENTERPRICE=mtfRequest.getParameter("CONTENT_ENTERPRICE").trim(); // 업체 정보
	        MultipartFile mf = mtfRequest.getFile("EXP_IMG");

	        String path = "C:\\Users\\ICIA002\\Documents\\workspace-sts-3.9.2.RELEASE\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\oh_review\\resources\\upload_bbs\\";

	        String originFileName = mf.getOriginalFilename(); // 원본 파일 명
	        long fileSize = mf.getSize(); // 파일 사이즈
	        CampainsBean.setEXP_CATEGORIE(EXP_CATEGORIE);
	        CampainsBean.setEXP_CATEGORIE_DETAIL(EXP_CATEGORIE_DETAIL);
	        CampainsBean.setEXP_ADD_CITY(EXP_ADD_CITY);
	        CampainsBean.setEXP_ADD_DETAIL(EXP_ADD_DETAIL);
	        CampainsBean.setEXP_RECRUIT_MEM(EXP_RECRUIT_MEM);
	        CampainsBean.setEXP_RECUIT_DATE(EXP_RECUIT_DATE);
	        CampainsBean.setEXP_TITLE(EXP_TITLE);
	        CampainsBean.setCONTENT_EXPERIENCE(CONTENT_EXPERIENCE);
	        CampainsBean.setCONTENT_ENTERPRICE(CONTENT_ENTERPRICE);
	        CampainsBean.setEXP_IMG(originFileName);
	        
	        System.out.println("파일명 : " + originFileName);
	        System.out.println("크기 : " + fileSize);
	        
	        String safeFile = path + originFileName;

	        try {
	            mf.transferTo(new File(safeFile));
	        } catch (IllegalStateException e) {
	            e.printStackTrace();
	        } catch (IOException e) {
	            e.printStackTrace();
	        }
	        
	        cm.write(CampainsBean);   
		return "redirect:admin_forum";
	}	
/*	// 캠페인 리스트 (관리자)
	@RequestMapping(value = "/admin_forum", method = RequestMethod.GET)
	public ModelAndView admin_bbs_list() {
		mav = cm.admin_bbs_list();
		return mav; 
	}*/
	
	// 캠페인 리스트(전체)
	@RequestMapping(value = "/admin_forum", method = RequestMethod.GET)
	public ModelAndView admin_bbs_list(HttpServletRequest request) {
		int page_num = Integer.parseInt(request.getParameter("page_num"));
		double listcnt_double = (double)cm.listcnt()/10;
		int listcnt_int = (int)listcnt_double;
		if(listcnt_double == listcnt_int) {
			request.setAttribute("total_page", listcnt_int);
		}else {
			listcnt_int = listcnt_int+1;
			request.setAttribute("total_page", listcnt_int);
		}
		mav = cm.admin_bbs_list(page_num);
		return mav;
	}
	
	// 먹거리 캠페인 리스트
	@RequestMapping(value = "/bbs_eat", method = RequestMethod.GET)
	public ModelAndView bbs_eat() {
		mav = cm.bbs_eat();
		return mav; 
	}
	// 여행/숙박 캠페인 리스트
	@RequestMapping(value = "/bbs_trip", method = RequestMethod.GET)
	public ModelAndView bbs_trip() {
		mav = cm.bbs_trip();
		return mav; 
	}
	// 뷰티/헬스케어 캠페인 리스트
	@RequestMapping(value = "/bbs_beauty", method = RequestMethod.GET)
	public ModelAndView bbs_beauty() {
		mav = cm.bbs_beauty();
		return mav; 
	}
	// 문화/생활 캠페인 리스트
	@RequestMapping(value = "/bbs_culture", method = RequestMethod.GET)
	public ModelAndView bbs_culture() {
		mav = cm.bbs_culture();
		return mav; 
	}
	// 배송형 캠페인 리스트
	@RequestMapping(value = "/bbs_delivery", method = RequestMethod.GET)
	public ModelAndView bbs_delivery() {
		mav = cm.bbs_delivery();
		return mav; 
	}
	// 의류 캠페인 리스트
	@RequestMapping(value = "/bbs_fashion", method = RequestMethod.GET)
	public ModelAndView bbs_fashion() {
		mav = cm.bbs_fashion();
		return mav; 
	}
	// 글 상세보기로 이동(메인)
	@RequestMapping(value = "/campain_content_view", method = RequestMethod.GET)
	public ModelAndView campain_content_view(@RequestParam("EXP_BBS_NUMBER") int EXP_BBS_NUMBER) {
		cm.increaseViewcnt(EXP_BBS_NUMBER);
		mav = new ModelAndView();
		mav.setViewName("bbs/campain_content_view");
		mav.addObject("campain_content_view", cm.campain_content_view(EXP_BBS_NUMBER));
		mav.addObject("reply_list", cm.reply_list(EXP_BBS_NUMBER));
		return mav; 
	}
	
	// 글 상세보기로 이동(관리자)
	@RequestMapping(value = "/admin_content_modify", method = RequestMethod.GET)
	public ModelAndView admin_content_modify(@RequestParam("EXP_BBS_NUMBER") int EXP_BBS_NUMBER) {
		mav = new ModelAndView();
		mav.setViewName("admin/admin_content_modify");
		mav.addObject("admin_content_modify", cm.admin_content_modify(EXP_BBS_NUMBER));
		return mav; 
	}
	// 캠페인 신청
	@RequestMapping(value = "/campain_apply", method = RequestMethod.GET)
	public ModelAndView campain_apply(@RequestParam("EXP_BBS_NUMBER") int EXP_BBS_NUMBER) {
		mav = new ModelAndView();
		mav.setViewName("apply/campain_apply");
		mav.addObject("campain_apply", cm.campain_apply(EXP_BBS_NUMBER));
		return mav; 
	}
/*	// 글 수정하기
	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String modify(@ModelAttribute CampainBean CampainBean) {
		cm.modify(CampainBean);
		return "alert/close"; 

	}*/
	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String modify(MultipartHttpServletRequest mtfRequest) {
		//글 쓰기를 위한 메소드 호출
		CampainBean CampainsBean= new CampainBean();
	        String EXP_CATEGORIE=mtfRequest.getParameter("EXP_CATEGORIE").trim(); // 대분류 카테고리
	        String EXP_CATEGORIE_DETAIL=mtfRequest.getParameter("EXP_CATEGORIE_DETAIL").trim(); // 소분류 카테고리
	        String EXP_ADD_CITY=mtfRequest.getParameter("EXP_ADD_CITY").trim(); // 도시
	        String EXP_ADD_DETAIL=mtfRequest.getParameter("EXP_ADD_DETAIL").trim(); // 지역
	        int EXP_RECRUIT_MEM=Integer.parseInt(mtfRequest.getParameter("EXP_RECRUIT_MEM")); // 모집인원
	        String EXP_RECUIT_DATE=mtfRequest.getParameter("EXP_RECUIT_DATE").trim(); // 마감날짜
	        String EXP_TITLE=mtfRequest.getParameter("EXP_TITLE").trim(); // 제목
	        String CONTENT_EXPERIENCE=mtfRequest.getParameter("CONTENT_EXPERIENCE").trim(); // 모집 내용
	        String CONTENT_ENTERPRICE=mtfRequest.getParameter("CONTENT_ENTERPRICE").trim(); // 업체 정보
	        MultipartFile mf = mtfRequest.getFile("EXP_IMG");

	        String path = "C:\\Users\\ICIA002\\Documents\\workspace-sts-3.9.2.RELEASE\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\oh_review\\resources\\upload_bbs\\";

	        String originFileName = mf.getOriginalFilename(); // 원본 파일 명
	        long fileSize = mf.getSize(); // 파일 사이즈
	        CampainsBean.setEXP_CATEGORIE(EXP_CATEGORIE);
	        CampainsBean.setEXP_CATEGORIE_DETAIL(EXP_CATEGORIE_DETAIL);
	        CampainsBean.setEXP_ADD_CITY(EXP_ADD_CITY);
	        CampainsBean.setEXP_ADD_DETAIL(EXP_ADD_DETAIL);
	        CampainsBean.setEXP_RECRUIT_MEM(EXP_RECRUIT_MEM);
	        CampainsBean.setEXP_RECUIT_DATE(EXP_RECUIT_DATE);
	        CampainsBean.setEXP_TITLE(EXP_TITLE);
	        CampainsBean.setCONTENT_EXPERIENCE(CONTENT_EXPERIENCE);
	        CampainsBean.setCONTENT_ENTERPRICE(CONTENT_ENTERPRICE);
	        CampainsBean.setEXP_IMG(originFileName);
	        
	        System.out.println("파일명 : " + originFileName);
	        System.out.println("크기 : " + fileSize);
	        
	        String safeFile = path + originFileName;

	        try {
	            mf.transferTo(new File(safeFile));
	        } catch (IllegalStateException e) {
	            e.printStackTrace();
	        } catch (IOException e) {
	            e.printStackTrace();
	        }
	        
	        cm.modify(CampainsBean);   
		return "alert/close";
	}	
	// 글 삭제하기
	@RequestMapping(value = "/delete")
	public String delete(@RequestParam("EXP_BBS_NUMBER") int EXP_BBS_NUMBER) {
		cm.delete(EXP_BBS_NUMBER);
		return "redirect:admin_forum"; 
	}
	
	//검색 기능
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public ModelAndView search_view(@RequestParam("search") String search) {
		mav = cm.search(search);
		return mav;
	}
	// 캠페인 리스트(전체)
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ModelAndView list(HttpServletRequest request) {
		int page_num = Integer.parseInt(request.getParameter("page_num"));
		double listcnt_double = (double)cm.listcnt()/9;
		int listcnt_int = (int)listcnt_double;
		if(listcnt_double == listcnt_int) {
			request.setAttribute("total_page", listcnt_int);
		}else {
			listcnt_int = listcnt_int+1;
			request.setAttribute("total_page", listcnt_int);
		}
		mav = cm.list(page_num);
		return mav;
	}
	//댓글 달기
	@RequestMapping(value = "/review_reply", method = RequestMethod.POST)
	public String review_reply(HttpServletRequest request) {
		
		int EXP_BBS_NUMBER=Integer.parseInt(request.getParameter("EXP_BBS_NUMBER"));
		String EXP_TITLE=request.getParameter("EXP_TITLE");
		String MEMBER_ID=request.getParameter("MEMBER_ID");
		String REV_CONTENT=request.getParameter("REV_CONTENT");
		String REV_DATE=request.getParameter("REV_DATE");

		ReviewBean rb= new ReviewBean();
		rb.setEXP_BBS_NUMBER(EXP_BBS_NUMBER);
		rb.setEXP_TITLE(EXP_TITLE);
		rb.setMEMBER_ID(MEMBER_ID);
		rb.setREV_CONTENT(REV_CONTENT);
		rb.setREV_DATE(REV_DATE);
		cm.review_reply(rb);
		return "redirect:campain_content_view?EXP_BBS_NUMBER="+EXP_BBS_NUMBER;
	}
	// 작성한 리뷰 리스트(개인, 전체)
	@RequestMapping(value = "/review_list", method = RequestMethod.GET)
	public ModelAndView review_list(@RequestParam("MEMBER_ID") String MEMBER_ID) {
		mav = cm.review_list(MEMBER_ID);
		return mav; 
	}

	
	// 리뷰 삭제하기
	@RequestMapping(value = "/review_delete")
	public String review_delete(@RequestParam("REV_NUM") int REV_NUM) {
		cm.review_delete(REV_NUM);
		return "alert/delete_result";
	}
}
