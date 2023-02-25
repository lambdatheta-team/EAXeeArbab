package net.lt.eaze.repositoryManagement;

public class pools {
	private String pool_name;
	private String role_type;
	private String repository_name;
	public pools(String pool_name, String role_type, String repository_name) {
		this.pool_name = pool_name;
		this.role_type = role_type;
		this.repository_name = repository_name;
	}
	public String getPool_name() {
		return pool_name;
	}
	public void setPool_name(String pool_name) {
		this.pool_name = pool_name;
	}
	public String getRole_type() {
		return role_type;
	}
	public void setRole_type(String role_type) {
		this.role_type = role_type;
	}
	public String getRepository_name() {
		return repository_name;
	}
	public void setRepository_name(String repository_name) {
		this.repository_name = repository_name;
	}
	@Override
	public String toString() {
		return "pools [pool_name=" + pool_name + ", role_type=" + role_type + ", repository_name=" + repository_name
				+ "]";
	}
	
	
}
