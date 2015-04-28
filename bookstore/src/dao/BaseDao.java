package dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class BaseDao<T extends Serializable> {
	private SessionFactory sessionFactory;
	@SuppressWarnings("rawtypes")
	private Class entityClass;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@SuppressWarnings("rawtypes")
	public Class getEntityClass() {
		return entityClass;
	}

	@SuppressWarnings("rawtypes")
	public void setEntityClass(Class entityClass) {
		this.entityClass = entityClass;
	}

	public void save(T t) {
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		session.save(t);
		session.getTransaction().commit();
	}

	public void delete(T t) {
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		session.delete(t);
		session.getTransaction().commit();
	}

	public void update(T t) {
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		session.update(t);
		session.getTransaction().commit();
	}

	public T get(Serializable id) {
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		T t = (T) session.get(getEntityClass(), id);
		session.getTransaction().commit();
		return t;
	}

	public T get(Class<T> c, Serializable id) {
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		T t = (T) session.get(c, id);
		session.getTransaction().commit();
		return t;
	}

	public List<T> findAll(Class<T> c) throws Exception {
		List<T> list = null;
		String str = "from " + c.getSimpleName();
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		Query query = session.createQuery(str);
		list = query.list();
		session.getTransaction().commit();

		return list;
	}

	public List<T> findBySql(Class<T> c, String sql) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createSQLQuery(sql).addEntity(c);
		List<T> list = query.list();
		session.getTransaction().commit();

		return list;
	}

}
