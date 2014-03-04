package dao.member;

import model.FamilyCard;
import model.ResultMessage;

public interface MemberDao{
	public FamilyCard login(String id, String password,String cardType) ;
    public ResultMessage activate(String id) ;
    public ResultMessage modify(FamilyCard cardBean) ;
    public String simpleRegister(FamilyCard cardBean);
    public String familyRegister(FamilyCard cardBean);
    public FamilyCard getSimpleUserById(String id);
    public FamilyCard getFamilyUserById(String id);
}
