package service.member;

import model.FamilyCard;
import model.ResultMessage;

public interface MemberService {
	public FamilyCard login(String id, String password,String cardType) ;
    public ResultMessage activate(String id) ;
    public ResultMessage modify(FamilyCard cardBean) ;
    public String register(FamilyCard cardBean);
    public FamilyCard getSimpleUserById(String id);
    public FamilyCard getFamilyUserById(String id);
    public String checkRegisterInfo(FamilyCard card);

}
