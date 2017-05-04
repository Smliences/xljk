package com.jpkc.ssh.dao.impl;

import javax.annotation.Resource;

import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.jpkc.ssh.dao.WorkDao;
@Repository("workDao")
public class WorkDaoImpl implements WorkDao{
	@Resource
	private HibernateTemplate hibernateTemplate;
	
}
