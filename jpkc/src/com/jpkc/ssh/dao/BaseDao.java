package com.jpkc.ssh.dao;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;

import com.jpkc.ssh.entity.User;
import com.jpkc.ssh.utils.Page;




public interface BaseDao{

	
	public <T> List<T> find(String hql, Class<T> entityClass, Object[] params);
	
	public <T> T get(Class<T> entityClass, Serializable id);
	
	public <T> Page<T> findPage(String hql, Page<T> page, Class<T> entityClass, Object[] params);
	
	
	public <T> void saveOrUpdate(T entity);
	
	public <T> void saveOrUpdateAll(Collection<T> entitys);
	
	
	public <T> void deleteById(Class<T> entityClass, Serializable id);
	
	public <T> void delete(Class<T> entityClass, Serializable[] ids);
	public void save(User user);
	public User findByNum(String num);
	public User findByUser(User user);

	public User findById(Integer id);

	public List<User> getUserByRole(Boolean role);

}