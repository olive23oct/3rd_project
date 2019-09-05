package com.olive.activity.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.olive.activity.service.ActivityVO;

@Repository("activityDAO")
public class ActivityDAO {
	@Autowired
	private SqlSessionTemplate mybatis;

	public ActivityDAO() {
		System.out.println(">> ActivityDAO 객체 생성");
	}
	
	public void insertActivity(ActivityVO vo) {
		System.out.println(">> mybatis로  insertActivity 실행");
		System.out.println("ActivityVO vo : " + vo);
		mybatis.insert("ActivityDAO.insertActivity", vo);
	}
	
	public ActivityVO getActivity(ActivityVO vo) {
		System.out.println(">> mybatis로  getActivity 실행");
		System.out.println("ActivityVO vo : " + vo);
		return mybatis.selectOne("ActivityDAO.getActivity", vo);
	}
	
	public List<ActivityVO> getActivityList(ActivityVO vo) {
		System.out.println(">> mybatis로  getActivityList 실행");
		System.out.println("ActivityVO vo : " + vo);
		return mybatis.selectList("ActivityDAO.getActivityList", vo);
	}
}
