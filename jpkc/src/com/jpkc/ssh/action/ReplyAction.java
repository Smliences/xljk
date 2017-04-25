package com.jpkc.ssh.action;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.jpkc.ssh.entity.Question;
import com.jpkc.ssh.entity.Reply;
import com.jpkc.ssh.entity.User;
import com.jpkc.ssh.service.QuestionService;
import com.jpkc.ssh.service.ReplyService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
@Controller
@Scope("prototype")
public class ReplyAction extends ActionSupport implements ModelDriven<Reply> {
	@Resource
	private ReplyService replyService;
	@Resource
	private QuestionService questionService;
	private Reply reply  = new Reply();
	public Reply getModel() {
		// TODO Auto-generated method stub
		return reply;
	}
	public String publish(){
		User user = (User) ServletActionContext.getRequest().getSession().getAttribute("existUser");
		
		reply.setUser(user);
		String qid = ServletActionContext.getRequest().getParameter("qid");
		
		Integer i = Integer.valueOf(qid);
		Question question = questionService.findById(i);
		long date = new Date().getTime();
		SimpleDateFormat s = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
		String str = s.format(date);
		reply.setTouser(reply.getTouser());
		reply.setRtime(str);
		reply.setQuestion(question);
		replyService.save(reply);
		return "reply";
	}
}
