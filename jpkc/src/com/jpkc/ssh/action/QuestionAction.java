package com.jpkc.ssh.action;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.jpkc.ssh.entity.Question;
import com.jpkc.ssh.entity.Reply;
import com.jpkc.ssh.entity.User;
import com.jpkc.ssh.service.QuestionService;
import com.jpkc.ssh.service.ReplyService;
import com.jpkc.ssh.service.UserService;
import com.jpkc.ssh.utils.Page;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
@Controller
@Scope("prototype")
public class QuestionAction extends ActionSupport implements ModelDriven<Question> {
	@Resource
	private QuestionService questionService;
	@Resource
	private ReplyService replyService;
	@Resource
	private UserService userService;
	private Question question  = new Question();
	public Question getModel() {
		// TODO Auto-generated method stub
		return question;
	}
	private Page page = new Page();
	public void setPage(Page page) {
		this.page = page;
	}

	public Page getPage() {
		return page;
	}

	public String toPublishPage(){
		return "toPublishPage";
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
		return "tolt";
	}
	public String toLT(){
		
		page = questionService.findPage("from Question", page, Question.class, null);
		page.setUrl("question_toLT.action");
		ActionContext.getContext().getValueStack().push(page);
		return "lt";
	}
	public String detail(){
		String qid = ServletActionContext.getRequest().getParameter("qid");
		Integer i = Integer.valueOf(qid);
		Question question = questionService.findById(i);
		ActionContext.getContext().getValueStack().push(question);
		List<Reply> replyList =  replyService.findByQid(i);
		ServletActionContext.getContext().put("replyList", replyList);
		List<User> touserList =new ArrayList<User>();
		if(replyList!=null){
			for(int j=0;j<replyList.size();j++){
				Reply l = replyList.get(j);
				if(l.getTouser()!=null){
					touserList.add(userService.findById(l.getTouser()));
				}
			}
		}
		//使用hashset去除重复数据
		HashSet<User> tousers = new HashSet<User>(touserList);
		ServletActionContext.getContext().put("touserList", tousers);
		return "detail";
	}
}
