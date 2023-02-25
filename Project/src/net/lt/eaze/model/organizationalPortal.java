package net.lt.eaze.model;

public class organizationalPortal {
	private String tab_id;
	private String tab_name;
	private String username;
	private String company_name;
	
	public organizationalPortal(String tab_id, String tab_name, String username, String company_name) {
		this.tab_id = tab_id;
		this.tab_name = tab_name;
		this.username = username;
		this.company_name = company_name;
	}

	public String getTab_id() {
		return tab_id;
	}

	public void setTab_id(String tab_id) {
		this.tab_id = tab_id;
	}

	public String getTab_name() {
		return tab_name;
	}

	public void setTab_name(String tab_name) {
		this.tab_name = tab_name;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getCompany_name() {
		return company_name;
	}

	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
	
	@Override
	public String toString() {
		return "organizationalPortal [tab_id=" + tab_id + ", tab_name=" + tab_name + ", username=" + username
				+ ", company_name=" + company_name + "]";
	}
}
