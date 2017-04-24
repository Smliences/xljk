package com.jpkc.ssh.service;

import java.util.List;

import com.jpkc.ssh.dao.BaseDao;
import com.jpkc.ssh.dao.QuestionDao;
import com.jpkc.ssh.entity.Question;
import com.jpkc.ssh.utils.Page;

public interface QuestionService {

	void save(Question question);

	List<Question> findAll();

	Question findById(Integer qid);

	
    
	public  Page findPage(String hql, Page page, Class entityClass, Object[] params);

	
	
}
