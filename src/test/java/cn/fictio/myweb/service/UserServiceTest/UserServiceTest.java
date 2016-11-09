package cn.fictio.myweb.service.UserServiceTest;


import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.fictio.myweb.pojo.User;
import cn.fictio.myweb.service.UserService;

public class UserServiceTest {
	
	@Test
	public void SignUpTest(){
		User u = new User();
		u.setUserName("王五");
		u.setPassword("123456");
		ClassPathXmlApplicationContext ctx = 
				new ClassPathXmlApplicationContext("applicationContext.xml");
		
		UserService userService = ctx.getBean(UserService.class);
		boolean flag = userService.signUp(u);
		System.out.println("flag = "+flag);
		ctx.close();
	}
	
	@Test
	public void LoginTest(){
		User u = new User();
		u.setUserName("孙小美");
		u.setPassword("1234598");
		ClassPathXmlApplicationContext ctx = 
				new ClassPathXmlApplicationContext("applicationContext.xml");
		UserService userService = ctx.getBean(UserService.class);
		boolean flag = userService.login(u);
		System.out.println("flag = "+flag);
		ctx.close();
	}
	
	@Test
	public void deleteTest(){
		User u = new User();
		u.setUserName("孙小美");
		u.setPassword("1234598");
		ClassPathXmlApplicationContext ctx = 
				new ClassPathXmlApplicationContext("applicationContext.xml");
		UserService userService = ctx.getBean(UserService.class);
		boolean flag = userService.deleteUser(u);
		System.out.println("flag = "+flag);
		ctx.close();
	}

}
