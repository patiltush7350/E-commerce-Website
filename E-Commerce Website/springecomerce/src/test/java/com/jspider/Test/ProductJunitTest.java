package com.jspider.Test;

import static org.junit.Assert.*;



import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.jspider.DAO.ProductDAO;
import com.jspider.model.Product;



public class ProductJunitTest {

	static ProductDAO productDAO;
	
	@BeforeClass
	public static void executeFirst() {
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext(); 

		context.scan("com.jspider");
		context.refresh();
		
		productDAO=(ProductDAO)context.getBean("productDAO");
	
}
	@Test
	public void addProductTest() {
		Product product = new Product();
		product.setProductName("sirt");
		product.setProductDesc("black colour");
		product.setPrice(450);
		product.setStock(40);
		product.setCategoryId(6);
		product.setSupplierId(18);
		
		assertTrue("problem in adding product", productDAO.addProduct(product));
}
}