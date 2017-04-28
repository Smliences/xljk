package com.jpkc.ssh.dao.impl;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.FlushMode;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.jpkc.ssh.dao.BaseDao;
import com.jpkc.ssh.entity.User;
import com.jpkc.ssh.utils.Page;



@Repository("dao")
public class BaseDaoImpl implements BaseDao{
	@Resource
	private HibernateTemplate hibernateTemplate;
	
	
	
	public <T> List<T> find(String hql, Class<T> entityClass, Object[] params) {
		return null;
	
	}
	
	
	public <T> T get(Class<T> entityClass, Serializable id) {
		return null;
		
	}

	
	public <T> Page<T> findPage(String hql, Page<T> page, Class<T> entityClass, Object[] params){
		
		Query query = hibernateTemplate.getSessionFactory().openSession().createQuery(hql);
		if(params!=null){
			for (int i = 0; i < params.length; i++) {
				query.setParameter(i, params[i]);
			}
		}
		
		
		int count = query.list().size();
		page.setTotalRecord(count);
		
		
		query.setFirstResult((page.getPageNo()-1)*page.getPageSize());	
		query.setMaxResults(page.getPageSize());				
		page.setResults((List<T>)query.list());
		
		return page;
	}
	
	
	public <T> void saveOrUpdate(T entity) {
		hibernateTemplate.saveOrUpdate(entity);
	}
	
	
	public <T> void saveOrUpdateAll(Collection<T> entitys){
		for(T entity : entitys){
			this.saveOrUpdate(entity);
		}
	}

	
	public <T> void deleteById(Class<T> entityClass, Serializable id) {
	
	}

	
	public <T> void delete(Class<T> entityClass, Serializable[] ids) {
		for(Serializable s : ids){
			deleteById(entityClass, s);
		}
	}

	public void save(User user) {
		hibernateTemplate.save(user);
	}

	public User findByNum(String num) {
		List<User> list = (List<User>) hibernateTemplate.find("from User where num=?", num);
		if(list!=null&&list.size()>0){
			return list.get(0);
		}		
		return null;
	}

	public User findByUser(User user) {
		List<User> list = (List<User>) hibernateTemplate.find("from User where num=? and  pwd=?", user.getNum(),user.getPwd());
		if(list!=null&&list.size()>0){
			return list.get(0);
		}		
		return null;
	}


	public User findById(Integer id) {
		User user =  hibernateTemplate.get(User.class, id);
		return user;
	}


}

