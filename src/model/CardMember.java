package model;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="cardmember")
public class CardMember implements Basic{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String name;
	private String contact;
	private String age;
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getContact() {
		return contact;
	}
	
	public void setContact(String contact) {
		this.contact = contact;
	}
	
	public String getAge() {
		return age;
	}
	
	public void setAge(String age) {
		this.age = age;
	}
	
	

}
