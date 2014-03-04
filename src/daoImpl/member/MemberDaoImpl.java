package daoImpl.member;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import dao.member.MemberDao;
import daoImpl.helper.Helper;
import model.FamilyCard;
import model.ResultMessage;

public class MemberDaoImpl  implements MemberDao{
	private String idStyleString = "%07d";

	private  MemberDaoImpl() {
		
	}
	
	@Override
	public FamilyCard login(String id, String password,String cardType) {
		FamilyCard card = null;
		try {
			 Session session = Helper.getSessionFactory().openSession();

			 String hql = " from Card";      
		     Query query = session.createQuery(hql);      
		     //默认查询出来的list里存放的是一个Object数组      
		     List<FamilyCard> cardList = query.list();      
		     for(FamilyCard user : cardList){      
		            String idTemp = String.format(idStyleString,user.getId());      
		            String passwordTemp = user.getPassword();     
		            String typeTemp = user.getType();
		            if(idTemp.equals(id)&&passwordTemp.equals(password)&&typeTemp.equals(cardType)){
		                card = user;
		            }
		     }      
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return card;
	}

	@Override
	public ResultMessage activate(String id) {
		return null;
	}

	@Override
	public ResultMessage modify(FamilyCard cardBean){
		return null;
	}

	@Override
	public String simpleRegister(FamilyCard cardBean) {
	return null;
	}
	
	@Override
	public String familyRegister(FamilyCard cardBean) {
	   return null;
	}

	@Override
	public FamilyCard getSimpleUserById(String id) {
		return null;
		
	}

	@Override
	public FamilyCard getFamilyUserById(String id) {
		return null;
	}

}
