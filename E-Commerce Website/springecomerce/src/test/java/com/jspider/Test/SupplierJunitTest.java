package com.jspider.Test;

import static org.junit.Assert.*;


import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;


import com.jspider.DAO.SupplierDAO;
import com.jspider.model.Supplier;

public class SupplierJunitTest {

	static SupplierDAO supplierDAO;

	@BeforeClass
	public static void executeFirst() {
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext(); 

		context.scan("com.jspider");
		context.refresh();
		
		supplierDAO=(SupplierDAO)context.getBean("supplierDAO");
	}
	@Test
	public void addSupplierTest() {
		Supplier supplier = new Supplier();
		supplier.setSupplierId(10);
		supplier.setSupplierAddress("SHAHADA");
		supplier.setSupplierName("PATIL");
		assertTrue("problem in adding Supplier", supplierDAO.addSupplier(supplier));
	}
	
}
