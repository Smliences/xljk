package com.jpkc.ssh.service.impl;

import java.io.File;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jpkc.ssh.dao.impl.WorkDaoImpl;
import com.jpkc.ssh.entity.Work;
import com.jpkc.ssh.service.WorkService;
import com.jpkc.ssh.utils.FileUtil;

/**
 * 
 * @ClassName: WorkServiceImpl 
 * @Description: 作业的service层实现类
 * @author MJ
 * @date 2017-5-4 下午2:22:34
 *
 */
@Service("workService")
public class WorkServiceImpl implements WorkService{

	@Resource
	private WorkDaoImpl workDao;
	
	@Transactional(readOnly=false)
	public void saveWork(Work work, File file) throws Exception {
		//1.添加作业表信息到数据库
		this.workDao.saveWork(work);
		//2.保存作业文件到本地存储
		FileUtil.save(file,work.getPath());
	}

	@Transactional(readOnly=false)
	public void deleteWork(Integer wid) {
		Work work = workDao.getWork(wid);
		//1.删除硬盘存储的作业文件
		String path = work.getPath();
		FileUtil.delete(path);
		//2.删除数据库作业表的信息
		this.workDao.deleteWork(wid);
	}

	@Transactional(readOnly=false)
	public void deleteWorks(Integer[] wids) {
		//1.删除硬盘存储的作业文件
		//.....
		//2.删除数据库作业表的信息
		this.workDao.deleteWorks(wids);
	}

	@Transactional(readOnly=false)
	public void deleteWorks(Integer uid) {
		//1.删除硬盘存储的作业文件
		//.....
		//2.删除数据库作业表的信息
		this.workDao.deleteWorks(uid);
		
	}

	public List<Work> getWorksByUserID(Integer uid) {
		return this.workDao.getWorksByUserID(uid);
	}

	public File getFile(Integer workid) {
		String path = workDao.getWork(workid).getPath();
		return new File(path);
	}

}
