package tw.edu.nuk.java2.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="locinfo")
public class Location {
	@Id
	@Column
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long no;
	//@Column(length=30)
	private String locname;
	
	/*@Column(name="no", length=10)
	private long no;*/
	
	@Column(length=30)
	private String loctime;
	
	@Column(length=30)
	private String watcher;
	
	@Column(length=30)
	private String major;
	
	public long getNo() {
		return no;
	}

	public void setNo(long no) {
		this.no = no;
	}
	
	public String getName() {
		return locname;
	}

	public void setName(String locname) {
		this.locname = locname;
	}
	
	public String getTime() {
		return loctime;
	}

	public void setTime(String loctime) {
		this.loctime = loctime;
	}
	
	public String getWatcher() {
		return watcher;
	}

	public void setWatcher(String watcher) {
		this.watcher = watcher;
	}
	
	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}
}