package com.jpkc.ssh.dao.impl;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.FlushMode;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.jpkc.ssh.dao.BaseDao;
import com.jpkc.ssh.dao.QuestionDao;
import com.jpkc.ssh.entity.Question;
import com.jpkc.ssh.entity.User;
import com.jpkc.ssh.utils.Page;



@Repository("questionDao")
public class QuestionDaoImpl implements QuestionDao{
	@Resource
	private HibernateTemplate hibernateTemplate;

	public void save(Question question) {
		hibernateTemplate.save(question);
	}

	public List<Question> findAll() {
		// TODO Auto-generated method stub
		List<Question> list = (List<Question>) hibernateTemplate.find("from Question");
		if(list!=null&&list.size()>0){
			return list;
		}
		return null;
	}

	public Question findById(Integer qid) {
		// TODO Auto-generated method stub
		List<Question> list = (List<Question>) hibernateTemplate.find("from Question where qid= ?",qid);
		if(list!=null&&list.size()>0){
			return list.get(0);
		}
		return null;
	}
<<<<<<< HEAD
=======

	public <T> Page<T> findPage(String hql, Page<T> page, Class<T> entityClass, Object[] params){
		
		Query query = hibernateTemplate.getSessionFactory().openSession().createQuery(hql);
		if(params!=null){
			for (int i = 0; i < params.length; i++) {
				query.setParameter(i, params[i]);
			}
		}
		
		//查询一次，获取记录总数
		int count = query.list().size();
		page.setTotalRecord(count);
		
		//设置分页
		query.setFirstResult((page.getPageNo()-1)*page.getPageSize());	//设置开始位置
		query.setMaxResults(page.getPageSize());				//设置获取几条
		page.setResults((List<T>)query.list());
		
		return page;
	}
>>>>>>> e41b8a01a2b99c93727230024a9584f1c95c83b7
	
	
	
	

}

