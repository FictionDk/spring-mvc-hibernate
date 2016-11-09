package cn.fictio.myweb.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import cn.fictio.myweb.dao.UserMapper;
import cn.fictio.myweb.pojo.User;

@Component("userService")
public class UserService {
	
	@Autowired
	private UserMapper userMapper;

	@Transactional
	public boolean signUp(User u) {
		User user = userMapper.getUserByName(u.getUserName());
		if (user != null){
			return false;
		}
		int i = userMapper.insert(u);
		if( i != 1){
			return false;
		}
		
		return true;
	}

	public boolean login(User u) {
		User user = userMapper.getUserByName(u.getUserName());
		if(user != null && user.getPassword().equals(u.getPassword())){
			return true;
		}
		return false;
	}

	@Transactional
	public boolean deleteUser(User u) {
		if(login(u)){
			int i = userMapper.deleteUser(u.getUserName());
			if(i == 1){
				return true;
			}
		}
		return false;
	}
	
}
