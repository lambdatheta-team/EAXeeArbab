package net.lt.eaze.matrix;

import java.util.ArrayList;
import java.util.List;

import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

@XmlRootElement(name = "Matrix")
@XmlType(propOrder = { "matrixName","parentID","theads","tbodies"})
public class downloadMatrix {
	private String matrixName;
	private String parentID;
	private List<String> theads;
	private List<ArrayList<String>> tbodies;
	
	
	public String getMatrixName() {
		return matrixName;
	}
	public void setMatrixName(String matrixName) {
		this.matrixName = matrixName;
	}
	public List<String> getTheads() {
		return theads;
	}
	public void setTheads(List<String> theads) {
		this.theads = theads;
	}
	public List<ArrayList<String>> getTbodies() {
		return tbodies;
	}
	public void setTbodies(List<ArrayList<String>> tbodies) {
		this.tbodies = tbodies;
	}
	public String getParentID() {
		return parentID;
	}
	public void setParentID(String parentID) {
		this.parentID = parentID;
	}
	@Override
	public String toString() {
		return "downloadMatrix [matrixName=" + matrixName + ", theads=" + theads + ", tbodies=" + tbodies + "]";
	}
	
}
