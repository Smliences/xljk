package com.jpkc.ssh.action;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
<<<<<<< HEAD
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
=======
import org.springframework.stereotype.Controller;

>>>>>>> e41b8a01a2b99c93727230024a9584f1c95c83b7
import com.jpkc.ssh.entity.Question;
import com.jpkc.ssh.entity.Reply;
import com.jpkc.ssh.entity.User;
import com.jpkc.ssh.service.QuestionService;
import com.jpkc.ssh.service.ReplyService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
@Controller
<<<<<<< HEAD
@Scope("prototype")
=======
>>>>>>> e41b8a01a2b99c93727230024a9584f1c95c83b7
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
<<<<<<< HEAD
		reply.setTouser(question.getUser().getUid());
=======
		System.out.println(reply.getTouser());
		reply.setTouser(reply.getTouser());
>>>>>>> e41b8a01a2b99c93727230024a9584f1c95c83b7
		reply.setRtime(str);
		reply.setQuestion(question);
		replyService.save(reply);
		
		return "reply";
		
	}
	
	
	
	

}
