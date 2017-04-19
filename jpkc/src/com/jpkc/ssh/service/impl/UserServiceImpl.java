package com.jpkc.ssh.service.impl;


import java.io.Serializable;
import java.util.Collection;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jpkc.ssh.dao.BaseDao;
import com.jpkc.ssh.entity.User;
import com.jpkc.ssh.service.UserService;
import com.jpkc.ssh.utils.Page;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService{
	@Resource
	private BaseDao dao;

	public void save(User user) {
		user.setStatus(false);
		dao.save(user);
		
	}

	public <T> List<T> find(String hql, Class<T> entityClass, Object[] params) {
		// TODO Auto-generated method stub
		return null;
	}

	public <T> T get(Class<T> entityClass, Serializable id) {
		// TODO Auto-generated method stub
		return null;
	}

	public <T> Page<T> findPage(String hql, Page<T> page, Class<T> entityClass,
			Object[] params) {
		// TODO Auto-generated method stub
		return null;
	}

	public <T> void saveOrUpdate(T entity) {
		// TODO Auto-generated method stub
		
	}

	public <T> void saveOrUpdateAll(Collection<T> entitys) {
		// TODO Auto-generated method stub
		
	}

	public <T> void deleteById(Class<T> entityClass, Serializable id) {
		// TODO Auto-generated method stub
		
	}

	public <T> void delete(Class<T> entityClass, Serializable[] ids) {
		// TODO Auto-generated method stub
		
	}
}
