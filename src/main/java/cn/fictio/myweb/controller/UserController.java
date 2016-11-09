package cn.fictio.myweb.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cn.fictio.myweb.pojo.User;
import cn.fictio.myweb.service.UserService;

@Controller
@RequestMapping(value = "/user")
public class UserController {
	
	@Resource
	private UserService userService;
	
	//host:8080/user/login?userName=张三&password=123
	@RequestMapping(value = "/login",method=RequestMethod.GET)
	public String userLogin(@RequestParam("userName")String userName,
			@RequestParam("password")String password){
		
		User u = new User();
		u.setUserName(userName);
		u.setPassword(password);
		boolean isSuccess = userService.login(u);
		if (isSuccess){
			System.out.println("login sucess!");
			return "loginSuceess";
		} else {
			System.out.println("login failed");
			return "error";
		}
	}
	
	@RequestMapping(value="/signUp",method=RequestMethod.GET)
	public String signUp(@RequestParam("userName")String userName,
			@RequestParam("password") String password){
		
		User u = new User();
		u.setPassword(password);
		u.setUserName(userName);
		
		boolean signSucess = userService.signUp(u);
		if (signSucess){
			return "loginSuceess";
		}else {
			return "error";
		}
	}
	
	public String deleteUser(@RequestParam("userName")String userName,
			@RequestParam("password") String password){
		
		User u = new User();
		u.setPassword(password);
		u.setUserName(userName);
		
		boolean signSucess = userService.deleteUser(u);
		if (signSucess){
			return "sucess";
		}else {
			return "failure";
		}
	}
	
}
