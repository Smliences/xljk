package com.jpkc.ssh.action;

import java.io.File;
import java.io.IOException;
import java.util.Collection;
import java.util.Map;

import javax.servlet.ServletContext;

import org.apache.struts2.util.ServletContextAware;

import com.jpkc.ssh.util.FileUtil;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class FileAction extends ActionSupport implements ServletContextAware{
	
	private ServletContext context;
	
	public String getAllFileMessage() {
		String path = this.context.getRealPath("/upload");
		Collection<Map<String, String>> list = FileUtil.getFileMessageFromDirectory(path);
		ActionContext.getContext().put("fileMessage", list);
		
		
		return SUCCESS;
	}
	
	
	public void setServletContext(ServletContext context) {
		this.context = context;
	}
}
