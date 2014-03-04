package action.member;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.FamilyCard;
import model.CardMember;
import model.ResultMessage;

public class RegisterServlet extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
//	private FrontController frontController;
	
	public RegisterServlet(){
//		frontController = FrontController.getInstance();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
   }

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    // getParameter("a")获取name为a的值string，getAttribute获得object
	    
	    String password = request.getParameter("password");
	    String rePassword = request.getParameter("rePassword");
//	    ResultMessage checkPassword = frontController.checkRegisterPassword(password, rePassword);
	    ResultMessage checkPassword = null;
	    
	    RequestDispatcher viewDispatcher = null;
	    
	    if(checkPassword==ResultMessage.UNEQUAL){
	    	request.setAttribute("errorInfo", "输入的密码不一致，请重新输入！");
		    //24hour失效
	    	viewDispatcher = request.getRequestDispatcher("/ClientRegister.jsp");
	    	viewDispatcher.forward(request, response);
	    }else{
	    	String cardType = request.getParameter("cardType"); 
	 	    String address = request.getParameter("address");
	 	    String[] memberNames = request.getParameterValues("memberName");
	 	    String[] memberAges = request.getParameterValues("memberAge");
	 	    String[] memberContacts = request.getParameterValues("memberContact");
	 	    String resultId = "";
	 	    FamilyCard cardBean = new FamilyCard();
//	 	    cardBean.setCardType(cardType);
	 	    cardBean.setPassword(password);
	 	    cardBean.setAddress(address);
	 	    ArrayList<CardMember> memberList = new ArrayList<CardMember>();
	 	    for(int i=0;i<memberAges.length;i++){
	 	    		CardMember temp = new CardMember();
	 	    		temp.setName(memberNames[i]);
	 	    		temp.setAge(memberAges[i]);
	 	    		temp.setContact(memberContacts[i]);
	 	    		memberList.add(temp);
	 	    }
	 	    cardBean.setMemberList(memberList);
//	 	    resultId = frontController.register(cardBean);
//	 	    cardBean.setId(resultId);
	 	   
	 	    //返回的resultId初始化为null，错误也为null
	 	    if(resultId!=null){
	 	    	HttpSession session = request.getSession(true);
	 		    
	 		    session.setAttribute("cardBean", cardBean);
	 		    request.setAttribute("cardBean", cardBean);
	 		    //24hour失效
	 		    session.setMaxInactiveInterval(24*60*60);
	 	    	viewDispatcher = request.getRequestDispatcher("/ClientHome.jsp");
	 	    }else{
	 	    	viewDispatcher = request.getRequestDispatcher("/ErrorPage.jsp");
	 	    }
	 	    
	 	    viewDispatcher.forward(request, response);
	    }
	   
 	    return;
   }
}