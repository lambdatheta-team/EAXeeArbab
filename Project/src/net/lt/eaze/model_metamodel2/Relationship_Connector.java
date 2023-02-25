package net.lt.eaze.model_metamodel2;

import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

@XmlRootElement(name = "RelationshipConnectors")
@XmlType(propOrder = {"relationshipConnectorName", "conceptType", "elementColor", "elementNotation", "elementPrimarySymbol", "elementSecondarySymbol"})
public class Relationship_Connector {
	
	private String relationshipConnectorName;
	private String conceptType;
	private String elementColor;
	private String elementNotation;
	private String elementPrimarySymbol;
	private String elementSecondarySymbol;
	
	public String getRelationshipConnectorName() {
		return relationshipConnectorName;
	}
	public void setRelationshipConnectorName(String relationshipConnectorName) {
		this.relationshipConnectorName = relationshipConnectorName;
	}
	public String getConceptType() {
		return conceptType;
	}
	public void setConceptType(String conceptType) {
		this.conceptType = conceptType;
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
	

}
