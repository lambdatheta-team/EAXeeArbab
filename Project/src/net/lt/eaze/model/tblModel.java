package net.lt.eaze.model;

public class tblModel {
	private String tableName;
	

	public tblModel() {
	}

	public tblModel(String tableName) {
		this.tableName = tableName;
	}

	public String getTblName() {
		return tableName;
	}

	public void setTblName(String tableName) {
		this.tableName = tableName;
	}

	@Override
	public String toString() {
		return "tblModel [tableName=" + tableName + "]";
	}

//	@Override
//	public String toString() {
//		return tableName;
//	}
}
