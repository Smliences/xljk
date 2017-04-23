package com.jpkc.ssh.action;

import java.io.IOException;
import java.util.Collection;
import java.util.Map;

import javax.servlet.ServletContext;

import org.apache.struts2.util.ServletContextAware;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.jpkc.ssh.utils.FileUtil;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@Controller("fileAction")
@Scope("prototype")
public class FileAction extends ActionSupport implements ServletContextAware{
	
	private ServletContext context;
	
	private String fileflag;
	
	public String getAllFileMessage() {
		String path = this.context.getRealPath("/upload");
		Collection<Map<String, String>> list = FileUtil.getFileMessageFromDirectory(path);
		ActionContext.getContext().put("fileMessage", list);
		return "list";
	}
	
	public String deleteFile() throws IOException{
		String path = this.context.getRealPath("/upload");
		FileUtil.deleteFile(path, fileflag);
		return "tolist";
	}
	
	
	public String getFileflag() {
		return fileflag;
	}

	public void setFileflag(String fileflag) {
		this.fileflag = fileflag;
	}

	public void setServletContext(ServletContext context) {
		this.context = context;
	}
}
