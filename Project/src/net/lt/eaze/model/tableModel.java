package net.lt.eaze.model;

public class tableModel {
	private String dbName;
	private String tableName;
	public tableModel() {
		
	}
	
	public tableModel(String tableName) {
		this.tableName = tableName;
	}
	
	public tableModel(String dbName, String tableName) {
		this.dbName = dbName;
		this.tableName = tableName;
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
	
	
		@Override
		public String toString() {
			//return "Enterprise [dbName=" + dbName + ", tableName=" + tableName + "]";
//			if (tableName==null)
//			{
				//return "tableName=" + tableName;
				return tableName;
//			}
//			else {
//				return "No Table";
//			}
//			
		}
		
//		if(){}
		
	
}