package com.service.count;


import javax.servlet.ServletContext;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * 监听在线人数，监听session的创建和销毁 如果session创建 获取ServletContext中的count++,重新设置
 * 如果session销毁 获取ServletContext中的count--,重新设置
 */
@WebListener
public class OnlineNumberHttpSessionListener implements HttpSessionListener {
    @Override
    public void sessionCreated(HttpSessionEvent httpSessionEvent) {
        //1.获取session
        HttpSession session = httpSessionEvent.getSession();
        ServletContext servletContext = session.getServletContext();
        //2.获取count值，加1
        int count = (int) servletContext.getAttribute("count");
        count++;
        //3.把servlet存储到servletContext对象中
        servletContext.setAttribute("count", count);
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent httpSessionEvent) {

        //1.获取session
        HttpSession session = httpSessionEvent.getSession();
        ServletContext servletContext = session.getServletContext();
        //2.获取count值，减1
        int count = (int) servletContext.getAttribute("count");
        count--;
        //3.把servlet存储到servletContext对象中
        servletContext.setAttribute("count", count);
    }
}

