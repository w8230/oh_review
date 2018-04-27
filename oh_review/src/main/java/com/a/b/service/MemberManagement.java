package com.a.b.service;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import org.apache.commons.mail.HtmlEmail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;
import com.a.b.vo.MemberBean;
import com.a.b.vo.PageBean;
import com.a.b.dao.MemberDAO;

@Service
public class MemberManagement {
	
	@Autowired
	private MemberDAO mDao;
	private ModelAndView mav;
	
	//회원가입 처리를 위한 메소드
		public ModelAndView joinMember(MemberBean mb) {
			mav=new ModelAndView();
			//회원가입 성공, 실패여부 판단을 위한 처리 부분
			int result = mDao.joinMember(mb);
			if(result==0) {
			mav.setViewName("alert/login_fail");
			}
			else
			mav.setViewName("bbs/bbs_main");
			return mav;
		}
		
		// 아이디 중복 검사(AJAX)
		public void check_id(String member_id, HttpServletResponse response) throws Exception {
		PrintWriter out = response.getWriter();
		out.println(mDao.check_id(member_id));
		out.close();
		}
		
		// 이메일 중복 검사(AJAX)
		public void check_email(String member_email, HttpServletResponse response) throws Exception {
		PrintWriter out = response.getWriter();
		out.println(mDao.check_email(member_email));
		out.close();
		}
		
		// 상세보기
		public MemberBean member_mypage(String member_id) {
			return mDao.member_mypage(member_id);
		}
		
		// 수정
		public void MemberModify(MemberBean MemberBean) {
			mDao.MemberModify(MemberBean);
		}
		
		//로그인 처리를 위한 메소드
		public ModelAndView loginCheck(String member_id, String member_password) {
		MemberBean member=new MemberBean(member_id,member_password);
		MemberBean loginMember=mDao.LoginCheck(member);
		mav=new ModelAndView();
		if(loginMember!=null) {
			//id, password가 맞으면 해당 데이터를 login_member라는 속성에 담고 index.jsp로 이동
			mav.addObject("login_member", loginMember);
			mav.setViewName("redirect:bbs_main");
			return mav;
			}else {
			//id, password가 틀리면 index.jsp
			mav.setViewName("alert/login_fail");
			return mav;
			}
		}
		
		//비밀번호찾기 메일 발송 처리
		public void send_mail(MemberBean mb, String div) throws Exception {
		// Mail Server 설정
		String charSet = "utf-8";
		String hostSMTP = "smtp.naver.com";		
		String hostSMTPid = "w8230@naver.com"; // 본인의 아이디 입력		
		String hostSMTPpwd = "@alswl3375"; // 비밀번호 입력

		// 보내는 사람 EMail, 제목, 내용 
		String fromEmail = "w8230@naver.com"; // 보내는 사람 eamil
		String fromName = "오!리뷰 관리자";  // 보내는 사람 이름
		String title = ""; // 제목
		String content = ""; //내용


		if(div.equals("find_pw_action")) {
			title = "오!리뷰 임시 비밀번호 입니다.";
			content += "<div align='center' style='border:1px solid black; font-family:verdana'>";
			content += "<br/>";
			content += "<h3 style='color: green;'>";
			content += "("+mb.getMember_id() + ") 회원님의 임시 비밀번호입니다.</h3>";
			content += "<p style='color: red;'>로그인 후 꼭! 비밀번호를 변경해주세요.</p>";
			content += "<p>임시 비밀번호 : ";
			content += "[" + mb.getMember_password() + "]</p><br/></div>";
		}


		// 받는 사람 E-Mail 주소
		String mail = mb.getMember_email();  // 받는 사람 email

		try {
			HtmlEmail email = new HtmlEmail();
			email.setDebug(true);
			email.setCharset(charSet);
			email.setSSL(true);
			email.setHostName(hostSMTP);
			email.setSmtpPort(465);	// SMTP 포트 번호 입력

			email.setAuthentication(hostSMTPid, hostSMTPpwd);
			email.setTLS(true);
			email.addTo(mail, charSet);
			email.setFrom(fromEmail, fromName, charSet);
			email.setSubject(title);
			email.setHtmlMsg(content); // 본문 내용
			email.send();			
		} catch (Exception e) {
			System.out.println("메일발송 실패: "+ e);
		}

	}

		//비밀번호 찾기 처리
		public void find_pw_action(HttpServletResponse response, MemberBean mb) throws Exception {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		// 아이디가 없으면
		if(mDao.check_id(mb.getMember_id()) == 0) {
			out.print("아이디가 없습니다.");
			out.close();
		}
		// 가입에 사용한 이메일이 아니면
		else if(!mb.getMember_email().equals(mDao.member_mypage(mb.getMember_id()).getMember_email() ) )  {
			out.print("잘못된 이메일 입니다.");
			out.close();

		}else {
			// 임시 비밀번호 생성
			String pw = "";
			for (int i = 0; i < 12; i++) {
				pw += (char) ((Math.random() * 26) + 97);
			}
			mb.setMember_password(pw);
			// 비밀번호 변경
			mDao.update_pw(mb);
			// 비밀번호 변경 메일 발송
			send_mail(mb, "find_pw_action");
			out.println("이메일로 임시 비밀번호를 발송하였습니다");
			out.close();
		}
	}
		// 아이디 찾기
		public ModelAndView find_id_action(String member_name, String member_email) {
		MemberBean member=new MemberBean();
		member.setMember_email(member_email);
		member.setMember_name(member_name);
		System.out.println(member_name+member_email);
		MemberBean find_id_action=mDao.find_id_action(member);
		System.out.println(member.getMember_id());
		mav=new ModelAndView();
		if(find_id_action!=null) {
			mav.addObject("find_id_action", find_id_action);
			mav.setViewName("find/find_id_view");
			return mav;
			}else {
			mav.setViewName("alert/find_fail");
			return mav;
			}
		}
		// 회원 리스트
		public ModelAndView member_list(int page_num) {
			PageBean pb = new PageBean();
			
			mav = new ModelAndView();
			int end_num = page_num*10;
			int start_num = end_num-9;
			
			pb.setEnd_num(end_num);
			pb.setStart_num(start_num);
			
			List<MemberBean> member_list = mDao.member_list(pb);
			mav.addObject("now_page", page_num);
			mav.addObject("member_list", member_list);
			mav.setViewName("admin/admin_index");
			return mav;
		}
		//목록 페이징 처리를 위한 글 개수 확인
		public int memlistcnt() {
			int memlistcnt = mDao.memlistcnt();
			return memlistcnt;
		}
		// 회원 탈퇴
		public void member_delete(String member_id) {
			mDao.member_delete(member_id);		
		}
}
