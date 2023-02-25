package net.lt.eaze.downloadMatrix;

import java.util.ArrayList;
import java.util.List;

public class downloadMatrix {
	private String matrixName;
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
	
}
