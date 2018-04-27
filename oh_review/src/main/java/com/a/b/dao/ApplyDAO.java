package com.a.b.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.a.b.vo.ApplyBean;
import com.a.b.vo.PageBean;

@Repository
public class ApplyDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	// 글 쓰기
	public int apply(ApplyBean ApplyBean) {
		return sqlSession.insert("ApplyBean.apply", ApplyBean);
	}
	// 캠페인 리스트
	public List<ApplyBean> apply_mem_list(PageBean pb) {
		return sqlSession.selectList("ApplyBean.apply_mem_list", pb);
	}
	// 게시글 카운트
	public int applylistcnt() {
		return sqlSession.selectOne("ApplyBean.applylistcnt");
	}
	// 마이페이지 신청 캠페인 리스트
	public List<ApplyBean> apply_list(String MEMBER_ID) {
		return sqlSession.selectList("ApplyBean.apply_list", MEMBER_ID);
	}
	// 마이페이지 승인 캠페인 리스트
	public List<ApplyBean> apply_ok_list(String MEMBER_ID) {
		return sqlSession.selectList("ApplyBean.apply_ok_list", MEMBER_ID);
	}
	// 리뷰 작성 페이지 (개인)
	public ApplyBean review(int APPLY_NUMBER) {
		return sqlSession.selectOne("ApplyBean.review", APPLY_NUMBER);
	}
	// 캠페인 신청 상세보기 (관리자)
	public ApplyBean apply_view(int APPLY_NUMBER) {
		return sqlSession.selectOne("ApplyBean.apply_view", APPLY_NUMBER);
	}
	// 처리 변경하기 (관리자)
	public int apply_modify(ApplyBean ApplyBean) {
		return sqlSession.update("ApplyBean.apply_modify", ApplyBean);
	}
	// 신청자 수 증가
	public void apply_count(int EXP_APPLY_MEM) {
	sqlSession.update("CampainBean.apply_count", EXP_APPLY_MEM);
	}
	// 글 삭제
	public int apply_delete(int APPLY_NUMBER) {
		return sqlSession.delete("ApplyBean.apply_delete", APPLY_NUMBER);
	}
}
