package net.lt.eaze.model;

public class attributesInformationModel {
	private String elementName;
	private String attributeType;
	private String targetRelationship_Element;
	private String sourceRelationship_Element;
	private String selfGeneratedAttribute;
	private String actualAttribute;
	private String isGrouped;
	private String groupStyle;
	private String groupCaption;
	private String attributeFormat;
	private String pageNumber;
	private String pageTitle;
	
	private String isPageGrouped;
	private String groupPageTitle;
	private String groupPageID;
	
	private String allowableValues;
	private String attributeTip;
	private String bidirectionRelationshipPair;
	private String singleOrMultiple;
	private String maximumNumberofObjectOccurrence;
	private String relationship;
	private String relationshipOverloadText;
	
	
	public attributesInformationModel(String attributeType,String targetRelationship_Element,String sourceRelationship_Element,String selfGeneratedAttribute, String actualAttribute, String isGrouped, String groupStyle, String groupCaption, String attributeFormat,
			String pageNumber, String pageTitle, String allowableValues, String attributeTip, String bidirectionRelationshipPair,String singleOrMultiple, String maximumNumberofObjectOccurrence, String relationship,String relationshipOverloadText) {
		this.attributeType = attributeType;
		this.targetRelationship_Element = targetRelationship_Element;
		this.sourceRelationship_Element = sourceRelationship_Element;
		this.selfGeneratedAttribute = selfGeneratedAttribute;
		this.actualAttribute = actualAttribute;
		this.isGrouped = isGrouped;
		this.groupStyle = groupStyle;
		this.groupCaption = groupCaption;
		this.attributeFormat = attributeFormat;
		this.pageNumber = pageNumber;
		this.pageTitle = pageTitle;
		this.allowableValues = allowableValues;
		this.attributeTip = attributeTip;
		this.bidirectionRelationshipPair = bidirectionRelationshipPair;
		this.singleOrMultiple = singleOrMultiple;
		this.maximumNumberofObjectOccurrence = maximumNumberofObjectOccurrence;
		this.relationship = relationship;
		this.relationshipOverloadText = relationshipOverloadText;
	}
	

	public attributesInformationModel(String attributeType, String targetRelationship_Element,
			String sourceRelationship_Element, String selfGeneratedAttribute, String actualAttribute, String isGrouped,
			String groupStyle, String groupCaption, String attributeFormat, String pageNumber, String pageTitle,
			String isPageGrouped, String groupPageTitle, String groupPageID, String allowableValues,
			String attributeTip, String bidirectionRelationshipPair, String singleOrMultiple,
			String maximumNumberofObjectOccurrence, String relationship, String relationshipOverloadText) {
		this.attributeType = attributeType;
		this.targetRelationship_Element = targetRelationship_Element;
		this.sourceRelationship_Element = sourceRelationship_Element;
		this.selfGeneratedAttribute = selfGeneratedAttribute;
		this.actualAttribute = actualAttribute;
		this.isGrouped = isGrouped;
		this.groupStyle = groupStyle;
		this.groupCaption = groupCaption;
		this.attributeFormat = attributeFormat;
		this.pageNumber = pageNumber;
		this.pageTitle = pageTitle;
		this.isPageGrouped = isPageGrouped;
		this.groupPageTitle = groupPageTitle;
		this.groupPageID = groupPageID;
		this.allowableValues = allowableValues;
		this.attributeTip = attributeTip;
		this.bidirectionRelationshipPair = bidirectionRelationshipPair;
		this.singleOrMultiple = singleOrMultiple;
		this.maximumNumberofObjectOccurrence = maximumNumberofObjectOccurrence;
		this.relationship = relationship;
		this.relationshipOverloadText = relationshipOverloadText;
	}





	public attributesInformationModel(String targetRelationship_Element, String sourceRelationship_Element) {
		this.targetRelationship_Element = targetRelationship_Element;
		this.sourceRelationship_Element = sourceRelationship_Element;
	}

	

	public attributesInformationModel(String elementName, String attributeType, String targetRelationship_Element,
			String sourceRelationship_Element, String selfGeneratedAttribute, String actualAttribute, String isGrouped,
			String groupStyle, String groupCaption, String attributeFormat, String pageNumber, String pageTitle,
			String allowableValues, String attributeTip, String bidirectionRelationshipPair, String singleOrMultiple, String maximumNumberofObjectOccurrence,
			String relationship,String relationshipOverloadText) {
		this.elementName = elementName;
		this.attributeType = attributeType;
		this.targetRelationship_Element = targetRelationship_Element;
		this.sourceRelationship_Element = sourceRelationship_Element;
		this.selfGeneratedAttribute = selfGeneratedAttribute;
		this.actualAttribute = actualAttribute;
		this.isGrouped = isGrouped;
		this.groupStyle = groupStyle;
		this.groupCaption = groupCaption;
		this.attributeFormat = attributeFormat;
		this.pageNumber = pageNumber;
		this.pageTitle = pageTitle;
		this.allowableValues = allowableValues;
		this.attributeTip = attributeTip;
		this.bidirectionRelationshipPair = bidirectionRelationshipPair;
		this.singleOrMultiple = singleOrMultiple;
		this.maximumNumberofObjectOccurrence = maximumNumberofObjectOccurrence;
		this.relationship = relationship;
		this.relationshipOverloadText = relationshipOverloadText;
	}

	public String getElementName() {
		return elementName;
	}
	public void setElementName(String elementName) {
		this.elementName = elementName;
	}
	public String getAttributeType() {
		return attributeType;
	}
	public void setAttributeType(String attributeType) {
		this.attributeType = attributeType;
	}
	public String getTargetRelationship_Element() {
		return targetRelationship_Element;
	}
	public void setTargetRelationship_Element(String targetRelationship_Element) {
		this.targetRelationship_Element = targetRelationship_Element;
	}
	public String getSourceRelationship_Element() {
		return sourceRelationship_Element;
	}
	public void setSourceRelationship_Element(String sourceRelationship_Element) {
		this.sourceRelationship_Element = sourceRelationship_Element;
	}
	public String getSelfGeneratedAttribute() {
		return selfGeneratedAttribute;
	}
	public void setSelfGeneratedAttribute(String selfGeneratedAttribute) {
		this.selfGeneratedAttribute = selfGeneratedAttribute;
	}
	public String getActualAttribute() {
		return actualAttribute;
	}
	public void setActualAttribute(String actualAttribute) {
		this.actualAttribute = actualAttribute;
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
	
	public String getAttributeFormat() {
		return attributeFormat;
	}
	public void setAttributeFormat(String attributeFormat) {
		this.attributeFormat = attributeFormat;
	}
	public String getPageNumber() {
		return pageNumber;
	}
	public void setPageNumber(String pageNumber) {
		this.pageNumber = pageNumber;
	}
	public String getPageTitle() {
		return pageTitle;
	}
	public void setPageTitle(String pageTitle) {
		this.pageTitle = pageTitle;
	}
	public String getIsPageGrouped() {
		return isPageGrouped;
	}


	public void setIsPageGrouped(String isPageGrouped) {
		this.isPageGrouped = isPageGrouped;
	}


	public String getGroupPageTitle() {
		return groupPageTitle;
	}


	public void setGroupPageTitle(String groupPageTitle) {
		this.groupPageTitle = groupPageTitle;
	}


	public String getGroupPageID() {
		return groupPageID;
	}


	public void setGroupPageID(String groupPageID) {
		this.groupPageID = groupPageID;
	}


	public String getAllowableValues() {
		return allowableValues;
	}
	public void setAllowableValues(String allowableValues) {
		this.allowableValues = allowableValues;
	}
	public String getAttributeTip() {
		return attributeTip;
	}

	public void setAttributeTip(String attributeTip) {
		this.attributeTip = attributeTip;
	}

	public String getBidirectionRelationshipPair() {
		return bidirectionRelationshipPair;
	}

	public void setBidirectionRelationshipPair(String bidirectionRelationshipPair) {
		this.bidirectionRelationshipPair = bidirectionRelationshipPair;
	}

	public String getRelationship() {
		return relationship;
	}

	public void setRelationship(String relationship) {
		this.relationship = relationship;
	}

	public String getSingleOrMultiple() {
		return singleOrMultiple;
	}

	public void setSingleOrMultiple(String singleOrMultiple) {
		this.singleOrMultiple = singleOrMultiple;
	}

	public String getMaximumNumberofObjectOccurrence() {
		return maximumNumberofObjectOccurrence;
	}

	public void setMaximumNumberofObjectOccurrence(String maximumNumberofObjectOccurrence) {
		this.maximumNumberofObjectOccurrence = maximumNumberofObjectOccurrence;
	}

	public String getRelationshipOverloadText() {
		return relationshipOverloadText;
	}

	public void setRelationshipOverloadText(String relationshipOverloadText) {
		this.relationshipOverloadText = relationshipOverloadText;
	}

	@Override
	public String toString() {
		return "attributesInformationModel [elementName=" + elementName + ", attributeType=" + attributeType
				+ ", targetRelationship_Element=" + targetRelationship_Element + ", sourceRelationship_Element="
				+ sourceRelationship_Element + ", selfGeneratedAttribute=" + selfGeneratedAttribute
				+ ", actualAttribute=" + actualAttribute + ", isGrouped=" + isGrouped + ", groupStyle=" + groupStyle
				+ ", groupCaption=" + groupCaption + ", attributeFormat=" + attributeFormat + ", pageNumber="
				+ pageNumber + ", pageTitle=" + pageTitle + ", allowableValues=" + allowableValues + ", attributeTip="
				+ attributeTip + ", bidirectionRelationshipPair=" + bidirectionRelationshipPair + ", singleOrMultiple="
				+ singleOrMultiple + ", relationship=" + relationship + ", relationshipOverloadText="
				+ relationshipOverloadText + "]";
	}
	
}
