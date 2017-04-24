package com.jpkc.ssh.service;

import java.util.List;

<<<<<<< HEAD
import com.jpkc.ssh.dao.BaseDao;
import com.jpkc.ssh.dao.QuestionDao;
=======
>>>>>>> e41b8a01a2b99c93727230024a9584f1c95c83b7
import com.jpkc.ssh.entity.Question;
import com.jpkc.ssh.utils.Page;

public interface QuestionService {

	void save(Question question);

	List<Question> findAll();

	Question findById(Integer qid);
<<<<<<< HEAD

	
=======
    
	public  Page findPage(String hql, Page page, Class entityClass, Object[] params);
>>>>>>> e41b8a01a2b99c93727230024a9584f1c95c83b7

	
	
}
