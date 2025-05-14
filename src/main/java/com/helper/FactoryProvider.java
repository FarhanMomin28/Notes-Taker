package com.helper;

/*import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class FactoryProvider {
	public static SessionFactory factory;
	
	public static SessionFactory getFactory()
	{
		if(factory == null)
		{
			factory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
//			factory = new Configuration().configure("src/main/resources/hibernate.cfg.xml").buildSessionFactory();
//			Configuration cfg = new Configuration();
//	        cfg.configure("hibernate.cfg.xml");
//	        factory = cfg.buildSessionFactory();

			
		}
		
		return factory;
	}
	
	public void closeFactory()
	{
		if(factory.isOpen())
		{
			factory.close();
		}
	}
}
*/

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class FactoryProvider {

	public static SessionFactory factory;

	public static SessionFactory getFactory() {

		if (factory == null) {
			factory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
		}

		return factory;
	}

	public void closeFactory() {
		if (factory.isOpen()) {
			factory.close();
		}
	}
}
