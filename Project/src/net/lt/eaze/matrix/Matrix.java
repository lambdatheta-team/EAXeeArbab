package net.lt.eaze.matrix;

import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

@XmlRootElement(name = "Matrix")
@XmlType(propOrder = { "matrixName","firstElement","secondElement","parentID","relations"})
public class Matrix {
	
	private String matrixName;
	private String firstElement;
	private String secondElement;
	private String parentID;
	private Relations relations;
	
	public String getMatrixName() {
		return matrixName;
	}
	public void setMatrixName(String matrixName) {
		this.matrixName = matrixName;
	}
	public String getFirstElement() {
		return firstElement;
	}
	public void setFirstElement(String firstElement) {
		this.firstElement = firstElement;
	}
	public String getSecondElement() {
		return secondElement;
	}
	public void setSecondElement(String secondElement) {
		this.secondElement = secondElement;
	}
	
	public String getParentID() {
		return parentID;
	}
	public void setParentID(String parentID) {
		this.parentID = parentID;
	}
	public Relations getRelations() {
		return relations;
	}
	public void setRelations(Relations relations) {
		this.relations = relations;
	}
	@Override
	public String toString() {
		return "Matrix [firstElement=" + firstElement + ", secondElement=" + secondElement + ", relations=" + relations
				+ "]";
	}
	

}
