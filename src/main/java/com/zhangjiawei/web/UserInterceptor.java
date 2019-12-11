package com.zhangjiawei.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

import com.zhangjiawei.common.ConstantClass;
import com.zhangjiawei.entity.User;

/**
 * 
 * @author zhangjiawei
 *拦截器
 */
public class UserInterceptor  implements HandlerInterceptor {
	
	/**
	 * 
	 */
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		User loginUser =  (User)request.getSession().getAttribute(ConstantClass.USER_KEY);
		
		// 用户没有登录
		if(loginUser==null) {
			response.sendRedirect("/user/login");
			return false;
		}
		
		/**
		 * 普通用户不能进入管理员系统
		 */
		if(request.getServletPath().contains("/admin/") 
				&& loginUser.getRole()==ConstantClass.USER_ROLE_GENERAL ) {
			request.setAttribute("errorMsg", "只有管理员才可以访问这个界面");
			//response.sendRedirect("/user/login");
			request.getRequestDispatcher("/user/login").forward(request, response);
			return false;
		}
		return true;
	}
	
}
