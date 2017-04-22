package com.jpkc.ssh.dao;

import java.util.List;

import com.jpkc.ssh.entity.Question;

public interface QuestionDao {

	void save(Question question);

	List<Question> findAll();

	Question findById(Integer qid);

}
