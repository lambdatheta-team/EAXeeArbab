package net.lt.eaze.repositoryManagement;

public class namedLicenses {
	private String row_id ;
	private String license_id ;
	private String user_id ;
	private String repository_name ;
	private int status ;
	private String license_key ;
	private String user_role ;
	private String username ;
	public namedLicenses(String license_id, String user_id, String repository_name, int status, String license_key,
			String user_role, String username) {
		this.license_id = license_id;
		this.user_id = user_id;
		this.repository_name = repository_name;
		this.status = status;
		this.license_key = license_key;
		this.user_role = user_role;
		this.username = username;
	}
	
	//Allocated Licenses
	public namedLicenses(String row_id,String license_key, String user_role, String username) {
		this.row_id = row_id;
		this.license_key = license_key;
		this.user_role = user_role;
		this.username = username;
	}
	
	//Available Named License
	public namedLicenses(String license_key, String user_role) {
		this.license_key = license_key;
		this.user_role = user_role;
	}

	public String getRow_id() {
		return row_id;
	}
	public void setRow_id(String row_id) {
		this.row_id = row_id;
	}
	public String getLicense_id() {
		return license_id;
	}
	public void setLicense_id(String license_id) {
		this.license_id = license_id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getRepository_name() {
		return repository_name;
	}
	public void setRepository_name(String repository_name) {
		this.repository_name = repository_name;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getLicense_key() {
		return license_key;
	}
	public void setLicense_key(String license_key) {
		this.license_key = license_key;
	}
	public String getUser_role() {
		return user_role;
	}
	public void setUser_role(String user_role) {
		this.user_role = user_role;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}

	@Override
	public String toString() {
		return "namedLicenses [row_id=" + row_id + ", license_id=" + license_id + ", user_id=" + user_id
				+ ", repository_name=" + repository_name + ", status=" + status + ", license_key=" + license_key
				+ ", user_role=" + user_role + ", username=" + username + "]";
	}
	
	
}
