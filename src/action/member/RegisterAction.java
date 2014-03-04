package action.member;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;

import model.FamilyCard;
import model.CardMember;
import model.ResultMessage;
import model.SystemUser;
import service.member.MemberService;
import service.system.WaiterService;

public class RegisterAction  extends BaseAction{
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
		String hint = "";
	    String password = request.getParameter("password");
	    String rePassword = request.getParameter("rePassword");
	    String cardType = request.getParameter("cardType"); 
 	    String address = request.getParameter("address");
 	    String[] memberNames = request.getParameterValues("memberName");
 	    String[] memberAges = request.getParameterValues("memberAge");
 	    String[] memberContacts = request.getParameterValues("memberContact");
 	    
 	   ArrayList<CardMember> memberList = new ArrayList<CardMember>();
	    for(int i=0;i<memberAges.length;i++){
	    		CardMember temp = new CardMember();
	    		temp.setName(memberNames[i]);
	    		temp.setAge(memberAges[i]);
	    		temp.setContact(memberContacts[i]);
	    		memberList.add(temp);
	    }
//	    cardBean.setMemberList(memberList);
	    
	    if(password.equals(rePassword)){
	    	
	    }else{
	    	hint="两次输入的密码不一致";
	    }
	    
	    return SUCCESS;
	 
	   
	}


}
