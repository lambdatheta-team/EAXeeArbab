package net.lt.eaze.dao;

public class namedLicenseValidation {
	private String id;
	private String license_key;
	private String license_type;
	private String user_role;
	private String creation_date;
	private String expiration_date;
	public namedLicenseValidation(String id, String license_key, String license_type, String user_role,
			String creation_date, String expiration_date) {
		this.id = id;
		this.license_key = license_key;
		this.license_type = license_type;
		this.user_role = user_role;
		this.creation_date = creation_date;
		this.expiration_date = expiration_date;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getLicense_key() {
		return license_key;
	}
	public void setLicense_key(String license_key) {
		this.license_key = license_key;
	}
	public String getLicense_type() {
		return license_type;
	}
	public void setLicense_type(String license_type) {
		this.license_type = license_type;
	}
	public String getUser_role() {
		return user_role;
	}
	public void setUser_role(String user_role) {
		this.user_role = user_role;
	}
	public String getCreation_date() {
		return creation_date;
	}
	public void setCreation_date(String creation_date) {
		this.creation_date = creation_date;
	}
	public String getExpiration_date() {
		return expiration_date;
	}
	public void setExpiration_date(String expiration_date) {
		this.expiration_date = expiration_date;
	}

	@Override
	public String toString() {
		return "namedLicenseValidation [id=" + id + ", license_key=" + license_key + ", license_type=" + license_type
				+ ", user_role=" + user_role + ", creation_date=" + creation_date + ", expiration_date="
				+ expiration_date + "]";
	}
	
	
}