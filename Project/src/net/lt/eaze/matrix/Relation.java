package net.lt.eaze.matrix;

import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

@XmlRootElement(name = "Relation")
@XmlType(propOrder = { "firstObject","secondObject","relationship"})
public class Relation {
	private String firstObject;
	private String secondObject;
	private String relationship;
	public String getFirstObject() {
		return firstObject;
	}
	public void setFirstObject(String firstObject) {
		this.firstObject = firstObject;
	}
	public String getSecondObject() {
		return secondObject;
	}
	public void setSecondObject(String secondObject) {
		this.secondObject = secondObject;
	}
	public String getRelationship() {
		return relationship;
	}
	public void setRelationship(String relationship) {
		this.relationship = relationship;
	}
	@Override
	public String toString() {
		return "Relation [firstObject=" + firstObject + ", secondObject=" + secondObject + ", relationship="
				+ relationship + "]";
	}
	
}
