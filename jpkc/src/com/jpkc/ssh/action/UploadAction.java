package com.jpkc.ssh.action;

import java.io.File;

import javax.servlet.ServletContext;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.util.ServletContextAware;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.jpkc.ssh.utils.FileUtil;
import com.opensymphony.xwork2.ActionSupport;

@Controller("uploadAction")
@Scope("prototype")
public class UploadAction extends ActionSupport implements ServletContextAware{
    
	private static final long serialVersionUID = -371529801135206288L;

	private ServletContext context;
	
	private String username; 

	private File upload;
	
	private String uploadContentType;
	
	private String uploadFileName;
 
    public String execute() throws Exception {
		String path = this.context.getRealPath("/upload");
    	FileUtil.saveFile(path, upload, uploadFileName, username);
        return SUCCESS;
    }

	public void setServletContext(ServletContext context) {
		this.context = context;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public File getUpload() {
		return upload;
	}

	public void setUpload(File upload) {
		this.upload = upload;
	}

	public String getUploadContentType() {
		return uploadContentType;
	}

	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}

	public String getUploadFileName() {
		return uploadFileName;
	}

	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}
	
}
