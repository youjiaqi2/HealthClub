package action.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;

import model.FamilyCard;
import model.ResultMessage;
import model.SystemUser;
import service.member.MemberService;
import service.system.WaiterService;

public class LoginAction  extends BaseAction{
	private static final long serialVersionUID = 1L;
	private MemberService memberService;
	private FamilyCard card = new FamilyCard();
	
	public MemberService getMemberService() {
		return memberService;
	}

	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}

	public FamilyCard getCard() {
		return card;
	}

	public void setCard(FamilyCard card) {
		this.card = card;
	}

	public String execute() throws ServletException,IOException{
		String id = request.getParameter("loginId");
	    String password = request.getParameter("loginPassword");
	    String type = request.getParameter("loginIdentity");

	    card = memberService.login(id,password,type);
	   
	    if(card!=null){
	    	HttpSession session = request.getSession(true);
		    
		    //24hour失效
		    session.setMaxInactiveInterval(24*60*60);
		    session.setAttribute("card", card);
	    	request.setAttribute("card", card);
	    	return "sussess";
	    }else{
	    	request.setAttribute("hint", "会员卡id或者密码错误");
	    	return "errorInput";
	    }
	}


}
