package com.campus.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.campus.entity.Record;
import com.campus.service.RecordService;

@Transactional
@Controller
public class RecordController{
	@Autowired
	private RecordService recordService;
	
	@RequestMapping(value="/indexPage")
	@ResponseBody
	public List<Record> queryIndexMess(){
		System.out.println("132");
		List<Record> list = recordService.getAllRecord();
		System.out.println(list);
		return list;
	}
	
	
	@RequestMapping(value = "/insertRecord")
	@ResponseBody
	public void insertThingsMess(@RequestBody Record record){
		this.recordService.addNewRecord(record);
	}
	
	
}
