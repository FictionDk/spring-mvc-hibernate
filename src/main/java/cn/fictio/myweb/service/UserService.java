package cn.fictio.myweb.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import cn.fictio.myweb.commUtils.CommUtils;
import cn.fictio.myweb.pojo.User;
import cn.fictio.myweb.pojo.mapper.UserMapper;

@Component("userService")
public class UserService {
	
	@Resource
	private UserMapper userMapper;

	@Transactional
	public boolean SignUp(User u) {
		
		u.setId(CommUtils.scopeRandom(6).toString());
		System.out.println(u);
		userMapper.insertUser(u);
		return true;
	}
	
}
