package com.jpkc.ssh.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.jpkc.ssh.dao.ReplyDao;
import com.jpkc.ssh.entity.Reply;



@Repository("replyDao")
public class ReplyDaoImpl implements ReplyDao{
	@Resource
	private HibernateTemplate hibernateTemplate;

	public void save(Reply reply) {
		// TODO Auto-generated method stub
		hibernateTemplate.save(reply);
	}

	public List<Reply> findByQid(Integer i) {
		// TODO Auto-generated method stub
		List<Reply> list = (List<Reply>) hibernateTemplate.find("from Reply where qid = ?", i);
		
		if(list!=null&&list.size()>0){
			return list;
		}
		return null;
	}

	
	
	
	
	

}

