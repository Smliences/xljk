package com.jpkc.ssh.dao;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;

import com.jpkc.ssh.entity.User;
import com.jpkc.ssh.utils.Page;



/**
 * @Description:
 * @Author:		浼犳櫤鎾 java瀛﹂櫌	浼犳櫤.瀹嬫睙
 * @Company:	http://java.itcast.cn
 * @CreateDate:	2014骞�0鏈�1鏃�
 */
public interface BaseDao {

	//鏌ヨ鎵�湁锛屽甫鏉′欢鏌ヨ
	public <T> List<T> find(String hql, Class<T> entityClass, Object[] params);
	//鑾峰彇涓�潯璁板綍
	public <T> T get(Class<T> entityClass, Serializable id);
	//鍒嗛〉鏌ヨ锛屽皢鏁版嵁灏佽鍒颁竴涓猵age鍒嗛〉宸ュ叿绫诲璞�
	public <T> Page<T> findPage(String hql, Page<T> page, Class<T> entityClass, Object[] params);
	
	//鏂板鍜屼慨鏀逛繚瀛�
	public <T> void saveOrUpdate(T entity);
	//鎵归噺鏂板鍜屼慨鏀逛繚瀛�
	public <T> void saveOrUpdateAll(Collection<T> entitys);
	
	//鍗曟潯鍒犻櫎锛屾寜id
	public <T> void deleteById(Class<T> entityClass, Serializable id);
	//鎵归噺鍒犻櫎
	public <T> void delete(Class<T> entityClass, Serializable[] ids);
	public void save(User user);
	public User findByNum(String num);
	public User findByUser(User user);

}