package net.lt.eaze.model_metamodel2;

import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

@XmlRootElement(name = "Element")
@XmlType(propOrder = {"relationshipName","attributeType","manualDataEntry_OR_AutomaticDataEntry","single_OR_MultipleSelection","targetConcept","sourceConcept","attrributeName","isGrouped","groupStyle","groupCaption","groupID","attributeFormat","allowableValues","defaultValue","formPageNumber","formPageTitle","isEnabled"})

public class Relationship_Attributes {
	
	private String relationshipName;
	private String attributeType;
	private String manualDataEntry_OR_AutomaticDataEntry;
	private String single_OR_MultipleSelection;
	private String targetConcept;
	private String sourceConcept;
	private String attrributeName;
	private String isGrouped;
	private String groupStyle;
	private String groupCaption;
	private String groupID;
	private String attributeFormat;
	private String allowableValues;
	private String defaultValue;
	private String formPageNumber;
	private String formPageTitle;
	private String isEnabled;
	
	public String getRelationshipName() {
		return relationshipName;
	}
	public void setRelationshipName(String relationshipName) {
		this.relationshipName = relationshipName;
	}
	public String getAttributeType() {
		return attributeType;
	}
	public void setAttributeType(String attributeType) {
		this.attributeType = attributeType;
	}
	public String getManualDataEntry_OR_AutomaticDataEntry() {
		return manualDataEntry_OR_AutomaticDataEntry;
	}
	public void setManualDataEntry_OR_AutomaticDataEntry(String manualDataEntry_OR_AutomaticDataEntry) {
		this.manualDataEntry_OR_AutomaticDataEntry = manualDataEntry_OR_AutomaticDataEntry;
	}
	public String getSingle_OR_MultipleSelection() {
		return single_OR_MultipleSelection;
	}
	public void setSingle_OR_MultipleSelection(String single_OR_MultipleSelection) {
		this.single_OR_MultipleSelection = single_OR_MultipleSelection;
	}
	public String getTargetConcept() {
		return targetConcept;
	}
	public void setTargetConcept(String targetConcept) {
		this.targetConcept = targetConcept;
	}
	public String getSourceConcept() {
		return sourceConcept;
	}
	public void setSourceConcept(String sourceConcept) {
		this.sourceConcept = sourceConcept;
	}
	public String getAttrributeName() {
		return attrributeName;
	}
	public void setAttrributeName(String attrributeName) {
		this.attrributeName = attrributeName;
	}
	public String getIsGrouped() {
		return isGrouped;
	}
	public void setIsGrouped(String isGrouped) {
		this.isGrouped = isGrouped;
	}
	public String getGroupStyle() {
		return groupStyle;
	}
	public void setGroupStyle(String groupStyle) {
		this.groupStyle = groupStyle;
	}
	public String getGroupCaption() {
		return groupCaption;
	}
	public void setGroupCaption(String groupCaption) {
		this.groupCaption = groupCaption;
	}
	public String getGroupID() {
		return groupID;
	}
	public void setGroupID(String groupID) {
		this.groupID = groupID;
	}
	public String getAttributeFormat() {
		return attributeFormat;
	}
	public void setAttributeFormat(String attributeFormat) {
		this.attributeFormat = attributeFormat;
	}
	public String getAllowableValues() {
		return allowableValues;
	}
	public void setAllowableValues(String allowableValues) {
		this.allowableValues = allowableValues;
	}
	public String getDefaultValue() {
		return defaultValue;
	}
	public void setDefaultValue(String defaultValue) {
		this.defaultValue = defaultValue;
	}
	public String getFormPageNumber() {
		return formPageNumber;
	}
	public void setFormPageNumber(String formPageNumber) {
		this.formPageNumber = formPageNumber;
	}
	public String getFormPageTitle() {
		return formPageTitle;
	}
	public void setFormPageTitle(String formPageTitle) {
		this.formPageTitle = formPageTitle;
	}
	public String getIsEnabled() {
		return isEnabled;
	}
	public void setIsEnabled(String isEnabled) {
		this.isEnabled = isEnabled;
	}
	
}
