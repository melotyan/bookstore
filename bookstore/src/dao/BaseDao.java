package dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class BaseDao<T extends Serializable> {
	private SessionFactory sessionFactory;
	@SuppressWarnings("rawtypes")

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public void save(T t) {
		Session session = sessionFactory.getCurrentSession();
		Transaction tx = session.beginTransaction();
		try {
			session.save(t);
			tx.commit();
		} catch (Exception e) {
			if (null != tx) { 
		         tx.rollback();//撤销事务 
		         e.printStackTrace(); 
		      } 
		}
	}

	public void delete(T t) {
		Session session = sessionFactory.getCurrentSession();
		Transaction tx = session.beginTransaction();
		try {
			session.delete(t);
			tx.commit();
		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
		}
	}

	public void update(T t) {
		Session session = sessionFactory.getCurrentSession();
		Transaction tx = session.beginTransaction();
		try {
			session.update(t);
			tx.commit();
		} catch (Exception e) {
			if (null != tx) { 
		         tx.rollback();//撤销事务 
		         e.printStackTrace(); 
		      } 
		}
	}

	public T get(Class<T> c, Serializable id) {
		Session session = sessionFactory.getCurrentSession();
		Transaction tx = session.beginTransaction();
		try {
			T t = (T) session.get(c, id);
			tx.commit();
			return t;
		} catch (Exception e) {
			if (null != tx) { 
		         tx.rollback();//撤销事务 
		         e.printStackTrace(); 
		      } 
		}
		return null;
	}

	public List<T> findAll(Class<T> c) throws Exception {
		List<T> list = null;
		String str = "from " + c.getSimpleName();
		Session session = sessionFactory.getCurrentSession();
		Transaction tx = session.beginTransaction();
		try {
			Query query = session.createQuery(str);
			list = query.list();
			tx.commit();
		} catch (Exception e) {
			if (null != tx) {
				tx.rollback();
				e.printStackTrace();
			}
		}
		return list;
	}

	public List<T> findBySql(Class<T> c, String sql) {
		Session session = sessionFactory.getCurrentSession();
		Transaction tx = session.beginTransaction();
		List<T> list = null;
		try {
			Query query = session.createSQLQuery(sql).addEntity(c);
			list = query.list();
			tx.commit();
		} catch (Exception e) {
			if (null != tx) { 
		         tx.rollback();//撤销事务 
		         e.printStackTrace(); 
		      } 
		}
		return list;
	}

}
