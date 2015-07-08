package action;

import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.ServletActionContext;

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
		ServletActionContext.getRequest().getSession()
		.setAttribute("user", user);
		return SUCCESS;
	}
	
	public String login() {
		User user = userService.get(User.class, userId);
		if (user == null)
			return LOGIN;
		if (userId.equals(user.getId()) && password.equals(user.getPassword())) {
			ServletActionContext.getRequest().getSession()
			.setAttribute("user", user);
			return SUCCESS;
		}
		return LOGIN;
	}
	
	public String logout() {
		ServletActionContext.getRequest().getSession().removeAttribute("user");
		return SUCCESS;
	}
	
	public String editUserInfo() {
		User user = userService.get(User.class, userId);
		if (user == null)
			return ERROR;
		user.setPassword(password);
		user.setAddress(address);
		user.setPhone(phone);
		user.setName(name);
		userService.update(user);
		ServletActionContext.getRequest().getSession().setAttribute("user", user);
		return SUCCESS;
	}
	private List<User> userlist = new ArrayList<User>();
	public List<User> getUserlist() {
		return userlist;
	}


	public void setUserlist(List<User> userlist) {
		this.userlist = userlist;
	}
public String editUserAdmin(){
		/*String uid=ServletActionContext.getRequest().getParameter("id");
		String uname = ServletActionContext.getRequest().getParameter("name");
		String upassword = ServletActionContext.getRequest().getParameter("password");
		String uaddress = ServletActionContext.getRequest().getParameter("address");
		String uphone = ServletActionContext.getRequest().getParameter("phone");
		System.out.println("Delete user from database");
		User user = userService.get(User.class, uid);
		if (user == null)
			return ERROR;
		user.setPassword(upassword);
		user.setAddress(uaddress);
		user.setPhone(uphone);
		user.setName(uname);
		userService.update(user);
		System.out.println("Do action update user...");
		return SUCCESS;*/
		User user = userService.get(User.class, userId);
		if (user == null)
			return ERROR;
		user.setPassword(password);
		user.setAddress(address);
		user.setPhone(phone);
		user.setName(name);
		userService.update(user);
		System.out.println("Do action update user...");
		//ServletActionContext.getRequest().getSession().setAttribute("user", user);
		userlist.clear();
		viewAllUser();
		return SUCCESS;
	}
	public String viewAllUser(){
		System.out.println("view all users from database.");
		String sql = "select * from user order by id desc";
		List<User> users = userService.findBySql(User.class, sql);
		userlist.clear();
		for (User user : users) {
			if (user != null && user.getName().equals("admin") == false)
				userlist.add(user);
		}
		return SUCCESS;
	}
	
	public String deleteUser(){
		String id=ServletActionContext.getRequest().getParameter("id");
		System.out.println("Delete user from database");
		userService.deleteUser(id);
		userlist.clear();
		viewAllUser();
		//userlist.remove(userService.get(User.class, id));
		return SUCCESS;
	}
}
