package com.campus.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;

import com.campus.service.RecordService;
import com.campus.service.UserService;

@Controller
@Transactional
public class UserinfoCtrl{
	@RequestMapping(value = "insertUserinfo")
	public String insertUserinfo(){
		System.out.println("into insertUserinfo controller");
		return "index.jsp";
	}
	
}
