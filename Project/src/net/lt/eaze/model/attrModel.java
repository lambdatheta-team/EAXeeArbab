package net.lt.eaze.model;

public class attrModel {


	@Override
	public String toString() {
		return "attrModel [dbName=" + dbName + ", tableName=" + tableName + ", attrName=" + attrName + ", type=" + type
				+ ", length=" + length + ", tabelNameforForiegnKey=" + tabelNameforForiegnKey + "]";
	}

	private String dbName;
	private String tableName;
	private String attrName;
	private String type;
	private String length;
	private String tabelNameforForiegnKey;
	
	public attrModel(String dbName, String tableName) {
		this.dbName = dbName;
		this.tableName = tableName;
	}
	
	public attrModel(String dbName, String tableName, String attrName, String type, String length,String tabelNameforForiegnKey) {
		this.dbName = dbName;
		this.tableName = tableName;
		this.attrName = attrName;
		this.type = type;
		this.length = length;
		this.tabelNameforForiegnKey = tabelNameforForiegnKey;
	}
	
	public attrModel() {
	}
	
	public attrModel(String attrName) {
		this.attrName = attrName;
	}

	public String getTabelNameforForiegnKey() {
		return tabelNameforForiegnKey;
	}

	public void setTabelNameforForiegnKey(String tabelNameforForiegnKey) {
		this.tabelNameforForiegnKey = tabelNameforForiegnKey;
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

	public String getAttrName() {
		return attrName;
	}

	public void setAttrName(String attrName) {
		this.attrName = attrName;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getLength() {
		return length;
	}

	public void setLength(String length) {
		this.length = length;
	}
}
