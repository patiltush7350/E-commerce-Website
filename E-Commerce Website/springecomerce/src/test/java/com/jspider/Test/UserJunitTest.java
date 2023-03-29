package com.jspider.Test;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;


import com.jspider.DAO.UserDAO;
import com.jspider.model.UserDetail;

public class UserJunitTest {

	static UserDAO userDAO;

	@BeforeClass
	public static void executeFirst() {
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext(); 

		context.scan("com.jspider");
		context.refresh();
		
		userDAO=(UserDAO)context.getBean("userDAO");
	}
	@Test
	public void registerUserTest() {
		UserDetail user = new UserDetail();
		user.setUserName("om");
		user.setPassword("1234");
		
		user.setRole("ROLE_USER");
		user.setCustomerName("Tush");
		user.setCustomerAddress("pune");
		
		assertTrue("problem in registraion user",userDAO.registerUser(user) );
		
		
	}

}
