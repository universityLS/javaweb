package com.campus.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import ssm.service.AllService;

@Controller
public class BaseAction {
	@Autowired
	private AllService allService;
	public AllService getAllService(){
		System.out.println("allService.hasCode=" + allService.hashCode());
		return allService;
	}
}
