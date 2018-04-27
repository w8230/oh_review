package com.a.b.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
import com.a.b.vo.MemberBean;
import com.a.b.service.MemberManagement;


@Controller
@SessionAttributes("login_member")
public class MemberController {
	
	@Autowired
	private MemberManagement mm;
	private ModelAndView mav;

		//회원가입
	@RequestMapping(value = "/joinMember", method = RequestMethod.POST)
	public ModelAndView join(MultipartHttpServletRequest mtfRequest) {

		MemberBean mb= new MemberBean();
		String member_id=mtfRequest.getParameter("member_id");
		String member_password=mtfRequest.getParameter("member_password");
		String member_name=mtfRequest.getParameter("member_name");
		String member_blog=mtfRequest.getParameter("member_blog");
		String member_email=mtfRequest.getParameter("member_email");
		String member_postcode=mtfRequest.getParameter("member_postcode");
		String member_address=mtfRequest.getParameter("member_address");
		String member_address_detail=mtfRequest.getParameter("member_address_detail");
		String UPDATEDATE=mtfRequest.getParameter("UPDATEDATE");
		MultipartFile mf=mtfRequest.getFile("member_img");

		String path = "C:\\Users\\ICIA002\\Documents\\workspace-sts-3.9.2.RELEASE\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\oh_review\\resources\\upload_member\\";

		String originFileName = mf.getOriginalFilename(); // 원본 파일 명
		long fileSize = mf.getSize(); // 파일 사이즈
		mb.setMember_id(member_id);
		mb.setMember_password(member_password);
		mb.setMember_name(member_name);
		mb.setMember_blog(member_blog);
		mb.setMember_email(member_email);
		mb.setMember_postcode(member_postcode);
		mb.setMember_address(member_address);
		mb.setMember_address_detail(member_address_detail);
		mb.setUPDATEDATE(UPDATEDATE);;
		mb.setMember_img(originFileName);


		System.out.println("originFileName : " + originFileName);
		System.out.println("fileSize : " + fileSize);

		String safeFile = path + originFileName;

		try {
			mf.transferTo(new File(safeFile));
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		mav=mm.joinMember(mb);   
		return mav;
	}
		//로그인
	@RequestMapping(value = "/MemberLoginAction", method = RequestMethod.POST)
	public ModelAndView login(
		@RequestParam("member_id") String member_id,
		@RequestParam("member_password") String member_password){				
			mav=mm.loginCheck(member_id,member_password);
		return mav;//login_result속성값을 가지고 main.jsp로 이동
	}
		//아이디 중복확인 (AJAX)
	@RequestMapping(value="/check_id", method=RequestMethod.POST)
	public void check_id(@RequestParam("member_id") String member_id, HttpServletResponse response) throws Exception {
		//Service클래스의 idOverlap 메소드 호출
		mm.check_id(member_id, response);
	}
		// 이메일 중복 검사(AJAX)
	@RequestMapping(value = "/check_email", method = RequestMethod.POST)
	public void check_email(@RequestParam("member_email") String member_email, HttpServletResponse response) throws Exception{
		mm.check_email(member_email, response);
	}
		// 마이페이지
		@RequestMapping(value = "/member_mypage", method = RequestMethod.GET)
		public ModelAndView member_mypage(@RequestParam("member_id")String member_id) {
		mav = new ModelAndView();
		mav.setViewName("mypage/member_mypage");
		mav.addObject("member_mypage", mm.member_mypage(member_id));
		return mav; 
	}	
		// 회원 정보 수정
		@RequestMapping(value = "/MemberModify", method = RequestMethod.POST)
		public String MemberModify(@ModelAttribute MemberBean MemberBean) {
			mm.MemberModify(MemberBean);
			return "redirect:logout"; 

	}
		//비밀번호 찾기 처리
		@RequestMapping(value = "/find_pw_action", method = RequestMethod.POST)
		public void find_pw_action(@ModelAttribute MemberBean mb, HttpServletResponse response) throws Exception{
			mm.find_pw_action(response, mb);
	}
		//아이디찾기 처리
		@RequestMapping(value = "/find_id_action", method = RequestMethod.POST)
		public ModelAndView find_id_action(
			@RequestParam("member_name") String member_name,
			@RequestParam("member_email") String member_email){				
			System.out.println(member_name+ member_email);
				mav=mm.find_id_action(member_name,member_email);
			return mav;
		}
		// 캠페인 리스트(전체)
		@RequestMapping(value = "/member_list", method = RequestMethod.GET)
		public ModelAndView member_list(HttpServletRequest request) {
			int page_num = Integer.parseInt(request.getParameter("page_num"));
			
			double listcnt_double = (double)mm.memlistcnt()/10;
			
			int listcnt_int = (int)listcnt_double;
			if(listcnt_double == listcnt_int) {
				request.setAttribute("total_page", listcnt_int);
			}else {
				listcnt_int = listcnt_int+1;
				request.setAttribute("total_page", listcnt_int);
			}
			mav = mm.member_list(page_num);
			return mav;
			}
		// 회원 탈퇴
		@RequestMapping(value = "/member_delete")
		public String member_delete(@RequestParam("member_id") String member_id) {
			mm.member_delete(member_id);
			return "alert/delete_result"; 
		}
	}