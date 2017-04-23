package com.jpkc.ssh.interceptor;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

public class Interceptor extends MethodFilterInterceptor{

	protected String doIntercept(ActionInvocation invocation) throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		Object obj = request.getSession().getAttribute("existUser");
		if(obj!=null){
			return invocation.invoke();
		} else {
			
			return "input";
		}
		
		
		
	}
	

}
