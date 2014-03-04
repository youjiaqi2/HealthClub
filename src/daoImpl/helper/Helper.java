package daoImpl.helper;

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

public class Helper {
	public static SessionFactory getSessionFactory(){
		SessionFactory sf = null;
		try {
			Configuration cfg = new Configuration().configure();
			StandardServiceRegistryBuilder srb = new StandardServiceRegistryBuilder().applySettings(cfg.getProperties());
			StandardServiceRegistry sr = srb.build();
			sf = cfg.buildSessionFactory(sr);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return sf;
	}

}
