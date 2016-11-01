package cn.fictio.myweb.dao;

import javax.annotation.Resource;

import org.springframework.orm.hibernate5.HibernateTemplate;

public class BaseDao {
	
	@Resource
	private HibernateTemplate hibernateTemplate;
	
	public void save(Object o){
		hibernateTemplate.saveOrUpdate(o);
	}
	
	public void getById(){
	}

}
