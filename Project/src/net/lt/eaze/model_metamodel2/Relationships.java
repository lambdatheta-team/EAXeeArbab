package net.lt.eaze.model_metamodel2;

import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

@XmlRootElement(name = "Relation")
@XmlType(propOrder = {"relationshipName","conceptType","relationshipType","relationshipColor","relationshipNotation","relationshipPrimarSymbol","relationshipSecondarySymbol","symbolAttributeVariants","from_to_ToInterpretation","to_to_FromInterpretation","originator","isEnabled"})
public class Relationships {
	
	private String relationshipName;
	private String conceptType;
	private String relationshipType;
	private String relationshipColor;
	private String relationshipNotation;
	private String relationshipPrimarSymbol;
	private String relationshipSecondarySymbol;
	private String symbolAttributeVariants;
	private String from_to_ToInterpretation;
	private String to_to_FromInterpretation;
	private String originator;
	private String isEnabled;
	
	public String getRelationshipName() {
		return relationshipName;
	}
	public void setRelationshipName(String relationshipName) {
		this.relationshipName = relationshipName;
	}
	public String getConceptType() {
		return conceptType;
	}
	public void setConceptType(String conceptType) {
		this.conceptType = conceptType;
	}
	public String getRelationshipType() {
		return relationshipType;
	}
	public void setRelationshipType(String relationshipType) {
		this.relationshipType = relationshipType;
	}
	public String getRelationshipColor() {
		return relationshipColor;
	}
	public void setRelationshipColor(String relationshipColor) {
		this.relationshipColor = relationshipColor;
	}
	public String getRelationshipNotation() {
		return relationshipNotation;
	}
	public void setRelationshipNotation(String relationshipNotation) {
		this.relationshipNotation = relationshipNotation;
	}
	public String getRelationshipPrimarSymbol() {
		return relationshipPrimarSymbol;
	}
	public void setRelationshipPrimarSymbol(String relationshipPrimarSymbol) {
		this.relationshipPrimarSymbol = relationshipPrimarSymbol;
	}
	public String getRelationshipSecondarySymbol() {
		return relationshipSecondarySymbol;
	}
	public void setRelationshipSecondarySymbol(String relationshipSecondarySymbol) {
		this.relationshipSecondarySymbol = relationshipSecondarySymbol;
	}
	
	public String getSymbolAttributeVariants() {
		return symbolAttributeVariants;
	}
	public void setSymbolAttributeVariants(String symbolAttributeVariants) {
		this.symbolAttributeVariants = symbolAttributeVariants;
	}
	public String getFrom_to_ToInterpretation() {
		return from_to_ToInterpretation;
	}
	public void setFrom_to_ToInterpretation(String from_to_ToInterpretation) {
		this.from_to_ToInterpretation = from_to_ToInterpretation;
	}
	public String getTo_to_FromInterpretation() {
		return to_to_FromInterpretation;
	}
	public void setTo_to_FromInterpretation(String to_to_FromInterpretation) {
		this.to_to_FromInterpretation = to_to_FromInterpretation;
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
	
}
