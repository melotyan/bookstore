package service;

import dao.UserDao;
import entity.Book;
import entity.User;

public class UserService extends BaseService<User> {

	private UserDao userDao;
	
	public UserService() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	
}
