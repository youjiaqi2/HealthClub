package daoImpl.member;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class DatabaseConnect {
	private static InitialContext jndiContext = null;
	private static DataSource datasource = null;
	
	public static Connection getConnection() throws SQLException, IOException {
		Properties properties = new Properties();
		properties.put(javax.naming.Context.PROVIDER_URL, "jnp:///");
		properties.put(javax.naming.Context.INITIAL_CONTEXT_FACTORY,
		"org.apache.naming.java.javaURLContextFactory");
		
		try {
			jndiContext = new InitialContext(properties);
			datasource = (DataSource) jndiContext.lookup("java:comp/env/jdbc/healthclub");
		} catch (NamingException e) {
			e.printStackTrace();
		}	
		
		return datasource.getConnection();
	}

}
