package com.jpkc.ssh.action;

import javax.imageio.ImageIO;

import org.apache.struts2.ServletActionContext;

import com.jpkc.ssh.utils.Generator;
import com.opensymphony.xwork2.ActionSupport;


public class CheckImgAction extends ActionSupport {

	@Override
	public String execute() throws Exception {
		//使用工具类Generator替换原有的验证码生成代码
		Generator generator = new Generator();
		ServletActionContext.getRequest().getSession()
				.setAttribute("checkcode", generator.getIdentifyingCode());
		ImageIO.write(generator.getImage(), "png", ServletActionContext.getResponse()
				.getOutputStream());
		return NONE;
	}
}
