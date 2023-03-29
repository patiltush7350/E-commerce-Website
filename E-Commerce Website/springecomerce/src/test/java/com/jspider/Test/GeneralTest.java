package com.jspider.Test;

import static org.junit.Assert.*;


import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class GeneralTest {

	public static void main(String[]args) {
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext(); 

		context.scan("com.jspider");
		context.refresh();
	}

}
