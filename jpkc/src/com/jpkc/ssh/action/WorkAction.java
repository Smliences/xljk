package com.jpkc.ssh.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.jpkc.ssh.entity.User;
import com.jpkc.ssh.entity.Work;
import com.jpkc.ssh.service.UserService;
import com.jpkc.ssh.service.WorkService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

/**
 * 
 * @ClassName: WorkAction 
 * @Description: WorkAction
 * @author MJ
 * @date 2017-5-4 下午4:23:08 
 *
 */
@Controller("workAction")
@Scope("prototype")
public class WorkAction extends ActionSupport{
	
	@Resource(name="workService")
	private WorkService workService;
	
	@Resource(name="userService")
	private UserService userService;
	
	private Integer userid;
	
	public String toStuList() {
		List<User> stus = userService.getAllStudent();
		List<Map<String, String>> stuList = new ArrayList<Map<String,String>>();
		for (int i = 0; i < stus.size(); i++) {
			User user = stus.get(i);
			Map<String,String> map = new HashMap<String, String>();
			map.put("userid", new Integer(user.getUid()).toString());
			map.put("usernum", user.getNum());
			map.put("username", user.getName());
			List<Work> works = workService.getWorksByUserID(user.getUid());
			map.put("submitCount", new Integer(works.size()).toString());
			stuList.add(map);
		}
		ActionContext.getContext().put("stuList", stuList);
		return "stuList";
	}

	public String detail() {
		List<Work> works = workService.getWorksByUserID(userid);
		ActionContext.getContext().put("works", works);
		return "works";
	}
	
	public Integer getUserid() {
		return userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}
}
