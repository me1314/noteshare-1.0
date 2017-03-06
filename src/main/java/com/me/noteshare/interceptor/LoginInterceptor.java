package com.me.noteshare.interceptor;


import com.me.noteshare.pojo.po.Admin;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Author Sunny
 * Date 2017/3/3
 * Time 12:45
 */

public class LoginInterceptor implements HandlerInterceptor{
    public boolean preHandle(HttpServletRequest req, HttpServletResponse httpServletResponse, Object o) throws Exception {
        String uri = req.getRequestURI();
        //说明去登录界面
        if(uri.indexOf("login")>=0){
            return true;
        }
        Admin admin = (Admin)req.getSession().getAttribute("admin");
        if(admin != null){
            return true;
        }
        httpServletResponse.sendRedirect("/admin/login");
        return false;
    }

    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
