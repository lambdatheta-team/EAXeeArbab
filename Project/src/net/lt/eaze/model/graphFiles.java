package net.lt.eaze.model;

public class graphFiles {
	private String id;
	private String modelName;
	private String parentID;
	private String isFiltered;
	private String filteredDetails;
	
	
	
	public graphFiles(String id, String modelName) {
		this.id = id;
		this.modelName = modelName;
	}
	
	public graphFiles(String id, String modelName, String parentID) {
		this.id = id;
		this.modelName = modelName;
		this.parentID = parentID;
	}

	public graphFiles(String id, String modelName, String parentID, String isFiltered, String filteredDetails) {
		this.id = id;
		this.modelName = modelName;
		this.parentID = parentID;
		this.isFiltered = isFiltered;
		this.filteredDetails = filteredDetails;
	}

	public graphFiles(String id, String modelName, String isFiltered, String filteredDetails) {
		this.id = id;
		this.modelName = modelName;
		this.isFiltered = isFiltered;
		this.filteredDetails = filteredDetails;
	}

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getModelName() {
		return modelName;
	}
	public void setModelName(String modelName) {
		this.modelName = modelName;
	}
	public String getParentID() {
		return parentID;
	}
	public void setParentID(String parentID) {
		this.parentID = parentID;
	}

	public String getIsFiltered() {
		return isFiltered;
	}

	public void setIsFiltered(String isFiltered) {
		isFiltered = isFiltered;
	}

	public String getFilteredDetails() {
		return filteredDetails;
	}

	public void setFilteredDetails(String filteredDetails) {
		this.filteredDetails = filteredDetails;
	}

	@Override
	public String toString() {
		return "graphFiles [id=" + id + ", modelName=" + modelName + ", parentID=" + parentID + "]";
	}
	
	
}
