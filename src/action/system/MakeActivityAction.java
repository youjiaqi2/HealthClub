package action.system;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;
import model.Activity;
import model.ActivityRound;
import model.ResultMessage;
import service.system.WaiterService;

public class MakeActivityAction extends BaseAction{
	private static final long serialVersionUID = 1L;
	private WaiterService waiterService;
	private Activity activity = new Activity();
	
	public Activity getActivity() {
		return activity;
	}

	public void setActivity(Activity activity) {
		this.activity = activity;
	}

	public WaiterService getWaiterService() {
		return waiterService;
	}
	
	public void setWaiterService(WaiterService waiterService) {
		this.waiterService = waiterService;
	}
	
	public String execute() throws ServletException,IOException{
		 // getParameter("a")获取name为a的值string，getAttribute获得object
	    String activityName = request.getParameter("activityName"); 
	    String activityDescription = request.getParameter("description");
	    String[] times = request.getParameterValues("time");
	    String[] places = request.getParameterValues("place");
	    String[] coaches = request.getParameterValues("coach");
	    
	    activity.setName(activityName);
	    activity.setDescription(activityDescription);
	    ArrayList<ActivityRound> roundList = new ArrayList<ActivityRound>();
	    for(int i=0;i<times.length;i++){
	    	ActivityRound activityRound = new ActivityRound();
	    	activityRound.setTime(times[i]);
	    	activityRound.setPlace(places[i]);
	    	activityRound.setCoach(coaches[i]);
	    	roundList.add(activityRound);
	    }
	    activity.setRoundList(roundList);
	    
	    ResultMessage resultMessage = waiterService.makeActivity(activity);
	   
	    if(resultMessage==ResultMessage.SUCCEED){
	    	HttpSession session = request.getSession(true);
		    
		    session.setAttribute("activity", activity);
		    request.setAttribute("activity", activity);
		    //24hour失效
		    session.setMaxInactiveInterval(24*60*60);
	    	return "success";
	    }else{
	    	return "errorInput";
	    }
	    
	}
	

}
