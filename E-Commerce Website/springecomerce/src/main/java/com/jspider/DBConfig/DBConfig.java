package com.jspider.DBConfig;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.jspider.model.Category;
import com.jspider.model.Product;
import com.jspider.model.Supplier;
import com.jspider.model.UserDetail;

@Configuration
@EnableTransactionManagement
@ComponentScan("com.jspider")
public class DBConfig {

	@Bean(name = "dataSource")
	public DataSource getH2DataSource() {
		DriverManagerDataSource dataSource = new DriverManagerDataSource();

		dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
		dataSource.setUrl("jdbc:mysql://localhost:3306/ecommerce?createDatabaseIfNotExist=true");
		dataSource.setUsername("root");
		dataSource.setPassword("Root");
//		jdbc:h2:tcp://localhost/~/test2
//		jdbc:h2:~/test
		System.out.println("....Data Source create");
		return dataSource;
	}

	@Bean(name = "sessionFactory")
	public SessionFactory getSessionFactory() {

		Properties hibernateProp = new Properties();
		hibernateProp.put("hibernate.hbm2ddl.auto", "update");
		hibernateProp.put("hibernate.dialect", "org.hibernate.dialect.MySQL8Dialect");

		LocalSessionFactoryBuilder localFactory = new LocalSessionFactoryBuilder(getH2DataSource());
		localFactory.addProperties(hibernateProp);
//		ADDED THE LOCAL-VARRIABLE
		localFactory.addAnnotatedClass(Category.class);
		localFactory.addAnnotatedClass(Product.class);
		localFactory.addAnnotatedClass(Supplier.class);
		localFactory.addAnnotatedClass(UserDetail.class);

		System.out.println("......Session Factory Create");

		return localFactory.buildSessionFactory();

	}

	@Bean(name = "txManager")

	public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) {
		System.out.println(".....TransactionManager Create....");

		return new HibernateTransactionManager(sessionFactory);
	}
}
