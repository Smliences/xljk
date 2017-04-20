package com.jpkc.ssh.action;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;

import com.jpkc.ssh.entity.User;
import com.jpkc.ssh.service.UserService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

@Controller
public class UserAction extends ActionSupport implements ModelDriven<User>{
	@Resource
	private UserService userService;
	private User user = new User();
	public User getModel() {
		// TODO Auto-generated method stub
		return user;
	}
	private String checkcode;
	
	
	public String getCheckcode() {
		return checkcode;
	}

	public void setCheckcode(String checkcode) {
		this.checkcode = checkcode;
	}

	public String regist() throws Exception{
		if(user.getRole()==false){
			user.setStatus(false);
			userService.save(user);
		}else{
			user.setStatus(true);
			userService.save(user);
		}
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("registsuccess", "注册成功");
		return "login";
	}
	
	public String findByName() throws Exception{
		User existuser = userService.findByNum(user.getNum());
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html;charset=UTF-8");
		if(existuser!=null){
			response.getWriter().println("<font color='red'>用户名已经存在</font>");
		}else {
			response.getWriter().println("<font color='green'>用户名可以使用</font>");
		}
		return NONE;
	}
	public String login() throws Exception{
		HttpSession session = ServletActionContext.getRequest().getSession();
		String existcheckcode = (String) session.getAttribute("checkcode");
		User existUser = userService.findByUser(user);
	
		if(existUser!=null&&existcheckcode.equalsIgnoreCase(checkcode)){
			session.setAttribute("existUser", existUser);
			
			return "msg";
		}
		
		return "login";
		
	}
}
