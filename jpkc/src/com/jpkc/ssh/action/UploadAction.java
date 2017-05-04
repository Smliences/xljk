package com.jpkc.ssh.action;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.ServletContext;

import org.apache.struts2.util.ServletContextAware;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.jpkc.ssh.entity.Work;
import com.jpkc.ssh.service.WorkService;
import com.opensymphony.xwork2.ActionSupport;

@Controller("uploadAction")
@Scope("prototype")
public class UploadAction extends ActionSupport implements ServletContextAware{
	
	@Resource(name="workService")
	private WorkService workService;
    
	private static final long serialVersionUID = -371529801135206288L;

	private ServletContext context;
	
	private Integer userid;

	private File upload;
	
	private String uploadContentType;
	
	private String uploadFileName;
 
    public String execute() throws Exception {
    	//创建work,设置属性值
		String path = this.context.getRealPath("/upload/" + userid + "/" + uploadFileName);
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time = simpleDateFormat.format(new Date());
		Work work = new Work();
		work.setUid(userid);
		work.setName(uploadFileName);
		work.setPath(path);
		work.setTime(time);
		this.workService.saveWork(work, upload);
        return "success";
    }

	public void setServletContext(ServletContext context) {
		this.context = context;
	}

	public Integer getUserid() {
		return userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
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
