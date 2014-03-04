package daoImpl.system;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import model.Activity;
import model.ResultMessage;
import model.SystemUser;
import dao.system.WaiterDao;
import daoImpl.helper.Helper;

public class WaiterDaoImpl implements WaiterDao{
	private String idStyleString = "%07d";
	
	private WaiterDaoImpl(){
		
	}

	@Override
	public ResultMessage login(String position, String id, String password) {
		ResultMessage resultMessage = ResultMessage.NOTEXIST;
		try {
			 Session session = Helper.getSessionFactory().openSession();

			 String hql = " from SystemUser";      
		     Query query = session.createQuery(hql);      
		     //默认查询出来的list里存放的是一个Object数组      
		     List<SystemUser> userList = query.list();      
		     for(SystemUser user : userList){      
		            String idTemp = String.format(idStyleString,user.getId());      
		            String passwordTemp = user.getPassword();     
		            String positionTemp = user.getPosition();
		            if(idTemp.equals(id)&&passwordTemp.equals(password)&&positionTemp.equals(position)){
		            	resultMessage = ResultMessage.EXIST;
		            }
		     }      
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return resultMessage;
		
	}

	@Override
	public ResultMessage makeActivity(Activity activity) {
		ResultMessage resultMessage = ResultMessage.FAILED;
		try{
			Session session = Helper.getSessionFactory().openSession();
			session.beginTransaction();
			session.persist(activity);
			session.getTransaction().commit();
			session.close();
			resultMessage = ResultMessage.SUCCEED;
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return resultMessage;
	}

}
