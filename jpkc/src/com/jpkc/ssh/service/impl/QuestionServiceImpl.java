package com.jpkc.ssh.service.impl;


import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jpkc.ssh.dao.QuestionDao;
import com.jpkc.ssh.entity.Question;
import com.jpkc.ssh.service.QuestionService;

@Service("questionService")
@Transactional
public class QuestionServiceImpl implements QuestionService{
	@Resource
	private QuestionDao questionDao;
	public void save(Question question) {
		// TODO Auto-generated method stub
		
		questionDao.save(question);
	}
	
	

	
}
