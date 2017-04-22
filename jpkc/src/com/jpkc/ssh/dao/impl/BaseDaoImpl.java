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
import com.jpkc.ssh.entity.User;
import com.jpkc.ssh.utils.Page;


/**
 * @Description:
 * @Author:		浼犳櫤鎾 java瀛﹂櫌	浼犳櫤.瀹嬫睙
 * @Company:	http://java.itcast.cn
 * @CreateDate:	2014骞�0鏈�1鏃�
 */
@Repository("dao")
public class BaseDaoImpl implements BaseDao{
	@Resource
	private HibernateTemplate hibernateTemplate;
	
	
	//甯︽潯浠舵煡璇�
	public <T> List<T> find(String hql, Class<T> entityClass, Object[] params) {
		return null;
	
	}
	
	//鑾峰彇涓�潯锛屾牴鎹富閿甶d
	public <T> T get(Class<T> entityClass, Serializable id) {
		return null;
		
	}

	//鍒嗛〉鏌ヨ锛屾煡璇袱娆★紝涓�鏌ヨ鎬绘暟锛屼竴娆℃煡璇㈠垎椤佃褰�
	public <T> Page<T> findPage(String hql, Page<T> page, Class<T> entityClass, Object[] params){
		
		Query query = hibernateTemplate.getSessionFactory().openSession().createQuery(hql);
		if(params!=null){
			for (int i = 0; i < params.length; i++) {
				query.setParameter(i, params[i]);
			}
		}
		
		//鏌ヨ涓�锛岃幏鍙栬褰曟�鏁�
		int count = query.list().size();
		page.setTotalRecord(count);
		
		//璁剧疆鍒嗛〉
		query.setFirstResult((page.getPageNo()-1)*page.getPageSize());	//璁剧疆寮�浣嶇疆
		query.setMaxResults(page.getPageSize());				//璁剧疆鑾峰彇鍑犳潯
		page.setResults((List<T>)query.list());
		
		return page;
	}
	
	//鏂板鍜屼慨鏀癸紝hibernate鏍规嵁id鏄惁涓簄ull鑷姩鍒ゆ柇
	public <T> void saveOrUpdate(T entity) {
		hibernateTemplate.saveOrUpdate(entity);
	}
	
	//闆嗗悎淇濆瓨锛岃繖鏃舵柊澧炶繕鏄慨鏀癸紝灏辫嚜鍔ㄥ垽鏂紝璋冪敤鏃舵槸鍚︾畝娲併�閫傚悎鎵归噺鏂板鍜屼慨鏀规椂銆傦紙Mrecord鎺т欢锛�
	public <T> void saveOrUpdateAll(Collection<T> entitys){
		for(T entity : entitys){
			this.saveOrUpdate(entity);//涓轰粈涔坔ibernate鎵归噺鎿嶄綔鏃讹紝瑕佺敤寰幆涓�潯涓�潯璁板綍鍘绘洿鏂帮紵
		}
	}

	//鎸変富閿甶d鍒犻櫎
	public <T> void deleteById(Class<T> entityClass, Serializable id) {
	
	}

	//鎵归噺鍒犻櫎
	public <T> void delete(Class<T> entityClass, Serializable[] ids) {
		for(Serializable s : ids){
			deleteById(entityClass, s);
		}
	}

	public void save(User user) {
		hibernateTemplate.save(user);
	}

	public <T> T findByNum(String num) {
		List<T> list = (List<T>) hibernateTemplate.find("from User where num=?", num);
		if(list!=null&&list.size()>0){
			return list.get(0);
		}		
		return null;
	}

	public <T> T findByUser(T entity) {
		List<T> list = (List<T>) hibernateTemplate.find("from User where num=? and  pwd=?", entity.getNum(),entity.getPwd());
		if(list!=null&&list.size()>0){
			return list.get(0);
		}		
		return null;
	}

	public <T> void save(T entity) {
	
		
	}


}

