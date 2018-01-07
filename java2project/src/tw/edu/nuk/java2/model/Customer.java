package tw.edu.nuk.java2.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="perinfo")
public class Customer {
	@Id
	@Column
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long no;
	//@Column(length=30)
	private String name;
	
	/*@Column(name="no", length=10)
	private long no;*/
	
	@Column(length=30)
	private String uname;
	
	@Column(length=30)
	private String pwd;
	
	@Column(length=10)
	private String phone;
	
	@Column(length=1)
	private int isadmin;
	
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
	
	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}
	
	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public int getIsadmin() {
		return isadmin;
	}

	public void setIsadmin(int isadmin) {
		this.isadmin = isadmin;
	}
	
	//private long custid;
	
	//@Column(length=40)
	/*private String companyName;
	
	@Column(length=30)
	private String contactName;
	
	@Column(name="contactTitle", length=30)
	private String contactTitle;
	
	@Column(length=60)
	private String address;
	
	@Column(length=15)
	private String city;
	
	@Column(length=15)
	private String region;
	
	@Column(name="postalCode", length=10)
	private String postalCode;
	
	@Column(length=15)
	private String country;
	
	@Column(length=24)
	private String phone;
	
	@Column(length=24)
	private String fax;*/

	/*public long getCustid() {
		return custid;
	}

	public void setCustid(long custid) {
		this.custid = custid;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	
	public String getContactName() {
		return contactName;
	}

	public void setContactName(String contactName) {
		this.contactName = contactName;
	}

	public String getContactTitle() {
		return contactTitle;
	}

	public void setContactTitle(String contactTitle) {
		this.contactTitle = contactTitle;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	public String getPostalCode() {
		return postalCode;
	}

	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getFax() {
		return fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}*/


}

/*package tw.edu.nuk.java2.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="customers")
public class Customer {
	@Id
	@Column
	@GeneratedValue(strategy=GenerationType.AUTO)
	
	
	
	//@Column(length=40)
	private String companyName;
	
	@Column(name="custid", length=11)
	private long custid;
	
	@Column(length=30)
	private String contactName;
	
	@Column(name="contactTitle", length=30)
	private String contactTitle;
	
	@Column(length=60)
	private String address;
	
	@Column(length=15)
	private String city;
	
	@Column(length=15)
	private String region;
	
	@Column(name="postalCode", length=10)
	private String postalCode;
	
	@Column(length=15)
	private String country;
	
	@Column(length=24)
	private String phone;
	
	@Column(length=24)
	private String fax;

	public long getCustid() {
		return custid;
	}

	public void setCustid(long custid) {
		this.custid = custid;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	
	public String getContactName() {
		return contactName;
	}

	public void setContactName(String contactName) {
		this.contactName = contactName;
	}

	public String getContactTitle() {
		return contactTitle;
	}

	public void setContactTitle(String contactTitle) {
		this.contactTitle = contactTitle;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	public String getPostalCode() {
		return postalCode;
	}

	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getFax() {
		return fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}


}*/
