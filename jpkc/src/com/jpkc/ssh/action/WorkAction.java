package com.jpkc.ssh.action;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.jpkc.ssh.entity.Work;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
@Controller
@Scope("prototype")
public class WorkAction extends ActionSupport implements ModelDriven<Work>{
	@Resource
	private WorkService workService;
	private Work work = new Work();
	public Work getModel() {
		// TODO Auto-generated method stub
		return work;
	}
}
