package net.lt.eaze.model;

public class addRowsModel {
	private int id;
	private String dbName;
	private String tableName;
	private String columnName;
	private String rowValue;
	private String foreign_key_checkbox	;
	private String foreign_key_from;
	private String foreign_key_to;
	private String foreign_key_type;
	public addRowsModel() {
	}
	public addRowsModel(int id, String rowValue) {
		this.id = id;
		this.rowValue = rowValue;
	}
	public addRowsModel(String dbName, String tableName, String columnName, String rowValue,
			String foreign_key_checkbox, String foreign_key_from, String foreign_key_to, String foreign_key_type) {
		this.dbName = dbName;
		this.tableName = tableName;
		this.columnName = columnName;
		this.rowValue = rowValue;
		this.foreign_key_checkbox = foreign_key_checkbox;
		this.foreign_key_from = foreign_key_from;
		this.foreign_key_to = foreign_key_to;
		this.foreign_key_type = foreign_key_type;
	}
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
	public String getRowValue() {
		return rowValue;
	}
	public void setRowValue(String rowValue) {
		this.rowValue = rowValue;
	}
	public String getColumnName() {
		return columnName;
	}
	public void setColumnName(String columnName) {
		this.columnName = columnName;
	}
	public String getForeign_key_checkbox() {
		return foreign_key_checkbox;
	}
	public void setForeign_key_checkbox(String foreign_key_checkbox) {
		this.foreign_key_checkbox = foreign_key_checkbox;
	}
	public String getForeign_key_from() {
		return foreign_key_from;
	}
	public void setForeign_key_from(String foreign_key_from) {
		this.foreign_key_from = foreign_key_from;
	}
	public String getForeign_key_to() {
		return foreign_key_to;
	}
	public void setForeign_key_to(String foreign_key_to) {
		this.foreign_key_to = foreign_key_to;
	}
	public String getForeign_key_type() {
		return foreign_key_type;
	}
	public void setForeign_key_type(String foreign_key_type) {
		this.foreign_key_type = foreign_key_type;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
}
