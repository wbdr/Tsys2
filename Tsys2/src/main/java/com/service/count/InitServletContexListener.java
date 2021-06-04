package com.service.count;



import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
/*
    初始化:
         只有服务器的启动，才会创建servletContext对象。
        用于监听servletContext创建，一旦创建servletContext创建，则设置servletContext中的count值为0;
*/
@WebListener
/*
    这个注解的作用是启动监听，相当于在web.xml配置（
    <listener>
        <listener-class>com.cyl.count.InitServletContexListener</listener-class>
    </listener>
*/
public class InitServletContexListener implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        //获取ServletContext域对象
        ServletContext servletContext = servletContextEvent.getServletContext();
        //给ServletContext域对象，设置count=0
        servletContext.setAttribute("count",-1);
    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {

    }
}

