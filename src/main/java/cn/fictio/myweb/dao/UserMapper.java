package cn.fictio.myweb.dao;

import cn.fictio.myweb.pojo.User;

public interface UserMapper {
	
	public int insert(User user);
	
	public User getAll();

	public User getUserByName(String userName);

	public int deleteUser(String userName);

}
