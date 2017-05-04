package com.jpkc.ssh.dao;

import java.util.List;

import com.jpkc.ssh.entity.Work;

public interface WorkDao {
	
	void saveWork(Work work);
	
	void deleteWork(Integer wid);
	
	void deleteWorks(Integer[] wids);
	
	void deleteWorks(Integer uid);
	
	List<Work> getWorksByUserID(Integer uid);
	
	Work getWork(Integer wid);
	
}
