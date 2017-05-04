package com.jpkc.ssh.action;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.util.ServletContextAware;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.jpkc.ssh.entity.User;
import com.jpkc.ssh.entity.Work;
import com.jpkc.ssh.service.UserService;
import com.jpkc.ssh.service.WorkService;
import com.jpkc.ssh.utils.FileUtil;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@Controller("fileAction")
@Scope("prototype")
public class FileAction extends ActionSupport implements ServletContextAware{

	private static final long serialVersionUID = 7070182080126242761L;

	@Resource(name="workService")
	private WorkService workService;
	
	private Integer wid;
	
	private ServletContext context;
	
	/**
	 * 跳转到上传页面
	 * @return
	 */
	public String toUpload(){
		HttpSession session = ServletActionContext.getRequest().getSession();
		User user = (User) session.getAttribute("existUser");
		ActionContext.getContext().put("userid", user.getUid());
		return "upload";
	}
	
	public String deleteFile() throws IOException{
		workService.deleteWork(wid);
		return "tolist";
	}

	public void setServletContext(ServletContext context) {
		this.context = context;
	}

	public Integer getWid() {
		return wid;
	}

	public void setWid(Integer wid) {
		this.wid = wid;
	}
	
	
}
