package cn.fictio.myweb.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import cn.fictio.myweb.dao.UserDao;
import cn.fictio.myweb.pojo.User;

@Component("userService")
public class UserService {
	
	@Resource
	private UserDao userDao;

	public boolean Login(User u) {
		User user = userDao.getUserByUserName(u);
		System.out.println(user.toString());
		if (user != null && user.getPassword().equals(u.getPassword())){
			return true;
		} else {
			return false;
		}
	}


	public boolean SignUp(User u) {
		userDao.save(u);
		return true;
	}
	
}
