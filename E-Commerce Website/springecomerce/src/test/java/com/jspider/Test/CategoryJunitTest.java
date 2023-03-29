package com.jspider.Test;

import static org.junit.Assert.*;


import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.jspider.DAO.CategoryDAO;
import com.jspider.model.Category;

public class CategoryJunitTest {

	static CategoryDAO categoryDAO;

	@BeforeClass
	public static void executeFirst() {
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext(); 

		context.scan("com.jspider");
		context.refresh();
		
		categoryDAO=(CategoryDAO)context.getBean("categoryDAO");
	}
	
	@Test
	public void addCategoryTest() {
		Category category = new Category();
		category.setCategoryName("Tushar");
		category.setCategoryDesc("available");
	 
		assertTrue("problem in adding product", categoryDAO.addCategory(category));
		
	}
	
}
