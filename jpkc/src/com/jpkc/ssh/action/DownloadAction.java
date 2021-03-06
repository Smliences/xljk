package com.jpkc.ssh.action;

import java.io.FileInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletContext;

import org.apache.struts2.util.ServletContextAware;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.jpkc.ssh.utils.FileUtil;
import com.opensymphony.xwork2.ActionSupport;

@Controller("downloadAction")
@Scope("prototype")
public class DownloadAction extends ActionSupport implements ServletContextAware {
	private static final long serialVersionUID = 1L;

	private ServletContext context;

	private String filename;

	private String mimeType;
	
	private String fileFlag;

	private InputStream inStream;

	@Override
	public String execute() throws Exception {
		this.mimeType = context.getMimeType(filename);
		String path = this.context.getRealPath("/upload");
		this.inStream = new FileInputStream(FileUtil.getFile(path, fileFlag));
		if (this.inStream == null) {
			return ERROR;
		}
		return SUCCESS;
	}

	public InputStream getInStream() throws Exception {
		return this.inStream;
	}

	public String getMimeType() {
		return this.mimeType;
	}

	public void setFilename(String filename) {
		try {
			this.filename = new String(filename.getBytes("ISO8859-1"), "UTF-8");
		} catch (UnsupportedEncodingException e) {
		}
	}

	public String getFilename() {
		try {
			return new String(filename.getBytes("UTF-8"), "ISO8859-1");
		} catch (UnsupportedEncodingException e) {
			return this.filename;
		}
	}

	public void setServletContext(ServletContext context) {
		this.context = context;
	}
	
	
	public void setFileFlag(String fileFlag) {
		this.fileFlag = fileFlag;
	}

}
