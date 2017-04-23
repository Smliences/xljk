package com.jpkc.ssh.service.impl;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jpkc.ssh.dao.ReplyDao;
import com.jpkc.ssh.entity.Reply;
import com.jpkc.ssh.service.ReplyService;

@Service("replyService")
@Transactional
public class ReplyServiceImpl implements ReplyService{
	@Resource
	private ReplyDao replyDao;

	public void save(Reply reply) {
		// TODO Auto-generated method stub
		replyDao.save(reply);
	}

	public List<Reply> findByQid(Integer i) {
		// TODO Auto-generated method stub
		List<Reply> list = replyDao.findByQid(i);
		return list;
	}
	
	
	

	
}
