package action.system;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;

import service.system.WaiterService;
import model.ResultMessage;
import model.SystemUser;

public class LoginAction extends BaseAction{
	private static final long serialVersionUID = 1L;
	private WaiterService waiterService;
	private SystemUser systemUser = new SystemUser();
	
	public SystemUser getSystemUser() {
		return systemUser;
	}

	public void setSystemUser(SystemUser systemUser) {
		this.systemUser = systemUser;
	}

	public WaiterService getWaiterService() {
		return waiterService;
	}

	public void setWaiterService(WaiterService waiterService) {
		this.waiterService = waiterService;
	}

	public String execute() throws ServletException,IOException{
        String message="";
		
        String position = request.getParameter("position");
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		ResultMessage resultMessage = waiterService.login(position, id, password);
		   
	    if(resultMessage==ResultMessage.EXIST){
	    	HttpSession session = request.getSession(true);
		    
	    	systemUser.setId(Integer.parseInt(id));
	    	systemUser.setPosition(position);
	    	systemUser.setPassword(password);
		    session.setAttribute("systemUser", systemUser);
		    //10minʧЧ
		    session.setMaxInactiveInterval(10*60);
	    	
	    	request.setAttribute("systemUser", systemUser);
	    	
		    return position; 
	    }else{
	    	    message = "��Ż������벻��ȷ";
	    	    request.setAttribute("hint", message);
	    	    return "errorInput";
	    }
	}

}
