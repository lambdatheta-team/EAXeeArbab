package net.lt.eaze.model;

public class matrixFiles {
	private String id;
	private String modelName;
	private String parentID;
	
	private String matrix_name;
	private String matrix_element1;
	private String matrix_element2;
	private String matrix_relation;
	
	public matrixFiles(String id, String matrix_name, String matrix_element1, String matrix_element2, String matrix_relation,String parentID) {
		this.id = id;
		this.parentID = parentID;
		this.matrix_name = matrix_name;
		this.matrix_element1 = matrix_element1;
		this.matrix_element2 = matrix_element2;
		this.matrix_relation = matrix_relation;
	}

	public matrixFiles(String id, String modelName) {
		this.id = id;
		this.modelName = modelName;
	}
	
	public matrixFiles(String id, String modelName, String parentID) {
		this.id = id;
		this.modelName = modelName;
		this.parentID = parentID;
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
	public String getMatrix_name() {
		return matrix_name;
	}
	public void setMatrix_name(String matrix_name) {
		this.matrix_name = matrix_name;
	}
	public String getMatrix_element1() {
		return matrix_element1;
	}
	public void setMatrix_element1(String matrix_element1) {
		this.matrix_element1 = matrix_element1;
	}
	public String getMatrix_element2() {
		return matrix_element2;
	}
	public void setMatrix_element2(String matrix_element2) {
		this.matrix_element2 = matrix_element2;
	}
	public String getMatrix_relation() {
		return matrix_relation;
	}
	public void setMatrix_relation(String matrix_relation) {
		this.matrix_relation = matrix_relation;
	}

	@Override
	public String toString() {
		return "matrixFiles [id=" + id + ", modelName=" + modelName + ", parentID=" + parentID + "]";
	}
	
}
