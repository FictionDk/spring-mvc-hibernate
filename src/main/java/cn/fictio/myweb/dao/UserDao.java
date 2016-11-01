package cn.fictio.myweb.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import cn.fictio.myweb.pojo.User;

@Component("userDao")
public class UserDao {
	
	@Resource
	private SessionFactory sessionFactory;
	
	public User getUserById(User u){
		Session session = getSession();
		return session.get(User.class, u.getId());
	}

	private Session getSession() {
		Session session = null;
		try {
			session = sessionFactory.getCurrentSession();
		} catch (Exception e) {
			session = sessionFactory.openSession();
			System.out.println("错误:e:"+e);
		}
		if (session == null){
			session = sessionFactory.openSession();
		}
		System.out.println("Session = "+session);
		return session;
	}

	public User getUserByUserName(User u) {
		User tempUser = new User();
		tempUser.setUserName(u.getUserName());
		Session session = getSession();
		System.out.println("session"+session);
		
		@SuppressWarnings("unchecked")
		List<User> userList = session.createQuery("From User").getResultList();
		if (userList.isEmpty()){
			return null;
		} else {
			System.out.println("userlist.0 = "+userList.get(0));
			return userList.get(0);
		}
	}

	@Transactional
	public void save(User u) {
		Session session = getSession();
		System.out.println("user = "+u.toString());
		session.save(u);
	}

}
