package model;

import java.util.ArrayList;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="activity")
public class Activity implements Basic{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer id;
	private String name;
	private String description;
	
	@OneToMany(fetch = FetchType.EAGER,targetEntity=CardMember.class,
			cascade={   
		       CascadeType.PERSIST,CascadeType.REMOVE,CascadeType.MERGE,CascadeType.REFRESH
			})
	@JoinColumns(value = { @JoinColumn(name="activityId",referencedColumnName="id")})
	private ArrayList<ActivityRound> roundList = new ArrayList<ActivityRound>();
	
	public Integer getId() {
		return id;
	}
	
	public void setId(Integer id) {
		this.id = id;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getDescription() {
		return description;
	}
	
	public void setDescription(String description) {
		this.description = description;
	}

	public ArrayList<ActivityRound> getRoundList() {
		return roundList;
	}

	public void setRoundList(ArrayList<ActivityRound> roundList) {
		this.roundList = roundList;
	}
	
}
