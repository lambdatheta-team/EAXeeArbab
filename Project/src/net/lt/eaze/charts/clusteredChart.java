package net.lt.eaze.charts;

import java.util.ArrayList;
import java.util.List;

public class clusteredChart {
	private List<String> nameRow;
	private List<ArrayList<String>> attributeValues;
	
	
	public clusteredChart() {
	}
	public clusteredChart(List<String> nameRow, List<ArrayList<String>> attributeValues) {
		this.nameRow = nameRow;
		this.attributeValues = attributeValues;
	}
	public List<String> getNameRow() {
		return nameRow;
	}
	public void setNameRow(List<String> nameRow) {
		this.nameRow = nameRow;
	}
	public List<ArrayList<String>> getAttributeValues() {
		return attributeValues;
	}
	public void setAttributeValues(List<ArrayList<String>> attributeValues) {
		this.attributeValues = attributeValues;
	}
	@Override
	public String toString() {
		return "clusteredChart [nameRow=" + nameRow + ", attributeValues=" + attributeValues + "]";
	}
}
