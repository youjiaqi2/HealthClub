package model;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="activityround")
public class ActivityRound implements Basic{
	private static final long serialVersionUID = 1L;
	
	private String time;
	private String place;
	private String coach;
	
	public String getTime() {
		return time;
	}
	
	public void setTime(String time) {
		this.time = time;
	}
	
	public String getPlace() {
		return place;
	}
	
	public void setPlace(String place) {
		this.place = place;
	}
	
	public String getCoach() {
		return coach;
	}
	
	public void setCoach(String coach) {
		this.coach = coach;
	}
	
	

}
