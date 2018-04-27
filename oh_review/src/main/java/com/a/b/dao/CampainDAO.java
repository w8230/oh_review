package com.a.b.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.a.b.vo.PageBean;
import com.a.b.vo.ReviewBean;
import com.a.b.vo.CampainBean;

@Repository
public class CampainDAO{

	@Autowired
	private SqlSessionTemplate sqlSession;

	// 글 쓰기
	public int write(CampainBean CampainBean) {
		return sqlSession.insert("CampainBean.write", CampainBean);
	}
	
	// 캠페인 리스트
	public List<CampainBean> list(PageBean pb) {
		return sqlSession.selectList("CampainBean.list", pb);
	}
	// 게시글 카운트
	public int listcnt() {
		return sqlSession.selectOne("CampainBean.listcnt");
	}
	
	// 캠페인 리스트(인기)
	public List<CampainBean> bbs_main() {
		return sqlSession.selectList("CampainBean.bbs_main");
	}
	// 관리자 페이지 캠페인 리스트
	public List<CampainBean> admin_bbs_list(PageBean pb) {
		return sqlSession.selectList("CampainBean.admin_bbs_list", pb);
	}
	// 먹거리 리스트
	public List<CampainBean> bbs_eat() {
		return sqlSession.selectList("CampainBean.bbs_eat");
	}
	// 의류 리스트
	public List<CampainBean> bbs_fashion() {
		return sqlSession.selectList("CampainBean.bbs_fashion");
	}
	// 여행/숙박 리스트
	public List<CampainBean> bbs_trip() {
		return sqlSession.selectList("CampainBean.bbs_trip");
	}
	// 뷰티/헬스케어 리스트
	public List<CampainBean> bbs_beauty() {
		return sqlSession.selectList("CampainBean.bbs_beauty");
	}
	// 문화/생활 리스트
	public List<CampainBean> bbs_culture() {
		return sqlSession.selectList("CampainBean.bbs_culture");
	}
	// 배송형 리스트
	public List<CampainBean> bbs_delivery() {
		return sqlSession.selectList("CampainBean.bbs_delivery");
	}
	// 조회수
	public void increaseViewcnt(int EXP_HIT) {
	sqlSession.update("CampainBean.increaseViewcnt", EXP_HIT);
	}
	// 글 보기
	public CampainBean campain_content_view(int EXP_BBS_NUMBER) {
		return sqlSession.selectOne("CampainBean.view", EXP_BBS_NUMBER);
	}
	// 글 보기(관리자)
	public CampainBean admin_content_modify(int EXP_BBS_NUMBER) {
		return sqlSession.selectOne("CampainBean.admin_content_modify", EXP_BBS_NUMBER);
	}
	// 캠페인 신청
	public CampainBean campain_apply(int EXP_BBS_NUMBER) {
		return sqlSession.selectOne("CampainBean.campain_apply", EXP_BBS_NUMBER);
	}
	// 글 수정하기
	public int modify(CampainBean CampainBean) {
		return sqlSession.update("CampainBean.modify", CampainBean);
	}
	// 글 삭제
	public int delete(int EXP_BBS_NUMBER) {
		return sqlSession.delete("CampainBean.delete", EXP_BBS_NUMBER);
	}
	// 검색
	public List<CampainBean> search(String search) {
		return sqlSession.selectList("CampainBean.searchList", search);
	}
	// 리뷰 등록
	public int review_reply(ReviewBean rb) {
		return sqlSession.insert("ReviewBean.review_reply", rb);
	}
	// 리뷰 리스트
	public List<ReviewBean> reply_list(int EXP_BBS_NUMBER){
		return sqlSession.selectList("ReviewBean.replylist", EXP_BBS_NUMBER);
	}
	// 작성한 리뷰 리스트
	public List<ReviewBean> review_list(String MEMBER_ID) {
		return sqlSession.selectList("ReviewBean.review_list", MEMBER_ID);
	}
	public int review_delete(int REV_NUM) {
		return sqlSession.delete("ReviewBean.review_delete", REV_NUM);
	}
}

