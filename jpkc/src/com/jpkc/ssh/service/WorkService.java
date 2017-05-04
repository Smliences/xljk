package com.jpkc.ssh.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jpkc.ssh.dao.impl.WorkDaoImpl;

@Service
@Transactional
public class WorkService {
	@Resource
	private WorkDaoImpl workDao;
}
