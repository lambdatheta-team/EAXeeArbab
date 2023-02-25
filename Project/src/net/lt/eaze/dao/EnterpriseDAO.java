package net.lt.eaze.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import net.lt.eaze.catalog.Catalog;
import net.lt.eaze.matrix.Matrix;
import net.lt.eaze.matrix.downloadMatrix;
import net.lt.eaze.matrix.saveMatrix;
import net.lt.eaze.model.ModelElement;
import net.lt.eaze.model.ModelRelationship;
import net.lt.eaze.model.RelationsModel;
import net.lt.eaze.model.addRowsModel;
import net.lt.eaze.model.attrModel;
import net.lt.eaze.model.attributesInformation;
import net.lt.eaze.model.attributesInformationModel;
import net.lt.eaze.model.catalogFiles;
import net.lt.eaze.model.chartsModel;
import net.lt.eaze.model.userprofile;
import net.lt.eaze.model.dbModel;
import net.lt.eaze.model.fromExcel;
import net.lt.eaze.model.fromExcel1;
import net.lt.eaze.model.graphFiles;
import net.lt.eaze.model.graphFolders;
import net.lt.eaze.model.matrixFiles;
import net.lt.eaze.model.myPage;
import net.lt.eaze.model.navigationFiles;
import net.lt.eaze.model.organizationalPortal;
import net.lt.eaze.model.tableModel;
import net.lt.eaze.model.tblModel;
import net.lt.eaze.model.timeLineGraph;
import net.lt.eaze.model.userManagement;
import net.lt.eaze.model.xml.addAllowableValues;
import net.lt.eaze.model.xml.addRelationsFromXML;
import net.lt.eaze.repositoryManagement.namedLicenses;
import net.lt.eaze.repositoryManagement.pools;
import net.lt.eaze.userManagement.roleDetails;

public interface EnterpriseDAO{
	public int createDB(dbModel enterprise);
	
	public int createTable(tableModel enterprise);
	
	public int createTableForTab(String dbName, String tab_name, String username, String containerid);
	
	public int createAttr(attrModel enterprise) throws SQLException;
	
	public List<dbModel> listDb();
//	For table Data
	public List<String> listTbl(String dbName);
//	For truncate table data
	public List<String> listTruncTbl(String dbName);
//	public int listTruncTbl(String dbName);
	
// for element list
	public List<ModelElement> listEle(String dbName,String tableName);
	
	
	public List<tableModel> listTable(dbModel db_name);
	
	public List<String> listAttributes(String dbName, String tableName);
	
	public List<addRowsModel> listRows(String dbName, String tableName, String attrName);

	public int addRows(addRowsModel newRow);

	public int addRelations(RelationsModel r);

	public int addRowsFromExcel(fromExcel r);
	
	public int addRowsFromExcel1(fromExcel1 r, fromExcel1 q);
//	public int addRelationsFromXML_Method(addRelationsFromXML r);
//	public int testFiling(String r);

	int addRelationsFromXML_Method1(addRelationsFromXML r,int relationsCounter);

	List<String> getRowsForExcel(String dbName, String tableName, String id, String attName);

	List<String> getAllIds(String dbName, String tableName);

	int addAllowableValues(addAllowableValues a);

	List<String> getRows(String dbName, String tableName, String attrName);

	List<String> getAllowableValues(String dbName, String tableName, String attrName);

	List<String> getRows1(String dbName, String tableName, String attrName);



	int deleteRow(String dbName, String tableName, String id);

	public List<String> getRows_Form(String dbName, String tableName, String id, String obj);

	int editRow(String dbName, String tableName, List<String> attributes, String id, List<String> formData);

	List<String> getDatabases();
	
	public List<String> getSelfGenerated(String dbName , String elementName);

	List<String> getActualValue(String dbName, String elementName, String attributeValue);

	List<String> getRowWithCondition(String dbName, String tableName, String attributeName, String conditionAttribute,
			String conditionValue);
	List<String> GanttElement(String dbName, String tableName);
	
	List<String> GanttStartDate(String dbName, String tableName);
	
	List<String> SGAGanttStartDate(String dbName, String tableName, String ElementVal, String StartDateVal);
	
	List<String> SGAGanttEndDate(String dbName, String tableName, String ElementVal, String EndDateVal);
	
	List<String> SGAGanttLegend(String dbName, String tableName, String ElementVal, String LegendVal);
	
	List<String> GanttLegend(String dbName, String tableName);
	
	int savegraphjson(String json_graph, String username, String graphname, String graphID);
	
	int savenavigationjson(String json_graph, String username, String navigationname, String navigationID);
	
	String getGraph(String dbName, String username, String graphname, String company_name);
//	int addRelationsFromXML_Method1(addRelationsFromXML r, String fromTable, String toTable);

	List<String> getSelfGeneratedForGivenAttribute(String dbName, String elementName, String attributeValue);

	List<String> getColumnGivenAttribute(String dbName, String elementName);

	List<addRowsModel> getRowsForType(String dbName, String tableName, String attrName, String condition, String type);

	public List<attributesInformationModel> getAttributeDetails(String dbName, String elementName,String conditionAttribute, String attributeValue);
	
	List<String> getGraphNames(String username);

	int addElementInDBFromGraph(String dbName, String elementName, String attributeName, String attributeType, String nodeName);

	List<String> listAttributesFromAttributes_Information(String dbName, String tableName);

	String getLastObjectId(String dbName, String elementName);

	int addRelationsFromGraph(RelationsModel r);


	List<String> getRelValueFromRelTable(String dbName,String srcRelElement,String tagetRelElement,String cond1,String val1,String cond2,String val2,String valueToGet);

	int delRowDataFromTree(String dbName, String tableName, String attributeName);
	
	int delGraphRowData(String graphname);
	
	int delNavigationRowData(String graphname);

	public String createNewModelFolder(String id, String name, String folderName, String username, String company_name);
	
	public String validateFolderName(String folderName, String username);

	public int createNewModelFile(String id, String company_name,String username, String graphname,String graph_json);

	List<String> getAllForeignKeys(String dbName, String elementName, String ValueToGet);

	public List<graphFolders> getGraphFolders(String foreignKey, String username, String status, String company_name);

	List<graphFiles> getGraphNamesFromFolder(String username,String parent_id,String status, String company_name);

	public String getGraphIDFromFolder(String username,String parent_id, String modelName);

	List<graphFiles> getGraphRowData(String username,String company_name);
	
	List<graphFiles> getNavigationRowData(String username,String company_name);

	public int restoreData(String graphID);
	
	public int restoreNavigation(String graphID);

	public int restoreObj(String dbName,String tableName, String name, String ul_id);
	
	public List<graphFiles> restoreFolder(String graphID,String username, String company_name);
	
	public List<navigationFiles> restoreNavigation(String graphID,String username, String company_name);

	int deleteModelFolder(int id);

	int deleteFolderPermanently(int id, String username);
	
	public List<graphFolders> getGraphRemovedFolders(String username, String company_name);

	int updateRelations(RelationsModel r);

	int deleteModelPermanently(int id , String username);
	
	int deleteNavigationPermanently(int id , String username);
	
	int deleteObjPermanently(String dbName, String tableName, String name, String ul_id, String username);

	public int updateNameInRelTable(String dbName, String name, String updatedName);

	int delRowFromRelations(String dbName, String[] AllRelRowIDs);

	List<String> getRelationshipOverloadText(String dbName, String element, String sourceOrTarget,
			String sourceOrTargetValue, String relationshipType,String brCode);

	List<String> getRowWithCondition1(String dbName, String tableName, String attributeName, String conditionAttribute,	String conditionValue);

	List<attributesInformationModel> getAttributeDetails_2(String dbName, String element, String sourceOrTargetValue, String relationshipCondition,
			String relationshipOverloadText);
	
	int addStatusColumn(String dbName,String tableName);

	List<RelationsModel> getExistingRelations(RelationsModel r);

	List<String> listTables1(String dbName);

	int save_all_graphs(String json_graph, String username, String graphname);

	String validateObjectName(String dbName, String tableName, String object_name,String oldName);
	
	String validateModelName(String modelName, String username);

//	List<attributesInformationModel> getAllAttributeDetails(String dbName, String elementName);
	public List<attributesInformationModel> getAllAttributeDetails(String dbName, String elementName);
	
	List<attributesInformation> getAllAttribute(String dbName, String elementName);
//	List<attributesInformationModel> getAllAttributeDetails(String dbName, String elementName);

	List<String> getDeletedRows(String dbName, String tableName, String attrName);

	List<String> getRelTableIDs(String dbName,String tableName,String fromColumn,String toColumn,String fromObject,String toObject);

	int addRowsForObject(fromExcel r, String username);

	int userRegister(String username, String email, String company_name, String metamodel_name, String phone_no, String company_address,
			String password);

	List<String> check_username_when_registration(String username);

	List<String> check_email_when_registration(String email);

	public List<String> getGraphLastDate(String dbName, String graphID);

	public List<String> getNavigationLastDate(String dbName, String navigationID);

	public List<String> checkFileStatus(String graphID);

	List<String> catalogRelationElements(String dbName, String selectAtt, String srcElement, String tgtElement,
			String srcORtgtAtt, String srcORtgtVal, String reltype,String bidirectionRelationshipPair);

	List<String> matrixElements(String dbName, String matrix_element1, String matrix_element2);

	int insertCatalogInDb(String username, Catalog catalog, String XML_link, String company_name);

	List<String> getUserDetails(String username);

	List<catalogFiles> getCatalogNamesFromFolder(String username, String parent_id, String status, String company_name);

	List<List<String>> getXML_link_and_element_name_FromDB(String id);

	List<String> DbToExcel(String dbName, String tableName, String elementName);

	public List<String> listRel(String dbName, String selectAtt, String srcElement, String tgtElement, String srcORtgtAtt, String srcORtgtVal, String reltype, String sAN, String srcName);
//	public List<String> listRel2(String dbName, String selectAtt, String srcElement, String tgtElement, String src_att_name, String des_att_name, String srcORtgtAtt, String srcORtgtVal, String reltype);	
	//List<ModelElement> listEle(String tableName);
//	public List<ModelRelationships> listRelationship(String dbName, String tableName);
//	List<String> listEle(String dbName, List<String> table_name);

	int editRow1(String dbName, String tableName, List<String> attributes, String id, List<String> formData);
//
//	List<String> getRelTableIDs(String dbName, String tableName, String fromColumn, String toColumn, String fromObject,
//			String toObject);

	public List<String> ListForRel(String dbName, String selectAtt, String srcElement, String tgtElement, String srcORtgtAtt, String srcORtgtVal, String reltype);
	
	public List<String> listRel1(String dbName, String selectAtt, String srcElement, String tgtElement, String srcName, String tgtName, String srcORtgtAtt, String srcORtgtVal, String reltype);
	
	int getRelationsCount(String dbName, String sourceElement, String targetElement,String relType, String relTypeVal,String attName, String attVal);

	List<String> getCompanyName(String username);

	List<String> getColumn_or_RowElements(String dbName, String rowElement, String colElement);

	List<String> getRelationsForMatrix(String dbName, String rowElement, String colElement);

	List<String> getExistingRelationshipsForMatrix(String dbName, String matrix_element1, String matrix_element2,
			String object1, String object2, String relationshipType);

	List<String> getRelTableData(String dbName, String tableName, String fromAttName, String targetAttName,
			String fromObject, String toObject, String attributeToGet);

	List<matrixFiles> getMatrixNamesFromFolder(String username, String parent_id, String status, String company_name);

	int insertMatrixInDb(String username, saveMatrix matrix, String XML_link, String company_name);

	String getMatrix_XML_linkFromDB(String id);

	List<String> getAccessTypeAttributeNames(String dbName);

	List<roleDetails> getRoleDetails(String userRole, String username,String company_name);

	List<roleDetails> getSpecificRoleDetails(String userRole, String companyName);

	int updateRoleDetails(Map<String, String> roleDict);

	List<String> getUserId(String username);

	List<String> getLicenseId(String user_id);

	List<String> getLicenseStatus(String license_id);

	List<String> getLicenseExpirationDate(String license_id);

	int updateLicenseStatusOne(String license_id,String user_id);

	int updateLicenseStatusZero(String user_id);

	List<String> getIdsOfLoggedInUsers(String activeUserString);

	List<Integer> getLoggedInUsersStatus(String user_ids, String license_id);

	List<String> getPools();

	List<String> getPoolLicense(String poolLicenseTable);

	List<String> getPoolUsers(String poolUsersTable);

	List<String> check_poolname_when_registration(String poolname);

	int createPoolTables(String poolActiveUsers, String poolLicense, String poolUsers, String poolName,String roleType,String username,String company_name);

	List<String> getPoolUserType(String poolName);

	List<String> getPoolsFromRole(String poolRole);

	List<String> getConcurrentLicensesFromRole(String userRole);

	List<String> getUsersFromCompanyName(String company_name);

	int updatePoolDetails(String poolLicenseTable, String poolUsersTable, List<String> poolLicenses,
			List<String> poolUsers);

	List<String> checkIfUserExistInPool(String poolUsersTable,String userId);

	List<String> checkNamedLicenseAndRole(String userId);

	List<String> getPoolsFromPoolsTable(String company_name);

	List<String> getPoolRolesFromPoolNames(String poolNames);

	public int createActiveUserTable(String username, String company_name);

	List<String> getAttributesFromDB(String dbName,String elementName);
	
	List<String> getSameAttributesName(String dbName,String getElementName,String getAttribute);
	
	List<String> getRowsForChart(String dbName, String tableName, String attrName,String contitionAttribute);

	public int saveChart(Map<String, String> saveChart, String username);

	List<chartsModel> getChartDataFromDivID(String chart_div_id, String username, String company_name);

	int deleteChartDataFromDivID(String divID, String username, String userRole);

	public List<timeLineGraph> getTimeLineGraph(String dbName, String tableName, String ElementVal, String StartActDate, String EndActDate, String legendData);

	List<String> getRowsForMulitpleChart(String dbName, String tableName, String attrName,String contitionAttribute);

	List<userprofile> getuserprofiledetails(String username);

	int updateuserprofiledetails(String username, String emailAddress, String cellNumber,
			String phoneNumber, String extension);
	
	public List<ArrayList<String>> attributeList(String dbName, String attTable, String tableName);
public List<attributesInformation> attList(String dbName, String attTable, String tableName);
	
	public List<attributesInformation> SGList(String dbName, String attTable, String tableName);

	public List<String> shoaibList(String dbName, List<String> val_List, String replaceAll);

	public String roadMap_val(String database, String tableName, String roadMap_name, String elementVal,
			String startActDate, String endActDate, String legendData,String companyName,int parentID);

	public List<timeLineGraph> getRoadMap(String database, String tableName);

	public List<timeLineGraph> getroadMapGraph(String database, String tableName, int id, String roadMapName);
	List<pools> getPoolNameAndRoles(String repository_name);

	int deletePool(String poolName);
	
	public List<attributesInformation> getColAttribute(String dbName, String tableName);

	public List<attributesInformation> getActualAtt(String dbName, String tableName);

	public List<ArrayList<String>> getCompleteTableColumnsBySGVArray(String dbName, String tableName, List<String> elementSGV);

	public List<ArrayList<String>> getCompleteTableColumnsBySGVArrayForMyPage(String dbName, String tableName, List<String> elementSGV, String username);

	List<String> getCompleteNamesColumnBySGVValue(String dbName, String tableName, String ElementSGV);

	public List<attributesInformation> getAllAttVal(String dbName, String elementName);


	int updateTheme(String username, String theme);

	List<String> getTheme(String username);

	List<namedLicenses> getAllocatedLicenses(String repository_name);

	int deAllocateNamedLicense(String row_id);

	List<namedLicenses> getAvailableNamedLicenses(String repository_name);

	int allocateNamedLicense(String repository_name, String license_id, String user_id);

	List<userManagement> getUsers_adminModule(String repository_name);

	int updateUserStatus(String username, String isEnabled);

	public List<String> getRowsForAverageMulitpleChart(String dbName, String elementName, String name,
			String selfGeneratedAttributeValue);

	public List<chartsModel> getChartData();
	int addUser(String username, String email, String company_name, String metamodel, String user_type,
			String hashedPassword, String password, String fullName);

	int updateUserPassword(String username, String password);

	int saveMatrixIntoDB(String matrix_name, String matrix_element1, String matrix_element2, String matrix_relation,
			String parentID,String username);

	List<String> getUserOnlineStatus(String username);
	List<organizationalPortal> getTabsFromDB(String username, String company_name);

	int deleteTabsAndRecordsFromDatabase(String username, String panelId, String company_name,String userRoleStr);
	
	List<namedLicenseValidation> getNamedLicenseDetails(String username);
	
	List<String> catalogRelationElementsForShared(String dbName, String selectAtt, String srcElement, String tgtElement,
			String srcORtgtAtt, String srcORtgtVal, String reltype,String brCode);

	int delCatalogMatrix(String modelID, String catalog_or_matrix);

	int restoreCatalogMatrix(String modelID, String catalog_or_matrix);

	List<matrixFiles> getMatrixDetailsFromID(String matrix_id);

	List<catalogFiles> getCatalogDetailsFromID(String catalogID);

	int deleteCatalogMatrixPermanently(String modelID, String catalog_or_matrix);

	List<namedLicenseValidation> getConcurrentLicenseDetails(String activeUsersTable, String licenseTable);

	List<pools> getPoolNameAndRolesForLicenseCheck(String repository_name);

	int insertValuesInActivePoolUsers(String tableName, String license_id, String user_id);

	List<String> checkIfUserAlreadyExistsInActiveUsersTable(String poolActiveUsers, String user_id);

	String getActivePoolDetails(String user_id);

	int removeValuesFromActivePoolUsers(String[] activePoolDetailsList);

	List<matrixFiles> getDeletedMatrixDetails(String username);

	List<catalogFiles> getDeletedCatalogDetails(String username);
	
	List<navigationFiles> getDeletedNavigationDetails(String username);

	String getFolderNameFromID(String id);

	int deleteRelationshipFromGraph(String dbName, String sourceElementName, String targetElementName, String source,
			String target, String relation);

	List<String> getSelfGeneratedValueForChangeHistory(String dbName, String element, String columnName, String id);

	int updateSelfGeneratedValueForChangeHistory(String dbName, String element, String columnName,
			String updatedValue, String id);

	List<String> getSelfGeneratedValueForChangeHistoryByObjectName(String dbName, String tableName, String columnName, String objectName);

//	List<String> getSelfGeneratedColumnNameForChangeHistory(String dbName, String element);

//	List<String> getElementEntries(String dbName, String tableName);

//	List<String> getDataForMyPage(String dbName, String tableName, String objectName, String columnCode);

//	List<String> getStatusForElementObjectForMyPage(String dbName, String tableName, String objectName,	String columnCode);

	
	List<String> getSelfGeneratedColumnNameForChangeHistory(String dbName, String element);
	List<String> selfGeneratedValueOfNameColumn(String dbName, String tableName);
	List<String> getElementEntries(String dbName, String tableName, String NameSGV);
	List<String> getDataForMyPage(String dbName, String tableName, String objectName, String columnCode, String NameSGV);
	List<String> getStatusForElementObjectForMyPage(String dbName, String tableName, String objectName, String columnCode, String NameSGV);



//	String createOrUpdateMyPage(String dbName, String element, String createdDate, String updatedDate, String updatedBy, String status);
//	List<myPage> selectMyPageTable(String dbName);

	List<String> getIdForElementObject(String dbName, String tableName, String objectName);



	public List<String> getLegendValues(String database, String tableName, String elementVal, String legendData);
	
	public List<String> getListLegendValues(String database, String tableName, String elementVal, String legendData);

	public int delRoadmapRowData(String roadmapid);

	public List<timeLineGraph> getRoadmapRowData(String username,String company_name);

//	public List<String> getRowWithRoadCondition(String dbName, String tableName, String attributeName, int conditionAttribute,
//			int conditionValue);

	public List<String> getRowWithRoadCondition(String dbName, String tableName, String attributeName, String conditionAttribute, int conditionValue);


	public List<timeLineGraph> restoreRoadmapFolder(String roadmapID, String username, String company_name);

	public int deleteRoadmapPermanently(int roadmapID, String username);

	public List<timeLineGraph> getRoadMapFromFolder(String username, String id, String string, String company_name);

	int updateUserOnlineStatus(String username,int status);

	int deleteUserFromNamedLicenseTable(String user_id);

	int deleteUserFromConcurrentLicenseTables(String user_id, String tableName);

	int deleteUserFromUsersAndUserRoles(String username);

	List<RelationsModel> getRelatiionsForNavigation(String dbName,String elementName, String objectName, String fwdORbwd);

	int updateObjectUpdatedDate(String dbName, String tableName, String time,String id);

	List<RelationsModel> getAllRelationsForMatrix(String dbName, String sourceElementName, String targetElementName,String relationship,boolean allRelations);

	int updateSingleValue(String dbName, String tableName, String attribute, String value, String id);

	List<String> getOldPassword(String dbName, String tableName, String username, String attName);

	List<String> getAllRelationshipOverloadText(String dbName, String element, String sourceOrTarget,
			String sourceOrTargetValue, String relationshipType);

	List<String> getAllSelfGeneratedAttVal(String dbName, String elementName);

	public List<RelationsModel> getRelationshipTableForImpex(String dbName, String replaceAll, String tableName);

	int impexInsertElements(String dbName, String tableName, List<String> columnNames, List<ArrayList<String>> elementValues, String username);

	int impexUpdateElements(String dbName, String tableName, List<String> columnNames, List<ArrayList<String>> columnValues, String username);

	int impexInsertRelationships(String dbName, List<ArrayList<String>> columnValues);

	int impexDeleteRelationships(String dbName, ArrayList<String> ids);

//	Get database backup starts here
	public List<String> getBackupOfDatabases(String company_name, String username, String fileNameWithDate, String folderPath);
//	Get database backup ends here	

	public List<catalogFiles> restoreFolderWithCatalog(String graphID, String username, String company_name);

	public List<matrixFiles> restoreFolderWithMatrix(String graphID, String username, String company_name);

	public List<timeLineGraph> restoreFolderWithRoadmap(String graphID, String username, String company_name);

	public String validateCatalogName(String catalog_name, String username);

	public int validateMatrixName(String matrix_name, String username);

	public String validateRoadmapName(String roadMap_name, String username);

	List<String> checkQuery();

	int checkUpdateQuery();

	List<String> checkWhereQuery();

	public int restoreSpecificData(String joinDateAndTime, String folderPath);

	public String validateNavigationName(String navigationName, String username);

	public int createNewNavigationFile(String id, String replaceAll, String username, String navigationName,
			String graph_json);

	public String getNavigationIDFromFolder(String username, String id, String navigationName);

//	public List<navigationFiles> getNavigationFromFolder(String username, String id1, String string);

	List<navigationFiles> getNavigationNamesFromFolder(String username, String parent_id, String status, String company_name);

	public HashMap<String, String> getSelfGeneratedForAllAttributes(String dbName, List<String> elementNamesList, String attributeValue);

	HashMap<String, List<String>> getRowsWithTypes(String dbName, String tableName, String nameAttributeSGV,String typeAttributeSGV);

	HashMap<String, List<String>> getRowsWithTypesForMypage(String dbName, String tableName, String nameAttributeSGV,String typeAttributeSGV, String username);

	String getNavigationGraph(String dbName, String username, String graphname, String company_name);

	public List<String> getFolderNameFromDatabase(String username, String company_name);

	List<attributesInformationModel> getAttributeDetails_withAdditionalConditions(String dbName, String element,
			String sourceOrTargetValue, String relationshipCondition, String relationshipConditionValue,
			String relationshipCondition_2, String relationshipConditionValue_2);

	public List<String> truncateObjectClear(String dbName);

	public List<String> truncateModelClear(String dbName);

	public List<String> truncatedashboardslear(String dbName);

//	attachment work starts here
	
	public List<graphFolders> getAttachmentFolders(String foreignKey, String username, String status, String company_name);
	
	List<graphFiles> getAttachmentNamesFromFolder(String username,String parent_id,String status, String company_name);

	public int renameDiagram(String lastdiagramName, String newdiagramName);

	public int renameCatalog(String lastcatalogName, String newcatalogName);

	public List<String> renameMatrix(String lastmatrixName, String newmatrixName);

	public int renameNavigation(String lastNavigationName, String newNavigationName);

	public int renameRoadmap(String lastRoadmapName, String newRoadmapName);

	List<String> getGraphCompanyName(String dbName, String graphID);

	List<String> getFolderName(String folderId);

	List<String> getNavigationCompanyAndModelName(String navigtaionId);

	List<String> getTreeRowsForMyPage(String dbName, String tableName, String attrName, String username);

	List<String> getDeletedRowsForMyPage(String dbName, String tableName, String attrName, String username);
	
	public String validateAttachmentFolderName(String folderName, String username);

	public String createNewAttachmentFolderName(String id, String folderName, String username,
			String replaceAll);

	public String validateAttachmentName(String attachmentName, String company_name);

	public int createNewAttachmentFile(String id, String company_name, String username, String attachmentName,
			String graph_json);

	public String getAttachmentIDFromFolder(String username,String parent_id, String attachmentName);
//	attachment work ends here

	int deleteAttachmentFolder(int id);

	List<graphFiles> getAttachmentRowData(String username,String company_name);
	
	public List<graphFolders> getAttachmentRemovedFolders(String username, String company_name);
	
	List<String> getAttachmentRowWithCondition(String dbName, String tableName, String attributeName, String conditionAttribute,
			String conditionValue);	
	
	int delAttachmentRowData(String graphname);
	
	public List<graphFiles> restoreAttachmentFolder(String graphID,String username, String company_name);
	
	public int restoreAttachmentData(String graphID);
	
	int deleteAttachmentFolderPermanently(int id, String username);
	
	int deleteAttachmentPermanently(int id , String username);

	List<String> checkAttachmentStatus(String username,String company_name);

	int createOrEditCatalogScripts(String action, String catalog_name, String scriptName,String scriptColumns,String company_name);

	String validateCatalogScriptName(String catalog_script_name, String company_name);

	String getCatalogScriptColumns(String catalog_script_name, String company_name);

	List<String> getCatalogScripts(String catalogName, String company_name);

	int deleteCatalogScripts(String scriptName, String company_name);
	
	public List<String> truncateAttachmentClear(String dbName);
//	public List<String> getChartTableData(String dbName, String elementName, String attributeValue);
	public void saveChartName(String chartContainerId, String getChartName, String username);
	
	public void changeTabName(String oldLabel, String newLabel, String username);


	HashMap<String, List<String>> filterDiagramRelationships(String dbName, String userSelectedElementName, List<String> userSelectedObjects, List<String> userSelectedObjectsColor, List<String> openedDiagramElementName, List<String> openedDiagramObjectName);

	HashMap<String, String> filterDiagramRelationshipsWithAttributes(String dbName, String userSelectedElementName, String SelfGeneratedValueOfAttributeType,	List<String> userSelectedAttributes, List<String> userSelectedAttributesColor, List<String> openedDiagramElementName, List<String> openedDiagramObjectName);

	int createNewModelFileForFilteredDiagram(String foreign_key, String company_name, String username, String graphname, String graph_json, String isFiltered, String filteredDetails);

	List<graphFiles> getGraphFilteredDetails(String graphID);

	List<String> checkNewNavigationSaveStatus(String navigtaionId);

	List<String> checkNewGraphSaveStatus(String graphId);

	List<graphFiles> getFilteredDiagram(String diagramName);

	List<String> getUserRole(String username);

	public int createTableForBusinessProcessModel(String dbName, String username, String company_name);

	public List<graphFolders> getBusinessProcessFolders(String string, String username, String string2,
			String company_name);

	public List<graphFiles> getBusinessProcessNamesFromFolder(String username, String id, String string,
			String company_name);

	public int createNewBusinessProcessFolderName(String id, String folderName, String username, String replaceAll);

	public int createNewBusinessProcessFile(String id, String replaceAll, String username, String businessProcessName,
			String graph_json);

	public String getBusinessProcessIDFromFolder(String username, String id, String businessProcessName);

	List<graphFiles> getBusinessProcessRowData(String username, String company_name);

	List<graphFolders> getBusinessProcessRemovedFolders(String username, String company_name);
	
	int deleteBusinessProcessFolder(int id);

	List<graphFiles> restoreBusinessProcessFolder(String graphID, String username, String company_name);

	public int deleteBusinessProcessFolderPermanently(int graphID, String username);

	int delBusinessProcessRowData(String graphID);

	int restoreBusinessProcessData(String graphID);

	int deleteBusinessProcessPermanently(int id, String username);

	List<String> checkAllFileStatus(String graphID, String tableName);

	List<String> getAllGraphLastDate(String dbName, String graphID, String tableName);

	String getAllGraph(String dbName, String username, String tableName, String graphID, String graphname, String company_name);

	int saveBusinessProcessJson(String LogFileName, String username, String graphname, String graphID);

	int updateBusinessProcessUpdatedDate(String dbName, String tableName, String time, String id);
}