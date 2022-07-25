package com.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;


@WebListener
public class Mylistener1 implements ServletContextListener {

    public void contextDestroyed(ServletContextEvent sce)  { 
         System.out.println("Context Destroyed");
         sce.getServletContext().getAttribute("counter");
    }

	
    public void contextInitialized(ServletContextEvent sce)  { 
    	System.out.println("Context Initialized");
        sce.getServletContext().getAttribute("counter");        
    }
	
}
