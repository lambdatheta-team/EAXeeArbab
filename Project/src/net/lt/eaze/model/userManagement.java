package net.lt.eaze.model;

public class userManagement {
	private String user_fullname;
	private String username;
	private String email;
	private int enabled;
	
	public userManagement(String user_fullname, String username, String email) {
		this.user_fullname = user_fullname;
		this.username = username;
		this.email = email;
	}
	public userManagement(String user_fullname, String username, String email, int enabled) {
		this.user_fullname = user_fullname;
		this.username = username;
		this.email = email;
		this.enabled = enabled;
	}

	public String getUser_fullname() {
		return user_fullname;
	}
	public void setUser_fullname(String user_fullname) {
		this.user_fullname = user_fullname;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getEnabled() {
		return enabled;
	}
	public void setEnabled(int enabled) {
		this.enabled = enabled;
	}
}