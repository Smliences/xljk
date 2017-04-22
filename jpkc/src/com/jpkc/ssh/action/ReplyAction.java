package com.jpkc.ssh.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;

import com.jpkc.ssh.entity.Question;
import com.jpkc.ssh.entity.User;
import com.jpkc.ssh.service.QuestionService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
@Controller
public class ReplyAction extends ActionSupport implements ModelDriven<Question> {
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
		List<Question> questionList = questionService.findAll();
		ActionContext.getContext().put("questionList",questionList );
		return "qlist";
	}
	public String toLT(){
		
		
		return "lt";
	}
	public String detail(){
		String qid = ServletActionContext.getRequest().getParameter("qid");
		Integer i = Integer.valueOf(qid);
		Question question = questionService.findById(i);
		ActionContext.getContext().getValueStack().push(question);
		return "detail";
		
		
	}
	
	
	
	

}
