package com.jpkc.ssh.dao;

import java.util.List;

import com.jpkc.ssh.entity.Question;
import com.jpkc.ssh.entity.Reply;

public interface ReplyDao {

	void save(Reply reply);

	List<Reply> findByQid(Integer i);

	

}
