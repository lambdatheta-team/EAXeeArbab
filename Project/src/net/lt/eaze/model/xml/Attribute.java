package net.lt.eaze.model.xml;

import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;


@XmlRootElement(name = "Table")
@XmlType(propOrder = {"attributeId", "attributeName", "attributeType","description","allowableValues" })
public class Attribute {

	private String attributeId;
	private String attributeName;
	private String attributeType;
//	private String attributeLength;
	private String description;
	private String allowableValues;;

	public String getAttributeName() {
		return attributeName;
	}

	public void setAttributeName(String attributeName) {
		this.attributeName = attributeName;
	}

	public String getAttributeType() {
		return attributeType;
	}

	public void setAttributeType(String attributeType) {
		this.attributeType = attributeType;
	}

//	public String getAttributeLength() {
//		return attributeLength;
//	}
//
//	public void setAttributeLength(String attributeLength) {
//		this.attributeLength = attributeLength;
//	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getAllowableValues() {
		return allowableValues;
	}

	public void setAllowableValues(String allowableValues) {
		this.allowableValues = allowableValues;
	}


	public String getAttributeId() {
		return attributeId;
	}

	public void setAttributeId(String attributeId) {
		this.attributeId = attributeId;
	}

	@Override
	public String toString() {
		return "Attribute [attributeName=" + attributeName + ", attributeType=" + attributeType + ", description="
				+ description + ", allowableValues=" + allowableValues + "]";
	}
	
	
}
