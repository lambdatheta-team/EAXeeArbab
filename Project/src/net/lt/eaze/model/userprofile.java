package net.lt.eaze.model;

public class userprofile {
	
	private String username;
	private String userFullName;
	private String userRole;
	private String emailAddress;
	private String cellNumber;
	private String phoneNumber;
	private String extension;
	private String organizationUnitName;
	
	public userprofile(String username,String userFullName, String emailAddress, String cellNumber, String phoneNumber,String extension, String organizationUnitName) {
		this.setUsername(username);
		this.userFullName = userFullName;
		this.emailAddress = emailAddress;
		this.cellNumber = cellNumber;
		this.phoneNumber = phoneNumber;
		this.extension = extension;
		this.organizationUnitName = organizationUnitName;
	}
	
	public userprofile(String userFullName, String emailAddress, String cellNumber, String phoneNumber,String extension, String organizationUnitName) {
		
		this.userFullName = userFullName;
		this.emailAddress = emailAddress;
		this.cellNumber = cellNumber;
		this.phoneNumber = phoneNumber;
		this.extension = extension;
		this.organizationUnitName = organizationUnitName;
	}
	
	public String getUserFullName() {
		return userFullName;
	}
	public void setUserFullName(String userFullName) {
		this.userFullName = userFullName;
	}
	public String getUserRole() {
		return userRole;
	}
	public void setUserRole(String userRole) {
		this.userRole = userRole;
	}
	public String getEmailAddress() {
		return emailAddress;
	}
	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}
	public String getCellNumber() {
		return cellNumber;
	}
	public void setCellNumber(String cellNumber) {
		this.cellNumber = cellNumber;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getExtension() {
		return extension;
	}
	public void setExtension(String extension) {
		this.extension = extension;
	}
	public String getOrganizationUnitName() {
		return organizationUnitName;
	}
	public void setOrganizationUnitName(String organizationUnitName) {
		this.organizationUnitName = organizationUnitName;
	}

	@Override
	public String toString() {
		return "userprofile [userFullName=" + userFullName + ", userRole=" + userRole + ", emailAddress=" + emailAddress
				+ ", cellNumber=" + cellNumber + ", phoneNumber=" + phoneNumber + ", extension=" + extension
				+ ", organizationUnitName=" + organizationUnitName + ", getUserFullName()=" + getUserFullName()
				+ ", getUserRole()=" + getUserRole() + ", getEmailAddress()=" + getEmailAddress() + ", getCellNumber()="
				+ getCellNumber() + ", getPhoneNumber()=" + getPhoneNumber() + ", getExtension()=" + getExtension()
				+ ", getOrganizationUnitName()=" + getOrganizationUnitName() + ", getClass()=" + getClass()
				+ ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
	
}
