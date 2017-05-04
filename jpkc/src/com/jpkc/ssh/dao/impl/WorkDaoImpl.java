package com.jpkc.ssh.dao.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.jpkc.ssh.dao.WorkDao;
import com.jpkc.ssh.entity.Work;
/**
 * 
 * @ClassName: WorkDaoImpl 
 * @Description: 对数据库作业表操作的实现类
 * @author MJ
 * @date 2017-5-4 下午2:16:31 
 *
 */
@Repository("workDao")
public class WorkDaoImpl implements WorkDao{
	@Resource
	private HibernateTemplate hibernateTemplate;
	
	/**
	 * 保存作业
	 */
	public void saveWork(Work work) {
		this.hibernateTemplate.save(work);
	}

	/**
	 * 根据作业的ID删除作业
	 */
	public void deleteWork(Integer wid) {
		Work work = this.hibernateTemplate.get(Work.class, wid);
		if (work!=null) {
			this.hibernateTemplate.delete(work);
		}
	}

	/**
	 * 根据作业的ID批量删除作业
	 */
	public void deleteWorks(Integer[] wids) {
		List<Work> works = new ArrayList<Work>();
		for (Integer wid : wids) {
			Work work = this.hibernateTemplate.get(Work.class, wid);
			if (work!=null) {
				works.add(work);
			}
		}
		for (int i = 0; i < works.size(); i++) {
			Work work = works.get(i);
			this.hibernateTemplate.delete(work);
		}
	}
	
	/**
	 * 根据用户ID删除用户上传的所有作业
	 */
	public void deleteWorks(Integer uid) {
		List<Work> works = getWorksByUserID(uid);
		for (int i = 0; i < works.size(); i++) {
			Work work = works.get(i);
			this.hibernateTemplate.delete(work);
		}
	}
	
	/**
	 * 根据用户ID获取用户所有的作业
	 */
	public List<Work> getWorksByUserID(Integer uid) {
		return (List<Work>) this.hibernateTemplate.find("from Work where uid = ?", uid);
	}

	public Work getWork(Integer wid) {
		return this.hibernateTemplate.get(Work.class, wid);
	}
	
}
