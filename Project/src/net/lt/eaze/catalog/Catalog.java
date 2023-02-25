package net.lt.eaze.catalog;

import java.util.List;

import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

@XmlRootElement(name = "Catalog")
@XmlType(propOrder = { "catalogName","elementName","parentID","theads","tbodies"})
public class Catalog {
	
	private String catalogName;
	private String elementName;
	private String parentID;
	List<thead> theads;
	List<tbody> tbodies;
	
	public String getCatalogName() {
		return catalogName;
	}
	public void setCatalogName(String catalogName) {
		this.catalogName = catalogName;
	}
	public String getElementName() {
		return elementName;
	}
	public void setElementName(String elementName) {
		this.elementName = elementName;
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
	public String getParentID() {
		return parentID;
	}
	public void setParentID(String parentID) {
		this.parentID = parentID;
	}
	@Override
	public String toString() {
		return "Catalog [catalogName=" + catalogName + ", elementName=" + elementName + ", theads=" + theads
				+ ", tbodies=" + tbodies + "]";
	}
}
