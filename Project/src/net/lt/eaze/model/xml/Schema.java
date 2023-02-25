package net.lt.eaze.model.xml;

import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementWrapper;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

@XmlRootElement(name = "Schema")
@XmlType(propOrder = { "dbName", "tables","relations"})
public class Schema {
	
	List<Table> tables;
	
	List<Relation> relations;
	
	private String dbName;

	public String getDbName() {
		return dbName;
	}
	
	@XmlElementWrapper(name = "Tables")
	@XmlElement(name = "Table")
	public List<Table> getTables() {
		return tables;
	}

	public void setTables(List<Table> tablesForLL) {
		this.tables = tablesForLL;
	}
	
	@XmlElementWrapper(name = "Relations")
	@XmlElement(name = "Relation")
	public List<Relation> getRelations() {
		return relations;
	}

	public void setRelations(List<Relation> relations) {
		this.relations = relations;
	}

	public void setDbName(String dbName) {
		this.dbName = dbName;
	}
	
}
