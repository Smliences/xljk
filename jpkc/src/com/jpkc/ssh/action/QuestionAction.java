package com.jpkc.ssh.action;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;

import com.jpkc.ssh.entity.Question;
import com.jpkc.ssh.entity.User;
import com.jpkc.ssh.service.QuestionService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
@Controller
public class QuestionAction extends ActionSupport implements ModelDriven<Question> {
	@Resource
	private QuestionService questionService;
	private Question question  = new Question();
	public Question getModel() {
		// TODO Auto-generated method stub
		return question;
	}
	
	public String publish(){
		
		long date = new Date().getTime();
		SimpleDateFormat s = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
		String str = s.format(date);
		question.setWtime(str);
		User user = (User) ServletActionContext.getRequest().getSession().getAttribute("existUser");
		question.setUser(user);
		questionService.save(question);
		
		return "qlist";
	}
	
	
	
	

}
