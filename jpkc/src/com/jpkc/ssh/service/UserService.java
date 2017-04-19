package com.jpkc.ssh.service;

import org.springframework.stereotype.Service;

import com.jpkc.ssh.dao.BaseDao;
import com.jpkc.ssh.entity.User;

public interface UserService extends BaseDao{

	void save(User user);
	
}
