package controller;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

@Entity
public class Document{
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer id;
	private String filename;
	private String datastream;
	@ManyToMany
	private  List<User> users = new ArrayList<User>();
	
	public Document() {}
	
	public Document(Integer id, String filename, String datastream, List<User> users) {
		super();
		this.id = id;
		this.filename = filename;
		this.datastream = datastream;
		this.users = users;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String username) {
		this.filename = username;
	}
	public String getDatastream() {
		return datastream;
	}
	public void setDatastream(String datastream) {
		this.datastream = datastream;
	}
	public List<User> getUsers() {
		return users;
	}
	public void setUsers(List<User> users) {
		this.users = users;
	}


 
	
	
	
	
}