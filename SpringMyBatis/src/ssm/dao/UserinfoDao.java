package ssm.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ssm.orm.Userinfo;
import ssm.orm.UserinfoMapper;

@Repository
public class UserinfoDao {
	@Autowired
	private UserinfoMapper userinfoMapper;
	public void insertUserinfo(Userinfo userinfo){
		System.out.println("userinfoMapper.hasCode=" + userinfoMapper.hashCode());
		userinfoMapper.insertUserinfo(userinfo);
	}
}
