package ssm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AllService {
	@Autowired
	private UserinfoService userinfoService;
	public UserinfoService getUserinfoService(){
		System.out.println("userinfoService.hasCode=" + userinfoService.hashCode());
		return userinfoService;
	}
}
