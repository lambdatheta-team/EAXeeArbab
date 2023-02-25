package net.lt.eaze.model.xml;

import java.util.List;

import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementWrapper;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;


@XmlRootElement(name = "Attribute")
@XmlType(propOrder = {"definition", "attributes"})
public class Table {

	private String tableName;
	private String tableShortName;
	private String categoryName;
	private String definition;
	List<Attribute> attributes;
	
	@XmlElementWrapper(name = "Attributes")
	@XmlElement(name = "Attribute")
	public List<Attribute> getAttributes() {
		return attributes;
	}

	public void setAttributes(List<Attribute> attributes) {
		this.attributes = attributes;
	}

	@XmlAttribute(name = "tableName")
	public String getTableName() {
		return tableName;
	}

	public void setTableName(String tableName) {
		this.tableName = tableName;
	}
	
	@XmlAttribute(name = "tableShortName")
	public String getTableShortName() {
		return tableShortName;
	}

	public void setTableShortName(String tableShortName) {
		this.tableShortName = tableShortName;
	}

	public String getDefinition() {
		return definition;
	}

	public void setDefinition(String definition) {
		this.definition = definition;
	}

	@Override
	public String toString() {
		return "Table [tableName=" + tableName + ", attributes=" + attributes + "]\n\n";
	}
	
	@XmlAttribute(name = "tableCategory")
	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

}
