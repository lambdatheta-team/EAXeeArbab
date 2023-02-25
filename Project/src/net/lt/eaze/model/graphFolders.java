package net.lt.eaze.model;

public class graphFolders {
	private String id;
	private String folder_name;
	private String parent_id;
	
	public graphFolders(String id, String folder_name, String parent_id) {
		this.id = id;
		this.folder_name = folder_name;
		this.parent_id = parent_id;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getFolder_name() {
		return folder_name;
	}
	public void setFolder_name(String folder_name) {
		this.folder_name = folder_name;
	}
	public String getParent_id() {
		return parent_id;
	}
	public void setParent_id(String parent_id) {
		this.parent_id = parent_id;
	}

	@Override
	public String toString() {
		return "graphFolders [id=" + id + ", folder_name=" + folder_name + ", parent_id=" + parent_id + "]";
	}
	
}
