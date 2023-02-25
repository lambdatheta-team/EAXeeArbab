package net.lt.eaze.matrix;

import java.util.List;

import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

@XmlRootElement(name = "Matrix")
@XmlType(propOrder = { "matrixName","parentID","relation","theads","tbodies"})
public class saveMatrix {
	
	private String matrixName;
	private String parentID;
	private String relation;
	List<thead> theads;
	List<tbody> tbodies;
	public String getMatrixName() {
		return matrixName;
	}
	public void setMatrixName(String matrixName) {
		this.matrixName = matrixName;
	}
	public String getParentID() {
		return parentID;
	}
	public void setParentID(String parentID) {
		this.parentID = parentID;
	}
	public String getRelation() {
		return relation;
	}
	public void setRelation(String relation) {
		this.relation = relation;
	}
	public List<thead> getTheads() {
		return theads;
	}
	public void setTheads(List<thead> theads) {
		this.theads = theads;
	}
	public List<tbody> getTbodies() {
		return tbodies;
	}
	public void setTbodies(List<tbody> tbodies) {
		this.tbodies = tbodies;
	}
	@Override
	public String toString() {
		return "saveMatrix [matrixName=" + matrixName + ", parentID=" + parentID + ", theads=" + theads + ", tbodies="
				+ tbodies + "]";
	}
	
}
