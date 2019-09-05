package com.olive.activity.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.olive.activity.service.ActivityService;
import com.olive.activity.service.ActivityVO;

@Service("activityService")
public class ActivityServiceImpl implements ActivityService{
	
	@Autowired
	private ActivityDAO activityDAO;
	
	@Override
	public void insertActivity(ActivityVO vo) {
		System.out.println(">>> ActivityServiceImpl.insertActivity() 실행 ");
		activityDAO.insertActivity(vo);
	}

	@Override
	public ActivityVO getActivity(ActivityVO vo) {
		System.out.println(">>> ActivityServiceImpl.getActivity() 실행 ");
		return activityDAO.getActivity(vo);
	}

	@Override
	public List<ActivityVO> getActivityList(ActivityVO vo) {
		System.out.println(">>> ActivityServiceImpl.getActivityList() 실행 ");
		return activityDAO.getActivityList(vo);
	}

//	@Override
//	public void updateActivity(ActivityVO vo) {
//		
//	}
//
//	@Override
//	public void deleteActivity(ActivityVO vo) {
//		
//	}

}
