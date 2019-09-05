package com.olive.activity.view;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.olive.activity.service.ActivityService;
import com.olive.activity.service.ActivityVO;
import com.olive.board.service.BoardVO;

@Controller
public class ActivityController {
	@Autowired
	private ActivityService activityService;
	
	@RequestMapping(value="getActivity.do")
	public void getActivity(ActivityVO vo, HttpServletRequest request ) {
	
	}
}
