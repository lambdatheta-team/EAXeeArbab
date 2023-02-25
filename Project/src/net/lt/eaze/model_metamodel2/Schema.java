package net.lt.eaze.model_metamodel2;

import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementWrapper;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

@XmlRootElement(name = "Schema")
@XmlType(propOrder = { "dbName", "elements","relations","relationship_connectors","relationship_matrix","metamodel_variables","element_attributes","relationship_attributes"})
public class Schema {
	
	private String dbName;
	
	List<Element> elements;
	
	List<Relationships> relations;
	
	List<Relationship_Connector> relationship_connectors;
	
	List<Relationship_Matrix> relationship_matrix;
	
	List<Metamodel_Variable> metamodel_variables;
	
	List<Element_Attributes> element_attributes;
	
	List<Relationship_Attributes> relationship_attributes;

	public String getDbName() {
		return dbName;
	}

	public void setDbName(String dbName) {
		this.dbName = dbName;
	}

	@XmlElementWrapper(name = "Elements")
	@XmlElement(name = "Element")
	public List<Element> getElements() {
		return elements;
	}

	public void setElements(List<Element> elements) {
		this.elements = elements;
	}
	@XmlElementWrapper(name = "Relations")
	@XmlElement(name = "Relation")
	public List<Relationships> getRelations() {
		return relations;
	}

	public void setRelations(List<Relationships> relations) {
		this.relations = relations;
	}
	
	@XmlElementWrapper(name = "RelationshipConnectors")
	@XmlElement(name = "RelationshipConnector")
	public List<Relationship_Connector> getRelationship_connectors() {
		return relationship_connectors;
	}

	public void setRelationship_connectors(List<Relationship_Connector> relationship_connectors) {
		this.relationship_connectors = relationship_connectors;
	}

	public List<Relationship_Matrix> getRelationship_matrix() {
		return relationship_matrix;
	}

	@XmlElementWrapper(name = "AllRelationshipMatrix")
	@XmlElement(name = "Relationship_Matrix")
	public void setRelationship_matrix(List<Relationship_Matrix> relationship_matrix) {
		this.relationship_matrix = relationship_matrix;
	}
	
	@XmlElementWrapper(name = "MetamodelVariables")
	@XmlElement(name = "MetamodelVariable")
	public List<Metamodel_Variable> getMetamodel_variables() {
		return metamodel_variables;
	}

	public void setMetamodel_variables(List<Metamodel_Variable> metamodel_variables) {
		this.metamodel_variables = metamodel_variables;
	}

	@XmlElementWrapper(name = "ElementAttributes")
	@XmlElement(name = "ElementAttribute")
	
	public List<Element_Attributes> getElement_attributes() {
		return element_attributes;
	}


	
	public void setElement_attributes(List<Element_Attributes> element_attributes) {
		this.element_attributes = element_attributes;
	}
	
	@XmlElementWrapper(name = "RelationshipAttributes")
	@XmlElement(name = "RelationshipAttribute")

	public List<Relationship_Attributes> getRelationship_attributes() {
		return relationship_attributes;
	}

	public void setRelationship_attributes(List<Relationship_Attributes> relationship_attributes) {
		this.relationship_attributes = relationship_attributes;
	}
	
	
}
