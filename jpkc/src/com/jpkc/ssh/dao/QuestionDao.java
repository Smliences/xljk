package com.jpkc.ssh.dao;

import java.util.List;

import com.jpkc.ssh.entity.Question;
import com.jpkc.ssh.utils.Page;

public interface QuestionDao {

	void save(Question question);

	List<Question> findAll();

	Question findById(Integer qid);
<<<<<<< HEAD
=======
	
	public <T> Page<T> findPage(String hql, Page<T> page, Class<T> entityClass, Object[] params);
>>>>>>> e41b8a01a2b99c93727230024a9584f1c95c83b7

}
