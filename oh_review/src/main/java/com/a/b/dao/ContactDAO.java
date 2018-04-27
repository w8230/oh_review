package com.a.b.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.a.b.vo.ContactBean;
import com.a.b.vo.ContactReplyBean;
import com.a.b.vo.PageBean;

@Repository
public class ContactDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	// 1:1 문의 작성
	public int cts_write(ContactBean cb) {
		return sqlSession.insert("ContactBean.cts_write", cb);
	}
	// 캠페인 리스트
	public List<ContactBean> cts_list(PageBean pb) {
		return sqlSession.selectList("ContactBean.cts_list", pb);
	}
	// 게시글 카운트
	public int cts_listcnt() {
		return sqlSession.selectOne("ContactBean.cts_listcnt");
	}
	// 글 상세보기
	public ContactBean cts_view(int CTS_NUMBER) {
		return sqlSession.selectOne("ContactBean.cts_view", CTS_NUMBER);
	}
	// 댓글 등록
	public int cts_reply_action(ContactReplyBean ctrb) {
		return sqlSession.insert("ContactReplyBean.cts_reply_action", ctrb);
	}
	// 댓글 리스트
	public List<ContactReplyBean> cts_reply_list(int CTS_NUMBER){
		return sqlSession.selectList("ContactReplyBean.cts_reply_list", CTS_NUMBER);
	}
	// 작성한 댓글 리스트
	public List<ContactBean> my_contact_list(String MEMBER_ID) {
		return sqlSession.selectList("ContactBean.my_contact_list", MEMBER_ID);
	}
}
