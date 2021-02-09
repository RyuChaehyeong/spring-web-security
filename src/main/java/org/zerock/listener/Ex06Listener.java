package org.zerock.listener;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class Ex06Listener
 *
 */
public class Ex06Listener implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public Ex06Listener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
	public void contextInitialized(ServletContextEvent sce) {
		ServletContext app = sce.getServletContext();
		
		String contextRoot = app.getContextPath();
		
		app.setAttribute("root", contextRoot);

	}

}
