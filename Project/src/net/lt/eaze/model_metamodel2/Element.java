package net.lt.eaze.model_metamodel2;

import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementWrapper;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

@XmlRootElement(name = "Element")
@XmlType(propOrder = {"elementName","elementShortName", "conceptType", "elementType", "elementLayer", "elementAspect", "elementColor", "elementNotation", "elementPrimarySymbol", "elementSecondarySymbol","description","originator", "isEnabled"})
public class Element {

	private String elementName;
	private String elementShortName;
	private String conceptType;
	private String elementType;
	private String elementLayer;
	private String elementAspect;
	private String elementColor;
	private String elementNotation;
	private String elementPrimarySymbol;
	private String originator;
	private String elementSecondarySymbol;
	private String isEnabled;
	private String description;
	
	
	public String getElementName() {
		return elementName;
	}
	public void setElementName(String elementName) {
		this.elementName = elementName;
	}
	
	public String getElementShortName() {
		return elementShortName;
	}
	public void setElementShortName(String elementShortName) {
		this.elementShortName = elementShortName;
	}
	public String getConceptType() {
		return conceptType;
	}
	public void setConceptType(String conceptType) {
		this.conceptType = conceptType;
	}
	public String getElementType() {
		return elementType;
	}
	public void setElementType(String elementType) {
		this.elementType = elementType;
	}
	public String getElementLayer() {
		return elementLayer;
	}
	public void setElementLayer(String elementLayer) {
		this.elementLayer = elementLayer;
	}
	public String getElementAspect() {
		return elementAspect;
	}
	public void setElementAspect(String elementAspect) {
		this.elementAspect = elementAspect;
	}
	public String getElementColor() {
		return elementColor;
	}
	public void setElementColor(String elementColor) {
		this.elementColor = elementColor;
	}
	public String getElementNotation() {
		return elementNotation;
	}
	public void setElementNotation(String elementNotation) {
		this.elementNotation = elementNotation;
	}
	public String getElementPrimarySymbol() {
		return elementPrimarySymbol;
	}
	public void setElementPrimarySymbol(String elementPrimarySymbol) {
		this.elementPrimarySymbol = elementPrimarySymbol;
	}
	public String getElementSecondarySymbol() {
		return elementSecondarySymbol;
	}
	public void setElementSecondarySymbol(String elementSecondarySymbol) {
		this.elementSecondarySymbol = elementSecondarySymbol;
	}
	public String getOriginator() {
		return originator;
	}
	public void setOriginator(String originator) {
		this.originator = originator;
	}
	public String getIsEnabled() {
		return isEnabled;
	}
	public void setIsEnabled(String isEnabled) {
		this.isEnabled = isEnabled;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	@Override
	public String toString() {
		return "Element [elementName=" + elementName + "]";
	}
	
	
	
}
