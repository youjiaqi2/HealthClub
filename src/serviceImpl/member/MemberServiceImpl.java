package serviceImpl.member;

import dao.member.MemberDao;
import model.FamilyCard;
import model.ResultMessage;
import service.member.MemberService;

public class MemberServiceImpl implements MemberService{
    private MemberDao memberDao ;
    
	public MemberDao getMemberDao() {
		return memberDao;
	}

	public void setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
	}

	@Override
	public FamilyCard login(String id, String password, String FamilyCardType) {
		return memberDao.login(id, password, FamilyCardType);
	}

	@Override
	public ResultMessage activate(String id) {
		return memberDao.activate(id);
	}

	@Override
	public ResultMessage modify(FamilyCard FamilyCardBean) {
		return null;
	}

	@Override
	public String register(FamilyCard FamilyCardBean) {
		if(FamilyCardBean.getType().equals("simple")){
			return memberDao.simpleRegister(FamilyCardBean);
		}else if(FamilyCardBean.getType().equals("family")){
			return memberDao.familyRegister(FamilyCardBean);
		}else{
			return null;
		}
		
	}

	@Override
	public FamilyCard getSimpleUserById(String id) {
		return memberDao.getSimpleUserById(id);
	}

	@Override
	public FamilyCard getFamilyUserById(String id) {
		return memberDao.getFamilyUserById(id);
	}

	@Override
	public String checkRegisterInfo(FamilyCard FamilyCard) {
		return null;
	}

}
