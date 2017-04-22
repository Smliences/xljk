package com.jpkc.ssh.service;

import java.util.List;

import com.jpkc.ssh.dao.BaseDao;
import com.jpkc.ssh.dao.QuestionDao;
import com.jpkc.ssh.entity.Question;
import com.jpkc.ssh.entity.User;

public interface QuestionService extends QuestionDao{

	void save(Question question);

	List<Question> findAll();

	

	
	
}
