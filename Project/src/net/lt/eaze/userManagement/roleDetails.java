package net.lt.eaze.userManagement;

public class roleDetails {
	private int id;
	private String user_role;
	private String company_name;
	
	private boolean eaPortal;
	private boolean import_export;
	private boolean admin;
	private boolean userManagement;
	private boolean userProfile;
	private boolean organizationalPortal;
	
	private boolean elementCreate;
	private boolean elementRead;
	private boolean elementUpdate;
	private boolean elementDelete;
	private boolean relationshipCreate;
	private boolean relationshipRead;
	private boolean relationshipUpdate;
	private boolean relationshipDelete;
	private boolean connectorCreate;
	private boolean connectorRead;
	private boolean connectorUpdate;
	private boolean connectorDelete;
	private boolean catalogCreate;
	private boolean catalogRead;
	private boolean catalogUpdate;
	private boolean catalogDelete;
	private boolean matrixCreate;
	private boolean matrixRead;
	private boolean matrixUpdate;
	private boolean matrixDelete;
	private boolean graphCreate;
	private boolean graphRead;
	private boolean graphUpdate;
	private boolean graphDelete;
	private boolean userCreate;
	private boolean userRead;
	private boolean userUpdate;
	private boolean userDelete;
	private boolean importVar;
	private boolean exportVar;
	private boolean roleCreate;
	private boolean roleRead;
	private boolean roleUpdate;
	private boolean roleDelete;
	private boolean backup_restore;
	
	
	
	public roleDetails(int id, String user_role, String company_name, boolean eaPortal, boolean import_export,
			boolean admin, boolean userManagement, boolean userProfile,boolean organizationalPortal, boolean elementCreate, boolean elementRead,
			boolean elementUpdate, boolean elementDelete, boolean relationshipCreate, boolean relationshipRead,
			boolean relationshipUpdate, boolean relationshipDelete, boolean connectorCreate, boolean connectorRead,
			boolean connectorUpdate, boolean connectorDelete, boolean catalogCreate, boolean catalogRead,
			boolean catalogUpdate, boolean catalogDelete, boolean matrixCreate, boolean matrixRead,
			boolean matrixUpdate, boolean matrixDelete, boolean graphCreate, boolean graphRead, boolean graphUpdate,
			boolean graphDelete, boolean userCreate, boolean userRead, boolean userUpdate, boolean userDelete,
			boolean importVar, boolean exportVar, boolean roleCreate, boolean roleRead, boolean roleUpdate,
			boolean roleDelete, boolean backup_restore) {
		this.id = id;
		this.user_role = user_role;
		this.company_name = company_name;
		this.eaPortal = eaPortal;
		this.import_export = import_export;
		this.admin = admin;
		this.userManagement = userManagement;
		this.userProfile = userProfile;
		this.organizationalPortal = organizationalPortal;
		this.elementCreate = elementCreate;
		this.elementRead = elementRead;
		this.elementUpdate = elementUpdate;
		this.elementDelete = elementDelete;
		this.relationshipCreate = relationshipCreate;
		this.relationshipRead = relationshipRead;
		this.relationshipUpdate = relationshipUpdate;
		this.relationshipDelete = relationshipDelete;
		this.connectorCreate = connectorCreate;
		this.connectorRead = connectorRead;
		this.connectorUpdate = connectorUpdate;
		this.connectorDelete = connectorDelete;
		this.catalogCreate = catalogCreate;
		this.catalogRead = catalogRead;
		this.catalogUpdate = catalogUpdate;
		this.catalogDelete = catalogDelete;
		this.matrixCreate = matrixCreate;
		this.matrixRead = matrixRead;
		this.matrixUpdate = matrixUpdate;
		this.matrixDelete = matrixDelete;
		this.graphCreate = graphCreate;
		this.graphRead = graphRead;
		this.graphUpdate = graphUpdate;
		this.graphDelete = graphDelete;
		this.userCreate = userCreate;
		this.userRead = userRead;
		this.userUpdate = userUpdate;
		this.userDelete = userDelete;
		this.importVar = importVar;
		this.exportVar = exportVar;
		this.roleCreate = roleCreate;
		this.roleRead = roleRead;
		this.roleUpdate = roleUpdate;
		this.roleDelete = roleDelete;
		this.backup_restore = backup_restore;
	}


	public roleDetails(int id, String user_role, String company_name, boolean elementCreate, boolean elementRead,
			boolean elementUpdate, boolean elementDelete, boolean relationshipCreate, boolean relationshipRead,
			boolean relationshipUpdate, boolean relationshipDelete, boolean connectorCreate, boolean connectorRead,
			boolean connectorUpdate, boolean connectorDelete, boolean catalogCreate, boolean catalogRead,
			boolean catalogUpdate, boolean catalogDelete, boolean matrixCreate, boolean matrixRead,
			boolean matrixUpdate, boolean matrixDelete, boolean graphCreate, boolean graphRead, boolean graphUpdate,
			boolean graphDelete, boolean userCreate, boolean userRead, boolean userUpdate, boolean userDelete,
			boolean importVar, boolean exportVar, boolean roleCreate, boolean roleRead, boolean roleUpdate,
			boolean roleDelete, boolean backup_restore) {
		this.id = id;
		this.user_role = user_role;
		this.company_name = company_name;
		this.elementCreate = elementCreate;
		this.elementRead = elementRead;
		this.elementUpdate = elementUpdate;
		this.elementDelete = elementDelete;
		this.relationshipCreate = relationshipCreate;
		this.relationshipRead = relationshipRead;
		this.relationshipUpdate = relationshipUpdate;
		this.relationshipDelete = relationshipDelete;
		this.connectorCreate = connectorCreate;
		this.connectorRead = connectorRead;
		this.connectorUpdate = connectorUpdate;
		this.connectorDelete = connectorDelete;
		this.catalogCreate = catalogCreate;
		this.catalogRead = catalogRead;
		this.catalogUpdate = catalogUpdate;
		this.catalogDelete = catalogDelete;
		this.matrixCreate = matrixCreate;
		this.matrixRead = matrixRead;
		this.matrixUpdate = matrixUpdate;
		this.matrixDelete = matrixDelete;
		this.graphCreate = graphCreate;
		this.graphRead = graphRead;
		this.graphUpdate = graphUpdate;
		this.graphDelete = graphDelete;
		this.userCreate = userCreate;
		this.userRead = userRead;
		this.userUpdate = userUpdate;
		this.userDelete = userDelete;
		this.importVar = importVar;
		this.exportVar = exportVar;
		this.roleCreate = roleCreate;
		this.roleRead = roleRead;
		this.roleUpdate = roleUpdate;
		this.roleDelete = roleDelete;
		this.backup_restore = backup_restore;
	}
	
	
	public roleDetails(boolean elementCreate, boolean elementRead, boolean elementUpdate, boolean elementDelete,
			boolean relationshipCreate, boolean relationshipRead, boolean relationshipUpdate,
			boolean relationshipDelete, boolean connectorCreate, boolean connectorRead, boolean connectorUpdate,
			boolean connectorDelete, boolean catalogCreate, boolean catalogRead, boolean catalogUpdate,
			boolean catalogDelete, boolean matrixCreate, boolean matrixRead, boolean matrixUpdate, boolean matrixDelete,
			boolean graphCreate, boolean graphRead, boolean graphUpdate, boolean graphDelete, boolean userCreate,
			boolean userRead, boolean userUpdate, boolean userDelete, boolean importVar, boolean exportVar,
			boolean roleCreate, boolean roleRead, boolean roleUpdate, boolean roleDelete, boolean backup_restore) {
		this.elementCreate = elementCreate;
		this.elementRead = elementRead;
		this.elementUpdate = elementUpdate;
		this.elementDelete = elementDelete;
		this.relationshipCreate = relationshipCreate;
		this.relationshipRead = relationshipRead;
		this.relationshipUpdate = relationshipUpdate;
		this.relationshipDelete = relationshipDelete;
		this.connectorCreate = connectorCreate;
		this.connectorRead = connectorRead;
		this.connectorUpdate = connectorUpdate;
		this.connectorDelete = connectorDelete;
		this.catalogCreate = catalogCreate;
		this.catalogRead = catalogRead;
		this.catalogUpdate = catalogUpdate;
		this.catalogDelete = catalogDelete;
		this.matrixCreate = matrixCreate;
		this.matrixRead = matrixRead;
		this.matrixUpdate = matrixUpdate;
		this.matrixDelete = matrixDelete;
		this.graphCreate = graphCreate;
		this.graphRead = graphRead;
		this.graphUpdate = graphUpdate;
		this.graphDelete = graphDelete;
		this.userCreate = userCreate;
		this.userRead = userRead;
		this.userUpdate = userUpdate;
		this.userDelete = userDelete;
		this.importVar = importVar;
		this.exportVar = exportVar;
		this.roleCreate = roleCreate;
		this.roleRead = roleRead;
		this.roleUpdate = roleUpdate;
		this.roleDelete = roleDelete;
		this.backup_restore = backup_restore;
	}


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUser_role() {
		return user_role;
	}
	public void setUser_role(String user_role) {
		this.user_role = user_role;
	}
	public String getCompany_name() {
		return company_name;
	}
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
	
	public boolean isEaPortal() {
		return eaPortal;
	}
	public void setEaPortal(boolean eaPortal) {
		this.eaPortal = eaPortal;
	}
	public boolean isImport_export() {
		return import_export;
	}
	public void setImport_export(boolean import_export) {
		this.import_export = import_export;
	}
	public boolean isAdmin() {
		return admin;
	}
	public void setAdmin(boolean admin) {
		this.admin = admin;
	}
	public boolean isUserManagement() {
		return userManagement;
	}
	public void setUserManagement(boolean userManagement) {
		this.userManagement = userManagement;
	}
	public boolean isUserProfile() {
		return userProfile;
	}
	public void setUserProfile(boolean userProfile) {
		this.userProfile = userProfile;
	}
	public boolean isOrganizationalPortal() {
		return organizationalPortal;
	}
	public void setOrganizationalPortal(boolean organizationalPortal) {
		this.organizationalPortal = organizationalPortal;
	}
	public boolean isElementCreate() {
		return elementCreate;
	}
	public void setElementCreate(boolean elementCreate) {
		this.elementCreate = elementCreate;
	}
	public boolean isElementRead() {
		return elementRead;
	}
	public void setElementRead(boolean elementRead) {
		this.elementRead = elementRead;
	}
	public boolean isElementUpdate() {
		return elementUpdate;
	}
	public void setElementUpdate(boolean elementUpdate) {
		this.elementUpdate = elementUpdate;
	}
	public boolean isElementDelete() {
		return elementDelete;
	}
	public void setElementDelete(boolean elementDelete) {
		this.elementDelete = elementDelete;
	}
	public boolean isRelationshipCreate() {
		return relationshipCreate;
	}
	public void setRelationshipCreate(boolean relationshipCreate) {
		this.relationshipCreate = relationshipCreate;
	}
	public boolean isRelationshipRead() {
		return relationshipRead;
	}
	public void setRelationshipRead(boolean relationshipRead) {
		this.relationshipRead = relationshipRead;
	}
	public boolean isRelationshipUpdate() {
		return relationshipUpdate;
	}
	public void setRelationshipUpdate(boolean relationshipUpdate) {
		this.relationshipUpdate = relationshipUpdate;
	}
	public boolean isRelationshipDelete() {
		return relationshipDelete;
	}
	public void setRelationshipDelete(boolean relationshipDelete) {
		this.relationshipDelete = relationshipDelete;
	}
	public boolean isConnectorCreate() {
		return connectorCreate;
	}
	public void setConnectorCreate(boolean connectorCreate) {
		this.connectorCreate = connectorCreate;
	}
	public boolean isConnectorRead() {
		return connectorRead;
	}
	public void setConnectorRead(boolean connectorRead) {
		this.connectorRead = connectorRead;
	}
	public boolean isConnectorUpdate() {
		return connectorUpdate;
	}
	public void setConnectorUpdate(boolean connectorUpdate) {
		this.connectorUpdate = connectorUpdate;
	}
	public boolean isConnectorDelete() {
		return connectorDelete;
	}
	public void setConnectorDelete(boolean connectorDelete) {
		this.connectorDelete = connectorDelete;
	}
	public boolean isCatalogCreate() {
		return catalogCreate;
	}
	public void setCatalogCreate(boolean catalogCreate) {
		this.catalogCreate = catalogCreate;
	}
	public boolean isCatalogRead() {
		return catalogRead;
	}
	public void setCatalogRead(boolean catalogRead) {
		this.catalogRead = catalogRead;
	}
	public boolean isCatalogUpdate() {
		return catalogUpdate;
	}
	public void setCatalogUpdate(boolean catalogUpdate) {
		this.catalogUpdate = catalogUpdate;
	}
	public boolean isCatalogDelete() {
		return catalogDelete;
	}
	public void setCatalogDelete(boolean catalogDelete) {
		this.catalogDelete = catalogDelete;
	}
	public boolean isMatrixCreate() {
		return matrixCreate;
	}
	public void setMatrixCreate(boolean matrixCreate) {
		this.matrixCreate = matrixCreate;
	}
	public boolean isMatrixRead() {
		return matrixRead;
	}
	public void setMatrixRead(boolean matrixRead) {
		this.matrixRead = matrixRead;
	}
	public boolean isMatrixUpdate() {
		return matrixUpdate;
	}
	public void setMatrixUpdate(boolean matrixUpdate) {
		this.matrixUpdate = matrixUpdate;
	}
	public boolean isMatrixDelete() {
		return matrixDelete;
	}
	public void setMatrixDelete(boolean matrixDelete) {
		this.matrixDelete = matrixDelete;
	}
	public boolean isGraphCreate() {
		return graphCreate;
	}
	public void setGraphCreate(boolean graphCreate) {
		this.graphCreate = graphCreate;
	}
	public boolean isGraphRead() {
		return graphRead;
	}
	public void setGraphRead(boolean graphRead) {
		this.graphRead = graphRead;
	}
	public boolean isGraphUpdate() {
		return graphUpdate;
	}
	public void setGraphUpdate(boolean graphUpdate) {
		this.graphUpdate = graphUpdate;
	}
	public boolean isGraphDelete() {
		return graphDelete;
	}
	public void setGraphDelete(boolean graphDelete) {
		this.graphDelete = graphDelete;
	}
	public boolean isUserCreate() {
		return userCreate;
	}
	public void setUserCreate(boolean userCreate) {
		this.userCreate = userCreate;
	}
	public boolean isUserRead() {
		return userRead;
	}
	public void setUserRead(boolean userRead) {
		this.userRead = userRead;
	}
	public boolean isUserUpdate() {
		return userUpdate;
	}
	public void setUserUpdate(boolean userUpdate) {
		this.userUpdate = userUpdate;
	}
	public boolean isUserDelete() {
		return userDelete;
	}
	public void setUserDelete(boolean userDelete) {
		this.userDelete = userDelete;
	}
	public boolean isImportVar() {
		return importVar;
	}
	public void setImportVar(boolean importVar) {
		this.importVar = importVar;
	}
	public boolean isExportVar() {
		return exportVar;
	}
	public void setExportVar(boolean exportVar) {
		this.exportVar = exportVar;
	}
	public boolean isRoleCreate() {
		return roleCreate;
	}
	public void setRoleCreate(boolean roleCreate) {
		this.roleCreate = roleCreate;
	}
	public boolean isRoleRead() {
		return roleRead;
	}
	public void setRoleRead(boolean roleRead) {
		this.roleRead = roleRead;
	}
	public boolean isRoleUpdate() {
		return roleUpdate;
	}
	public void setRoleUpdate(boolean roleUpdate) {
		this.roleUpdate = roleUpdate;
	}
	public boolean isRoleDelete() {
		return roleDelete;
	}
	public void setRoleDelete(boolean roleDelete) {
		this.roleDelete = roleDelete;
	}
	public boolean isBackup_restore() {
		return backup_restore;
	}
	public void setBackup_restore(boolean backup_restore) {
		this.backup_restore = backup_restore;
	}
	@Override
	public String toString() {
		return "roleDetails [id=" + id + ", user_role=" + user_role + ", company_name=" + company_name
				+ ", elementCreate=" + elementCreate + ", elementRead=" + elementRead + ", elementUpdate="
				+ elementUpdate + ", elementDelete=" + elementDelete + ", relationshipCreate=" + relationshipCreate
				+ ", relationshipRead=" + relationshipRead + ", relationshipUpdate=" + relationshipUpdate
				+ ", relationshipDelete=" + relationshipDelete + ", connectorCreate=" + connectorCreate
				+ ", connectorRead=" + connectorRead + ", connectorUpdate=" + connectorUpdate + ", connectorDelete="
				+ connectorDelete + ", catalogCreate=" + catalogCreate + ", catalogRead=" + catalogRead
				+ ", catalogUpdate=" + catalogUpdate + ", catalogDelete=" + catalogDelete + ", matrixCreate="
				+ matrixCreate + ", matrixRead=" + matrixRead + ", matrixUpdate=" + matrixUpdate + ", matrixDelete="
				+ matrixDelete + ", graphCreate=" + graphCreate + ", graphRead=" + graphRead + ", graphUpdate="
				+ graphUpdate + ", graphDelete=" + graphDelete + ", userCreate=" + userCreate + ", userRead=" + userRead
				+ ", userUpdate=" + userUpdate + ", userDelete=" + userDelete + ", importVar=" + importVar
				+ ", exportVar=" + exportVar + ", roleCreate=" + roleCreate + ", roleRead=" + roleRead + ", roleUpdate="
				+ roleUpdate + ", roleDelete=" + roleDelete + ", backup_restore=" + backup_restore + "]";
	}
	
}
