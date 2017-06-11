package com.campus.controller;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Transactional
public class InsertUserinfo extends BaseAction{
	@RequestMapping(value = "insertUserinfo")
	public String insertUserinfo(){
		System.out.println("into insertUserinfo controller");
		this.getAllService().getUserinfoService().insertinfo("zzy", "110");
		return "index.jsp";
	}
}
