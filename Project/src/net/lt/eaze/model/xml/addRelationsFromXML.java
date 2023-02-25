package net.lt.eaze.model.xml;

public class addRelationsFromXML {
	private String dbName;
	private String tableName;
	private String fromTable;
	private String fromTableShortName;
	private String toTable;
	private String toTableShortName;
	private String relation;
	public String getDbName() {
		return dbName;
	}
	public void setDbName(String dbName) {
		this.dbName = dbName;
	}
	public String getTableName() {
		return tableName;
	}
	public void setTableName(String tableName) {
		this.tableName = tableName;
	}
	public String getFromTable() {
		return fromTable;
	}
	public void setFromTable(String fromTable) {
		this.fromTable = fromTable;
	}
	public String getToTable() {
		return toTable;
	}
	public void setToTable(String toTable) {
		this.toTable = toTable;
	}
	public String getRelation() {
		return relation;
	}
	public void setRelation(String relation) {
		this.relation = relation;
	}
	public String getFromTableShortName() {
		return fromTableShortName;
	}
	public void setFromTableShortName(String fromTableShortName) {
		this.fromTableShortName = fromTableShortName;
	}
	public String getToTableShortName() {
		return toTableShortName;
	}
	public void setToTableShortName(String toTableShortName) {
		this.toTableShortName = toTableShortName;
	}
}
