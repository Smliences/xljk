package com.jpkc.ssh.service;

import com.jpkc.ssh.dao.BaseDao;
import com.jpkc.ssh.entity.User;

public interface UserService extends BaseDao{

	void save(User user);

	User findByNum(String num);

	User findByUser(User user);
	
	User findById(Integer id) ;
}
