package utils;

import org.hibernate.*;
import org.hibernate.cfg.*;
import org.hibernate.service.*;

public class HibernateUtils {
	
	private static SessionFactory sf;
	
	static
	{
		Configuration cf=new Configuration().configure();
		ServiceRegistry ref=new ServiceRegistryBuilder().applySettings(cf.getProperties()).buildServiceRegistry();
		sf=cf.buildSessionFactory(ref);
		System.out.println("session factory created");
		
	}

	public static SessionFactory getSf() {
		return sf;
	}
	

}
