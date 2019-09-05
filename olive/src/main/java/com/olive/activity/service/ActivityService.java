package com.olive.activity.service;

import java.util.List;

public interface ActivityService {
	
	void insertActivity(ActivityVO vo);
	
	ActivityVO getActivity(ActivityVO vo);
	List<ActivityVO> getActivityList(ActivityVO vo);
	
//	void updateActivity(ActivityVO vo);
//	
//	void deleteActivity(ActivityVO vo);
	
}
