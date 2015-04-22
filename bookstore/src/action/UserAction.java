package action;

import org.springframework.beans.factory.annotation.Autowired;

import service.UserService;

import com.opensymphony.xwork2.ActionSupport;

import entity.User;

public class UserAction extends ActionSupport {

	private String userId;
	private String password;
	private String name;
	private String address;
	private String phone;
	private UserService userService;
	
	public String getUserId() {
		return userId;
	}


	public void setUserId(String userId) {
		this.userId = userId;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public UserService getUserService() {
		return userService;
	}


	public void setUserService(UserService userService) {
		this.userService = userService;
	}


	public String register() {
		if (userService.get(User.class, userId) != null)
			return ERROR;
		User user = new User();
		user.setId(userId);
		user.setName(name);
		user.setAddress(address);
		user.setPassword(password);
		user.setPhone(phone);
		userService.save(user);
		return SUCCESS;
	}
	
	public String login() {
		User user = userService.get(User.class, userId);
		if (user == null)
			return ERROR;
		if (userId.equals(user.getId()) && password.equals(user.getPassword()))
			return SUCCESS;
		return ERROR;
	}
}
