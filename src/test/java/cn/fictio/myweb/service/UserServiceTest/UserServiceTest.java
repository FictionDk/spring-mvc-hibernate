package cn.fictio.myweb.service.UserServiceTest;


import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.fictio.myweb.commUtils.CommUtils;
import cn.fictio.myweb.pojo.User;
import cn.fictio.myweb.service.UserService;

public class UserServiceTest {
	
	@Test
	public void SignUpTest(){
		User u = new User();
		u.setId(CommUtils.scopeRandom(6).toString());
		u.setUserName("张三");
		u.setPassword("123456");
		ClassPathXmlApplicationContext ctx = 
				new ClassPathXmlApplicationContext("applicationContext.xml");
		
		UserService userService = ctx.getBean(UserService.class);
		userService.SignUp(u);
		ctx.close();
	}

}
