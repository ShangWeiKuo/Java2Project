package tw.edu.nuk.java2.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="newinfo")
public class Customer {
	@Id
	@Column
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long no;
	//@Column(length=30)
	private String name;
	
	/*@Column(name="no", length=10)
	private long no;*/
	
	@Column(length=10)
	private String phone;
	
	@Column(length=30)
	private String location;
	
	@Column(length=30)
	private String content;
	
	public long getNo() {
		return no;
	}

	public void setNo(long no) {
		this.no = no;
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}
	
	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
}
