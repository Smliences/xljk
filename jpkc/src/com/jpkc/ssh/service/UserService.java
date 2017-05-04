package com.jpkc.ssh.service;

import java.util.List;

import com.jpkc.ssh.dao.BaseDao;
import com.jpkc.ssh.entity.User;

public interface UserService {

	void save(User user);

	User findByNum(String num);

	User findByUser(User user);
	
	User findById(Integer id) ;

	List<User> getAllStudent();
}
