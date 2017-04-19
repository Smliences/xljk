package com.jpkc.ssh.action;

import javax.annotation.Resource;

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
	
	public String regist() throws Exception{
		userService.save(user);
		return "msg";
	}
}
