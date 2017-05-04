package com.jpkc.ssh.service;

import java.io.File;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jpkc.ssh.dao.impl.WorkDaoImpl;
import com.jpkc.ssh.entity.Work;

public interface WorkService {
	
	void saveWork(Work work,File file) throws Exception;
	
	void deleteWork(Integer wid);
	
	void deleteWorks(Integer[] wids);
	
	void deleteWorks(Integer uid);
	
	List<Work> getWorksByUserID(Integer uid);

	File getFile(Integer workid);
}
