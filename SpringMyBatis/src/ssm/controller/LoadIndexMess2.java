package ssm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import ssm.orm.ThingsMess;
import ssm.orm.ThingsMessMapper;

@Controller
@Transactional
public class LoadIndexMess2 {
	@Autowired
	private ThingsMessMapper thingsMessMapper;
	
	@RequestMapping(value = "indexPage2",  produces = "application/json")
	@ResponseBody
	public List<ThingsMess> queryIndexMess(){
		List<ThingsMess> list = thingsMessMapper.getAllThingsMess();
		return list;
	}
}
