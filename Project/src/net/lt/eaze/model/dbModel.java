package net.lt.eaze.model;

public class dbModel {
	private String dbName;
	

	public dbModel() {
	}

	public dbModel(String dbName) {
		this.dbName = dbName;
	}

	public String getDbName() {
		return dbName;
	}

	public void setDbName(String dbName) {
		this.dbName = dbName;
	}

	@Override
	public String toString() {
		return "dbModel [dbName=" + dbName + "]";
	}

//	@Override
//	public String toString() {
//		return dbName;
//	}
}
