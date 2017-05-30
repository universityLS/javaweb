package ssm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ssm.dao.AllDao;
import ssm.orm.Userinfo;

@Service
public class UserinfoService {
	@Autowired
	private AllDao allDao;
	public void insertinfo(String username, String password){
		System.out.println("allDao.hasCode=" + allDao.hashCode());
		Userinfo userinfo = new Userinfo(null, username, password);
		allDao.getUserinfoDao().insertUserinfo(userinfo);
	}
}
