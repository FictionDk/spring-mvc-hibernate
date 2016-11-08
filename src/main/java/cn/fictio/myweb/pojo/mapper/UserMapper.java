package cn.fictio.myweb.pojo.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import cn.fictio.myweb.pojo.User;

public interface UserMapper {
	
	@Select("SELECT * FROM users WHERE id = #{userId}")
	public User getUser(@Param("userId") String userId);
	
	@Insert("INSERT INTO user(id,userName,password) VALUES(#{user.id},#{user.userName},#{user.password})")
	public void insertUser(@Param("user") User user);

}
