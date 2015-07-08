package dao;

import org.hibernate.Session;
import org.hibernate.Transaction;

import entity.User;

public class UserDao extends BaseDao<User> {
	public void deleteById(String id){
		Session session = getSessionFactory().getCurrentSession();
		Transaction tx = session.beginTransaction();
		try {
			User t = (User) session.get(User.class, id);
			session.delete(t);
			tx.commit();
		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
		}
	}
}
