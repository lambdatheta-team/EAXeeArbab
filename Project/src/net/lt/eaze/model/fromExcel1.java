package net.lt.eaze.model;

import java.util.ArrayList;
import java.util.List;

public class fromExcel1 {
	private String dbName;
	private String tableName;
	private String firstRowIsColumnName;
	public String getFirstRowIsColumnName() {
		return firstRowIsColumnName;
	}
	public void setFirstRowIsColumnName(String firstRowIsColumnName) {
		this.firstRowIsColumnName = firstRowIsColumnName;
	}
	private List<String> columnNames;
	private List<String> rowValues1;
	private List<ArrayList<String>> allRowValues;
	public fromExcel1() {

	}

	public fromExcel1(String dbName, String tableName, String firstRowIsColumnName, List<String> columnNames,
			List<String> rowValues1) {
		this.dbName = dbName;
		this.tableName = tableName;
		this.firstRowIsColumnName = firstRowIsColumnName;
		this.columnNames = columnNames;
		this.rowValues1 = rowValues1;
	}

	public fromExcel1(String dbName, String tableName, String firstRowIsColumnName, List<String> columnNames,
			List<String> rowValues1, ArrayList<ArrayList<String>> allRowValues) {
		this.dbName = dbName;
		this.tableName = tableName;
		this.firstRowIsColumnName = firstRowIsColumnName;
		this.columnNames = columnNames;
		this.rowValues1 = rowValues1;
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
	public List<String> getRowValues1() {
		return rowValues1;
	}
	public void setRowValues1(List<String> rowValues1) {
		this.rowValues1 = rowValues1;
	}
	public List<ArrayList<String>> getAllRowValues() {
		return allRowValues;
	}
	public void setAllRowValues(ArrayList<ArrayList<String>> allRows) {
		this.allRowValues = allRows;
	}
}
