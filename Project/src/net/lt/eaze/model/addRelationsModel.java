package net.lt.eaze.model;

public class addRelationsModel {
	private boolean sourceIsNull;
	private boolean targetIsNull;
	private int id;
	private String dbName;
	private String tableName;
	private String sourceRelElement;
	private String targetRelElement;
	private String sourcePKEy;
	private String targetPKEY;
	private String sourceAttName;
	private String targetAttName;
	private String sourceAttValue;
	private String targetAttValue;
	private String relationshipType;
	private String bidirectionRelationshipPair;
	
	public addRelationsModel() {
	}
	
	public addRelationsModel(int id, String dbName, String tableName,
			String sourceRelElement, String targetRelElement, String sourcePKEy, String targetPKEY,
			String sourceAttName, String targetAttName, String sourceAttValue, String targetAttValue,
			String relationshipType,String bidirectionRelationshipPair) {
		this.id = id;
		this.dbName = dbName;
		this.tableName = tableName;
		this.sourceRelElement = sourceRelElement;
		this.targetRelElement = targetRelElement;
		this.sourcePKEy = sourcePKEy;
		this.targetPKEY = targetPKEY;
		this.sourceAttName = sourceAttName;
		this.targetAttName = targetAttName;
		this.sourceAttValue = sourceAttValue;
		this.targetAttValue = targetAttValue;
		this.relationshipType = relationshipType;
		this.bidirectionRelationshipPair = bidirectionRelationshipPair;
	}
	
	public addRelationsModel(boolean sourceIsNull, boolean targetIsNull, int id, String dbName, String tableName,
			String sourceRelElement, String targetRelElement, String sourcePKEy, String targetPKEY,
			String sourceAttName, String targetAttName, String sourceAttValue, String targetAttValue,
			String relationshipType,String bidirectionRelationshipPair) {
		this.sourceIsNull = sourceIsNull;
		this.targetIsNull = targetIsNull;
		this.id = id;
		this.dbName = dbName;
		this.tableName = tableName;
		this.sourceRelElement = sourceRelElement;
		this.targetRelElement = targetRelElement;
		this.sourcePKEy = sourcePKEy;
		this.targetPKEY = targetPKEY;
		this.sourceAttName = sourceAttName;
		this.targetAttName = targetAttName;
		this.sourceAttValue = sourceAttValue;
		this.targetAttValue = targetAttValue;
		this.relationshipType = relationshipType;
		this.bidirectionRelationshipPair = bidirectionRelationshipPair;
	}

	public addRelationsModel(String sourcePKEy, String sourceAttName) {
		this.sourcePKEy = sourcePKEy;
		this.sourceAttName = sourceAttName;
	}

	public boolean isSourceIsNull() {
		return sourceIsNull;
	}
	public void setSourceIsNull(boolean sourceIsNull) {
		this.sourceIsNull = sourceIsNull;
	}
	public boolean isTargetIsNull() {
		return targetIsNull;
	}
	public void setTargetIsNull(boolean targetIsNull) {
		this.targetIsNull = targetIsNull;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public String getSourceRelElement() {
		return sourceRelElement;
	}
	public void setSourceRelElement(String sourceRelElement) {
		this.sourceRelElement = sourceRelElement;
	}
	public String getTargetRelElement() {
		return targetRelElement;
	}
	public void setTargetRelElement(String targetRelElement) {
		this.targetRelElement = targetRelElement;
	}
	public String getSourcePKEy() {
		return sourcePKEy;
	}
	public void setSourcePKEy(String sourcePKEy) {
		this.sourcePKEy = sourcePKEy;
	}
	public String getTargetPKEY() {
		return targetPKEY;
	}
	public void setTargetPKEY(String targetPKEY) {
		this.targetPKEY = targetPKEY;
	}
	public String getSourceAttName() {
		return sourceAttName;
	}
	public void setSourceAttName(String sourceAttName) {
		this.sourceAttName = sourceAttName;
	}
	public String getTargetAttName() {
		return targetAttName;
	}
	public void setTargetAttName(String targetAttName) {
		this.targetAttName = targetAttName;
	}
	public String getSourceAttValue() {
		return sourceAttValue;
	}
	public void setSourceAttValue(String sourceAttValue) {
		this.sourceAttValue = sourceAttValue;
	}
	public String getTargetAttValue() {
		return targetAttValue;
	}
	public void setTargetAttValue(String targetAttValue) {
		this.targetAttValue = targetAttValue;
	}
	public String getRelationshipType() {
		return relationshipType;
	}
	public void setRelationshipType(String relationshipType) {
		this.relationshipType = relationshipType;
	}

	public String getBidirectionRelationshipPair() {
		return bidirectionRelationshipPair;
	}

	public void setBidirectionRelationshipPair(String bidirectionRelationshipPair) {
		this.bidirectionRelationshipPair = bidirectionRelationshipPair;
	}
	
}
