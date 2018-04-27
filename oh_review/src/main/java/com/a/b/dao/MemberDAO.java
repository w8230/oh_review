package com.a.b.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.a.b.vo.MemberBean;
import com.a.b.vo.PageBean;

@Repository
public class MemberDAO {

	//쿼리문 전송을 위한 root-context 파일에서 설정한 SqlSessionTemplate을 사용
	@Autowired
	private SqlSessionTemplate sqlSession;
	
		// 개인 회원가입
		public int joinMember(MemberBean mb) {
			return sqlSession.insert("MemberBean.memberInsert", mb);
		}
		// 아이디 중복확인(Ajax)
		public int check_id(String member_id) throws Exception{
			return sqlSession.selectOne("MemberBean.check_id",member_id);
		}
		// 이메일 중복 검사(Ajax)
		public int check_email(String member_email) throws Exception{
			return sqlSession.selectOne("MemberBean.check_email", member_email);
		}
		// 로그인
		public MemberBean LoginCheck(MemberBean member) {
			return sqlSession.selectOne("MemberBean.LoginCheck",member);
		}
		// 회원 리스트
		public List<MemberBean> member_list(PageBean pb){
			return sqlSession.selectList("MemberBean.member_list", pb);
		}
		// 회원 수 카운트
		public int memlistcnt() {
			return sqlSession.selectOne("MemberBean.memlistcnt");
		}
		// 마이페이지 (내정보)
		public MemberBean member_mypage(String member_id) {
			return sqlSession.selectOne("MemberBean.member_mypage", member_id);
		}
		// 마이페이지 (수정)
		public int MemberModify(MemberBean MemberBean) {
			return sqlSession.update("MemberBean.MemberModify", MemberBean);
		}
		//임시비밀번호로 변경
		public int update_pw(MemberBean MemberBean) throws Exception{
			return sqlSession.update("MemberBean.update_pw", MemberBean);
		}
		// 아이디 찾기
		public MemberBean find_id_action(MemberBean member) {
			return sqlSession.selectOne("MemberBean.find_id_action",member);
		}
		// 글 삭제
		public int member_delete(String member_id) {
			return sqlSession.delete("MemberBean.member_delete", member_id);
		}
}
