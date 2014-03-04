package daoImpl.member;

import java.sql.Connection;

import dao.member.ManagerDao;

public class ManagerDaoImpl implements ManagerDao {
	private static Connection connection;
	private static ManagerDaoImpl instance=null;
	
	private  ManagerDaoImpl() {
		
		try {
		    connection = DatabaseConnect.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}	
		
	}
	
	public static ManagerDaoImpl getInstance(){
		if(instance==null){
			try {
				instance=new ManagerDaoImpl();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return instance;
	}
}
