package net.lt.eaze.model;

import java.util.ArrayList;
import java.util.List;

public class fromExcel {
	private String dbName;
	private String tableName;
	private String firstRowIsColumnName;;
	public String getFirstRowIsColumnName() {
		return firstRowIsColumnName;
	}
	public void setFirstRowIsColumnName(String firstRowIsColumnName) {
		this.firstRowIsColumnName = firstRowIsColumnName;
	}
	private List<String> columnNames;
	private List<String> rowValues;
	private List<ArrayList<String>> allRowValues;
	public fromExcel() {

	}

	public fromExcel(String dbName, String tableName, String firstRowIsColumnName, List<String> columnNames,
			List<String> rowValues) {
		this.dbName = dbName;
		this.tableName = tableName;
		this.firstRowIsColumnName = firstRowIsColumnName;
		this.columnNames = columnNames;
		this.rowValues = rowValues;
	}

	public fromExcel(String dbName, String tableName, String firstRowIsColumnName, List<String> columnNames,
			List<String> rowValues, ArrayList<ArrayList<String>> allRowValues) {
		this.dbName = dbName;
		this.tableName = tableName;
		this.firstRowIsColumnName = firstRowIsColumnName;
		this.columnNames = columnNames;
		this.rowValues = rowValues;
//		this.allRowValues = allRowValues;
//		this.setAllRowValues(allRowValues);
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
	public List<String> getColumnNames() {
		return columnNames;
	}
	public void setColumnNames(List<String> columnNames) {
		this.columnNames = columnNames;
	}
	public List<String> getRowValues() {
		return rowValues;
	}
	public void setRowValues(List<String> rowValues) {
		this.rowValues = rowValues;
	}
	public List<ArrayList<String>> getAllRowValues() {
		return allRowValues;
	}
	public void setAllRowValues(ArrayList<ArrayList<String>> allRows) {
		this.allRowValues = allRows;
	}
}
