package service;

import java.io.Serializable;
import java.util.List;

import dao.BaseDao;

public class BaseService<T extends Serializable> {
	private BaseDao<T> baseDao;

	public BaseDao<T> getBaseDao() {
		return baseDao;
	}

	public void setBaseDao(BaseDao<T> baseDao) {
		this.baseDao = baseDao;
	}
	
	public void save(T t) {
		baseDao.save(t);
	}
	
	public void delete(T t) {
		baseDao.delete(t);
	}
	
	public void update(T t) {
		baseDao.update(t);
	}
	
	public T get(Class c, Serializable id) {
		return baseDao.get(c, id);
	}
	
	public List<T> findAll(Class c) {
		List<T> list = null;
		try {
			list = baseDao.findAll(c);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	public List<T> findBySql(Class<T> c, String sql) {
		return baseDao.findBySql(c, sql);
	}
}
