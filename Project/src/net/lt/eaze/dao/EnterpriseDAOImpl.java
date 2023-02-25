package net.lt.eaze.dao;

import static org.junit.Assert.assertFalse;

import java.util.Objects;
import java.util.Random;
import java.util.stream.Collectors;
import java.lang.reflect.Array;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.Duration;
import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import javax.sql.DataSource;

import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.RequestParam;

import net.lt.eaze.catalog.Catalog;
import net.lt.eaze.matrix.Matrix;
import net.lt.eaze.matrix.downloadMatrix;
import net.lt.eaze.matrix.saveMatrix;
import net.lt.eaze.model.ModelElement;
import net.lt.eaze.model.ModelRelationship;
import net.lt.eaze.model.RelationsModel;
import net.lt.eaze.model.addRelationsModel;
import net.lt.eaze.model.addRowsModel;
import net.lt.eaze.model.attrModel;
import net.lt.eaze.model.attributesInformation;
import net.lt.eaze.model.attributesInformationModel;
import net.lt.eaze.model.catalogFiles;
import net.lt.eaze.model.chartsModel;
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
import net.lt.eaze.model.userprofile;
import net.lt.eaze.model.timeLineGraph;
import net.lt.eaze.model.userManagement;
import net.lt.eaze.model.xml.addAllowableValues;
import net.lt.eaze.model.xml.addRelationsFromXML;
import net.lt.eaze.model_metamodel2.Element;
import net.lt.eaze.repositoryManagement.namedLicenses;
import net.lt.eaze.repositoryManagement.pools;
import net.lt.eaze.userManagement.roleDetails;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.HSSFColor;
import org.apache.poi.ss.usermodel.CellStyle;
//import org.apache.poi.ss.usermodel.Font;
//import org.springframework.web.servlet.view.document.AbstractExcelView;

public class EnterpriseDAOImpl implements EnterpriseDAO {
	
	private JdbcTemplate jdbcTemplate;
    
//	Statement stmt = null;
	Connection conn = null;
    public Statement getConnection() throws SQLException {
//    	conn = DriverManager.getConnection("jdbc:mysql://64.227.7.157:3306/?useUnicode=yes&characterEncoding=UTF-8&useSSL=false", "checking", "checking123");
//    	conn = DriverManager.getConnection("jdbc:mysql://159.223.192.8:3306?useUnicode=yes&characterEncoding=UTF-8&allowPublicKeyRetrieval=true&useSSL=false", "checking", "checking123");
//    	conn = DriverManager.getConnection("jdbc:mysql://192.168.18.218:3306/?useUnicode=yes&characterEncoding=UTF-8&useSSL=false", "lambdaT", "lambdatheta");
    	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/?useUnicode=yes&characterEncoding=UTF-8", "root", "");
    	///////////// SAUDI MIM
//    	conn = DriverManager.getConnection("jdbc:mysql://192.168.10.33:3306/?useUnicode=yes&characterEncoding=UTF-8", "EEATool", "EEATool@123");
		return null;
    }
    
	
    public EnterpriseDAOImpl(DataSource dataSource) {
		try {
			getConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public int createDB(dbModel p) {
		String sql = "CREATE Database IF NOT EXISTS "+p.getDbName()+" COLLATE utf8mb4_unicode_ci";
		//System.out.println(sql+"\n");
		try {
			Statement stmt = conn.createStatement();
			return stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
	}

	@Override
	public int createTable(tableModel p) {
		String sql = "CREATE TABLE IF NOT EXISTS "+p.getDbName()+"."+p.getTableName()+" (id INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY) CHARSET=utf8 COLLATE utf8_general_ci";
		//CREATE TABLE `amf`.`sdsd` ( `sdsd` INT NOT NULL ) ENGINE = InnoDB CHARSET=utf8 COLLATE utf8_general_ci;
		//System.out.println(sql+"\n");
		try {
			Statement stmt = conn.createStatement();
			return stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
	}

	@Override
	public int createTableForTab(String dbName, String tab_name, String username, String containerid) {
//		String sql = "CREATE TABLE IF NOT EXISTS "+dbName+".organizational_tabs (id INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY, Tab_title VARCHAR(255) NULL, Company_name VARCHAR(255) NULL)";
//		String getCompanyName = "SELECT company_name FROM test.users WHERE username= '"+username+"' ";
////		System.out.println("getCompanyName"+getCompanyName);
//		RowMapper<String> rowMapper = new RowMapper<String>() {
//			@Override
//			public String mapRow(ResultSet rs, int rowNum){
//				String attVal = "";
//				try {
//					attVal = rs.getString("company_name");
//				} catch (SQLException e) {
//					// TODO Auto-generated catch block
//					attVal = "";
//				}
//				return new String(attVal);
//			}
//		};
//		List<String> companyName = jdbcTemplate.query(getCompanyName, rowMapper);
//		String insertIntoTable = "INSERT INTO "+dbName+".organizational_tabs (Tab_title, Company_name) VALUES ('"+tab_title+"', '"+companyName.get(0)+"') ";
//		jdbcTemplate.update(sql);
//		return jdbcTemplate.update(insertIntoTable);

		String sql = "CREATE TABLE IF NOT EXISTS graphs.organizational_tabs (id INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY, tab_id VARCHAR(255) NULL, tab_name VARCHAR(255) NULL, username VARCHAR(255) NULL, company_name VARCHAR(255) NULL)";
		String getCompanyName = "SELECT company_name FROM EEATool.users WHERE username= '"+username+"' ";
		
		List<String> companyName = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(getCompanyName);
			while (rs.next()) {
				String attVal = rs.getString("company_name");
				companyName.add(attVal);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		/////////
//		String getTabName = "SELECT tab_name FROM graphs.organizational_tabs WHERE username= '"+username+"' ";
		String getTabName = "SELECT tab_name FROM graphs.organizational_tabs";
		List<String> getTab = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(getTabName);
			while (rs.next()) {
				String attVal = rs.getString("tab_name");
				getTab.add(attVal);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		/////////
		
		boolean checkTabName = getTab.contains(tab_name);
		if(!checkTabName) {
			String insertIntoTable = "INSERT INTO graphs.organizational_tabs (tab_id, tab_name, username, company_name) VALUES ('"+containerid+"','"+tab_name+"', '"+username+"','"+companyName.get(0)+"') ";
			try {
				Statement stmt = conn.createStatement();
				stmt.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			try {
				Statement stmt = conn.createStatement();
				return stmt.executeUpdate(insertIntoTable);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return 0;
			}			
		}
		else {
			return 0;
		}
	}
	
	@Override
	public List<dbModel> listDb() {
		String sql = "SHOW DATABASES";
		
		List<dbModel> listDb = new ArrayList<dbModel>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String dbName = rs.getString("Database");
				dbModel dbm =  new dbModel(dbName);
				listDb.add(dbm);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listDb;
	}
	
	@Override
	public List<tableModel> listTable(dbModel dbName) {
		String sql = "SHOW TABLES FROM "+dbName.getDbName();
		
		List<tableModel> listTable = new ArrayList<tableModel>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String tables = rs.getString("Tables_in_"+dbName.getDbName());
				tableModel tbObj =  new tableModel(tables);
				listTable.add(tbObj);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listTable;
	}

	@Override
	public List<String> listTables1(String dbName) {
		String sql = "SHOW TABLES FROM "+dbName;
		
		List<String> listTable = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				
				String tableName = rs.getString("Tables_in_"+dbName);
				String objectElement = tableName.replaceAll("_", " ");
				char[] charArray = objectElement.toCharArray();
				boolean foundSpace = true;

				for (int i = 0; i < charArray.length; i++) {
					if (Character.isLetter(charArray[i])) {
						if (foundSpace) {
							charArray[i] = Character.toUpperCase(charArray[i]);
							foundSpace = false;
						}
					}
					else {
						foundSpace = true;
					}
				}
				objectElement = String.valueOf(charArray);
				objectElement = objectElement.replace(" Of "," of ".toLowerCase());
				objectElement = objectElement.replaceAll("\\s+", "_");
				listTable.add(objectElement);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		///
		return listTable;
	}

	
	
	@Override
	public int createAttr(attrModel p)  {
		String sql1 = "DESCRIBE "+p.getDbName()+"."+p.getTableName();
		
		List<String> columns = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql1);
			while (rs.next()) {
				String attrName = rs.getString("Field");
				columns.add(attrName);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		boolean exists = false;
		for(String b : columns) {
			if(b.equals(p.getAttrName())) {
				exists = true;
			}
		}
		String sql=null;
		
		if(exists==false) {
			if(p.getType().equals("Date") || p.getType().equals("Time")) {
				sql = "ALTER TABLE "+p.getDbName()+"."+p.getTableName()+" ADD "+p.getAttrName()+" "+p.getType();
			}
			else if(p.getType().equalsIgnoreCase("Text")) {
				
				sql = "ALTER TABLE "+p.getDbName()+"."+p.getTableName()+" ADD "+p.getAttrName()+" "+p.getType() +" CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci";
			}else {
				if(p.getTabelNameforForiegnKey() == "" || p.getTabelNameforForiegnKey() == null || p.getTabelNameforForiegnKey().equals("-- Select Table  --")) {
				sql = "ALTER TABLE "+p.getDbName()+"."+p.getTableName()+" ADD "+p.getAttrName()+" "+p.getType()+"("+p.getLength()+")";
				}
				else {
					sql = "ALTER TABLE "+p.getDbName()+"."+p.getTableName()+" ADD "+p.getAttrName()+" "+p.getType()+"("+p.getLength()+"), ADD FOREIGN KEY("+p.getAttrName()+") REFERENCES "+p.getTabelNameforForiegnKey()+"(id) ON DELETE SET NULL ON UPDATE SET NULL";
				}
			}
			//System.out.println(sql+"\n");
			try {
				Statement stmt = conn.createStatement();
				return stmt.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return 0;
			}
		}else {
			return 0;
		}
		
	}

	@Override
	public int addRows(addRowsModel r) {
		String sql2 = null;
		//System.out.println(r.getForeign_key_checkbox());
		
		if(r.getForeign_key_checkbox() != null){
			
			String  relationship_table_name = "relationship_"+r.getTableName()+"_"+r.getTableName();
			String sql = "CREATE TABLE IF NOT EXISTS "+r.getDbName()+"."+relationship_table_name+"(id int NULL AUTO_INCREMENT, from_ INT(100) NULL, to_ INT(100) NULL, relationship_type VARCHAR(2255), FOREIGN KEY (from_) REFERENCES "+r.getTableName()+"(id) ON DELETE SET NULL, FOREIGN KEY (to_) REFERENCES "+r.getTableName()+"(id) ON DELETE SET NULL, PRIMARY KEY(id))";
			//System.out.println(sql+"\n");
			try {
				Statement stmt = conn.createStatement();
				stmt.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			sql2 = "INSERT INTO "+r.getDbName()+"."+relationship_table_name+"(from_, to_, relationship_type) VALUES ("+r.getForeign_key_from()+", "+r.getForeign_key_to()+", '"+r.getForeign_key_type()+"')";
			//System.out.println("run if");
		}
		else{
			sql2 = "INSERT INTO "+r.getDbName()+"."+r.getTableName()+" ("+r.getColumnName()+") VALUES ('"+r.getRowValue()+"') ";
			//System.out.println("run else");
		}
		//System.out.println("sql2: "+sql2);
		try {
			Statement stmt = conn.createStatement();
			return stmt.executeUpdate(sql2);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
	}

	@Override
	public List<String> listAttributes(String dbName, String tableName) {
		String sql = "DESCRIBE "+dbName+"."+tableName;
		
		List<String> columns = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String attrName = rs.getString("Field");
				columns.add(attrName);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return columns;
	}
	
	@Override
	public List<String> listAttributesFromAttributes_Information(String dbName, String tableName) {
		
		String sql = "SELECT DISTINCT * FROM "+dbName+".`attributes_information` WHERE Element_Name = '"+tableName+"' ORDER BY id ASC";
		List<String> attributes = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String attrName = rs.getString("Self_Generated_Attribute");
				attributes.add(attrName);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return attributes;
	}
	
	@Override
	public List<String> getAllIds(String dbName, String tableName) {
		String sql = "SELECT id FROM "+dbName+"."+tableName;
		List<String> getAllIds = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String attrName = rs.getString("id");
				getAllIds.add(attrName);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return getAllIds;
	}
	
	@Override
	public List<String> getRowsForExcel(String dbName, String tableName,String id, String attName) {
		String sql = "SELECT "+attName+" FROM "+dbName+"."+tableName +" WHERE id = "+id;
		
		List<String> getRowsForExcel = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String attrName = rs.getString(attName);
				getRowsForExcel.add(attrName);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return getRowsForExcel;
	}

	@Override
	public List<addRowsModel> listRows(String dbName, String tableName, String attrName) {
		String sql = "SELECT id,"+attrName+" FROM "+dbName+"."+tableName;
		List<addRowsModel> listRows = new ArrayList<addRowsModel>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				int id = rs.getInt("id");
				String rowValue = rs.getString(attrName);
				addRowsModel obj = new addRowsModel(id, rowValue);
				listRows.add(obj);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listRows;
	}
	
	@Override
	public List<addRowsModel> getRowsForType(String dbName, String tableName, String attrName,String condition, String type) {
		//tableName = tableName.toLowerCase();
		 String sql = "";
		 if(type.equals("Other")) 
			 sql = "SELECT id,"+attrName+" FROM "+dbName+"."+tableName+" WHERE ("+condition+"= '"+type+"' OR "+condition+"= 'Null') AND status = '1' ";
		 else
			 sql = "SELECT id,"+attrName+" FROM "+dbName+"."+tableName+" WHERE "+condition+"= '"+type+"' AND status = '1' ";
		 
		 List<addRowsModel> listRows = new ArrayList<addRowsModel>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					int id = rs.getInt("id");
					String rowValue = rs.getString(attrName);
					addRowsModel obj = new addRowsModel(id, rowValue);
					listRows.add(obj);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return listRows;
	}

	@Override
	public int addRelations(RelationsModel r) {
		
		String sql = "";
		sql = "SELECT id FROM "+r.getDbName()+"."+r.getTableName()+" WHERE Source='"+r.getSourceRelElement()+"'	&&	Destination='"+r.getTargetRelElement()+"' && 	Source_Attribute_Value='"+r.getSourceAttValue()+"'	&&  Destination_Attribute_Value='"+r.getTargetAttValue()+"'	&&  Relationship_Type='"+r.getRelationshipType()+"' && Bidirection_Relationship_Pair = '"+r.getBidirectionRelationshipPair()+"'";
		System.out.println("sql1: "+sql);
		int id  = 0;
		int a = 0;
		List<Integer> val = new ArrayList<Integer>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			if (rs.next()) {
				id  = rs.getInt("id");
				a= 1;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println("a: "+a);
		
	    if(r.isSourceIsNull() == true) {
	    	if(a==0) {
	    		sql = "INSERT INTO "+r.getDbName()+"."+r.getTableName()+" ( Source, Destination, Destination_P_Key,Source_Attribute_Name, Destination_Attribute_Name, Source_Attribute_Value, Destination_Attribute_Value, Relationship_Type, Bidirection_Relationship_Pair) VALUES ( '"+r.getSourceRelElement()+"','"+r.getTargetRelElement()+"','"+r.getTargetPKEY()+"','"+r.getSourceAttName()+"', '"+r.getTargetAttName()+"', '"+r.getSourceAttValue()+"', '"+r.getTargetAttValue()+"', '"+r.getRelationshipType()+"', '"+r.getBidirectionRelationshipPair()+"' )";
	    	}else {
	    		sql = "UPDATE "+r.getDbName()+"."+r.getTableName()+" SET Destination_P_Key = '"+r.getTargetPKEY()+"', Destination_Attribute_Name = '"+r.getTargetAttName()+"' WHERE Source_Attribute_Value = '"+r.getSourceAttValue()+"' && Destination_Attribute_Value='"+r.getTargetAttValue()+"' && Bidirection_Relationship_Pair = '"+r.getBidirectionRelationshipPair()+"' ";
	    	}
	    }
			
	    else if(r.isTargetIsNull() == true) {
	    	if(a==0) {
	    		sql = "INSERT INTO "+r.getDbName()+"."+r.getTableName()+" ( Source, Destination, Source_P_Key, Source_Attribute_Name, Destination_Attribute_Name, Source_Attribute_Value, Destination_Attribute_Value, Relationship_Type, Bidirection_Relationship_Pair) VALUES ( '"+r.getSourceRelElement()+"','"+r.getTargetRelElement()+"','"+r.getSourcePKEy()+"', '"+r.getSourceAttName()+"', '"+r.getTargetAttName()+"', '"+r.getSourceAttValue()+"', '"+r.getTargetAttValue()+"', '"+r.getRelationshipType()+"', '"+r.getBidirectionRelationshipPair()+"' )";
	    	}else {
	    		sql = "UPDATE "+r.getDbName()+"."+r.getTableName()+" SET Source_P_Key = '"+r.getSourcePKEy()+"', Source_Attribute_Name = '"+r.getSourceAttName()+"' WHERE Source_Attribute_Value = '"+r.getSourceAttValue()+"' && Destination_Attribute_Value='"+r.getTargetAttValue()+"' && Bidirection_Relationship_Pair = '"+r.getBidirectionRelationshipPair()+"' "; 
	    	}
	    }
	    System.out.println("sql2: "+sql);
	    String lastIDQuery = "SELECT LAST_INSERT_ID()";
	    int lastID = 0;
	    try {
			Statement stmt = conn.createStatement();
//			return stmt.executeUpdate(sql);
			stmt.executeUpdate(sql);
			
			ResultSet rs = stmt.executeQuery(lastIDQuery);
			while (rs.next()) {
				lastID = rs.getInt("LAST_INSERT_ID()");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	    System.out.println("lastID: "+lastID);
	    if(a==0) {
	    	return lastID;
	    }else {
	    	return id;
	    }
	}
	
	@Override
	public int updateRelations(RelationsModel r) {
		String sql = "";
		if(r.isSourceIsNull() == true) {
	    		sql = "UPDATE "+r.getDbName()+"."+r.getTableName()+" SET Destination_P_Key = '"+r.getTargetPKEY()+"', Destination_Attribute_Name = '"+r.getTargetAttName()+"', 	Source_Attribute_Value = '"+r.getSourceAttValue()+"', 	Destination_Attribute_Value = '"+r.getTargetAttValue()+"' WHERE Bidirection_Relationship_Pair = '"+r.getBidirectionRelationshipPair()+"' ";
	    }
			
	    else if(r.isTargetIsNull() == true) {
	    		sql = "UPDATE "+r.getDbName()+"."+r.getTableName()+" SET Source_P_Key = '"+r.getSourcePKEy()+"', Source_Attribute_Name = '"+r.getSourceAttName()+"', 	Source_Attribute_Value = '"+r.getSourceAttValue()+"', 	Destination_Attribute_Value = '"+r.getTargetAttValue()+"' WHERE Bidirection_Relationship_Pair = '"+r.getBidirectionRelationshipPair()+"' "; 
	    }
		try {
			Statement stmt = conn.createStatement();
			stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}
	
	@Override
	public int addStatusColumn(String dbName,String tableName) {
		String sql = "ALTER TABLE "+dbName+"."+tableName+" ADD status VARCHAR(255) DEFAULT '1', ADD owner_of_the_object VARCHAR (255), ADD last_time_updated TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP";
		
		try {
			Statement stmt = conn.createStatement();
			return stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
	}
	
	@Override
	public int addRelationsFromGraph(RelationsModel r) {
		String sql = "";
		
		sql = "Select id from "+r.getDbName()+"."+r.getTableName()+" Where Source  = '"+r.getSourceRelElement()+"' AND Destination = '"+r.getTargetRelElement()+"' AND Source_Attribute_Value = '"+r.getSourceAttValue()+"' AND Destination_Attribute_Value = '"+r.getTargetAttValue()+"' AND Relationship_Type = '"+r.getRelationshipType()+"' AND Bidirection_Relationship_Pair = '"+r.getBidirectionRelationshipPair()+"'";
		List<String> ids = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String attrName = rs.getString("id");
				ids.add(attrName);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		if(ids.size()>0) {
			return 0;
		}
		else {
			sql = "INSERT INTO "+r.getDbName()+"."+r.getTableName()+" ( Source, Destination, Source_P_Key,Destination_P_Key, Source_Attribute_Name,Destination_Attribute_Name, Source_Attribute_Value, Destination_Attribute_Value, Relationship_Type,Bidirection_Relationship_Pair) VALUES ( '"+r.getSourceRelElement()+"','"+r.getTargetRelElement()+"','"+r.getSourcePKEy()+"','"+r.getTargetPKEY()+"', '"+r.getSourceAttName()+"','"+r.getTargetAttName()+"', '"+r.getSourceAttValue()+"', '"+r.getTargetAttValue()+"', '"+r.getRelationshipType()+"','"+r.getBidirectionRelationshipPair()+"' )";	
			try {
				Statement stmt = conn.createStatement();
				stmt.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		    return 1;
		}
	}
	
//	@Override
//	public List<String> getExistingRelations(RelationsModel r) {
//		String sql = "Select Relationship_Type from "+r.getDbName()+"."+r.getTableName()+" Where Source = '"+r.getSourceRelElement()+"' AND Destination = '"+r.getTargetRelElement()+"' AND Source_Attribute_Value = '"+r.getSourceAttValue()+"' AND Destination_Attribute_Value = '"+r.getTargetAttValue()+"' ";
//		RowMapper<String> rowMapper = new RowMapper<String>() {
//			
//			@Override
//			public String mapRow(ResultSet rs, int rowNum) throws SQLException {
//				String rowValue = rs.getString("Relationship_Type");
//				return new String(rowValue);
//			}
//		};
//		//System.out.println(sql+"\n");
////		System.out.println("\n"+sql+"\n");
//		return jdbcTemplate.query(sql, rowMapper);
//	}
	
	@Override
	public List<RelationsModel> getExistingRelations(RelationsModel r) {
		String sql = "Select Relationship_Type,Bidirection_Relationship_Pair from "+r.getDbName()+"."+r.getTableName()+" Where Source = '"+r.getSourceRelElement()+"' AND Destination = '"+r.getTargetRelElement()+"' AND Source_Attribute_Value = '"+r.getSourceAttValue()+"' AND Destination_Attribute_Value = '"+r.getTargetAttValue()+"' ";

		List<RelationsModel> getExistingRelations = new ArrayList<RelationsModel>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				
				String rowValue = rs.getString("Relationship_Type");
				String Bidirection_Relationship_Pair = rs.getString("Bidirection_Relationship_Pair");
				RelationsModel rm = new RelationsModel(rowValue,Bidirection_Relationship_Pair);
				getExistingRelations.add(rm);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return getExistingRelations;
	}
	
	
	@Override
	public int addRowsFromExcel(fromExcel r) {
		String columns ="";
		String rows="";
		String sql = "";
//		System.out.println("r.getRowValues()-impl: "+r.getRowValues());
		for(String b: r.getRowValues()){
//			System.out.println("Implementation: "+r);
//			System.out.println("b: "+b);
			if(b!=null)
				b=b.replaceAll("'", "''").replaceAll("\\(", "\\\\(").replaceAll("\\)", "\\\\)");
			rows+="'"+b+"',";
		}
		String rows1 = rows.substring(0, rows.length() - 1);
		
		if(r.getFirstRowIsColumnName() != null) {
			for(String a: r.getColumnNames()){
				columns+=a+",";
			}
			String columns1 = columns.substring(0, columns.length() - 1);
		
			sql="INSERT  INTO "+r.getDbName()+"."+r.getTableName()+" ("+columns1+", status) VALUES ("+rows1+", '1')";
			}
		else {
			if(r.getTableName().equals("attributes_information")) {
				sql="INSERT  INTO "+r.getDbName()+"."+r.getTableName()+" VALUES (null,"+rows1+")";
			}else
				sql="INSERT  INTO "+r.getDbName()+"."+r.getTableName()+" VALUES (null,"+rows1+",'1')";
		}
		
		try {
			Statement stmt = conn.createStatement();
			return stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
	}
	
	@Override
	public int addRowsForObject(fromExcel r,String username) {
		String columns ="";
		String rows="";
		String sql = "";
		
		for(String b: r.getRowValues()){
			if(b!=null)
				b=b.replaceAll("'", "''").replaceAll("\\(", "\\\\(").replaceAll("\\)", "\\\\)");
			rows+="'"+b+"',";
		}
		String rows1 = rows.substring(0, rows.length() - 1);
		
			for(String a: r.getColumnNames()){
				columns+=a+",";
			}
			String columns1 = columns.substring(0, columns.length() - 1);
		
			sql="INSERT  INTO "+r.getDbName()+"."+r.getTableName()+" ("+columns1+", status,owner_of_the_object) VALUES ("+rows1+", '1','"+username+"')";
			try {
				Statement stmt = conn.createStatement();
				return stmt.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return 0;
			}
	}

	@Override
	public int addAllowableValues(addAllowableValues a){
		//System.out.println("\n\nCOMING HERE\n\n");
		String sql1 = "CREATE TABLE IF NOT EXISTS "+a.getDbName()+".Allowable_Values (id INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY, Entity_Name Text, Atrribute_Name Text, Allowable_values Text)";
		try {
			Statement stmt = conn.createStatement();
			stmt.executeUpdate(sql1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String sql="INSERT IGNORE  INTO "+a.getDbName()+".Allowable_Values (Entity_Name,Atrribute_Name,Allowable_values) VALUES (\""+a.getTableName().replaceAll("\\s+","_")+"\",\""+a.getAttributeName().replaceAll("\\s+","_")+"\",\""+a.getAllowableValues()+"\")";
		try {
			Statement stmt = conn.createStatement();
			return stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
	}
	
	@Override
	public int addRelationsFromXML_Method1(addRelationsFromXML r,int relationsCounter) {
		String sql = "";
		String relationship_table_name = "";
		String fromTable = r.getFromTableShortName();
		String toTable = r.getToTableShortName();
		
		if(r.getFromTable().equals(r.getToTable())) {
			toTable  =toTable+"_1";
			relationship_table_name = "rel_"+fromTable+"_itself_";
			sql = "CREATE TABLE IF NOT EXISTS  "+r.getDbName()+"."+relationship_table_name+"(id int NULL AUTO_INCREMENT, "+r.getFromTable()+" INT(100) NULL, "+r.getToTable()+"_1 INT(100) NULL,Type VARCHAR(225) NULL, FOREIGN KEY ("+r.getFromTable()+") REFERENCES "+r.getFromTable()+"(id) ON DELETE SET NULL, FOREIGN KEY ("+r.getToTable()+"_1) REFERENCES "+r.getFromTable()+"(id) ON DELETE SET NULL, PRIMARY KEY(id))";
		}else {
			relationship_table_name= "rel_"+fromTable+"_"+toTable;
//			if(fromTable.equals(toTable)) {
//				toTable  =toTable+"_1";
//			}
			sql = "CREATE TABLE IF NOT EXISTS  "+r.getDbName()+"."+relationship_table_name+"(id int NULL AUTO_INCREMENT, "+r.getFromTable()+" INT(100) NULL, "+r.getToTable()+" INT(100) NULL,Type VARCHAR(225) NULL, FOREIGN KEY ("+r.getFromTable()+") REFERENCES "+r.getFromTable()+"(id) ON DELETE SET NULL, FOREIGN KEY ("+r.getToTable()+") REFERENCES "+r.getToTable()+"(id) ON DELETE SET NULL, PRIMARY KEY(id))";
		}
		//System.out.println(sql+"\n");
		try {
			try {
				Statement stmt = conn.createStatement();
				stmt.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		catch (Exception e) {
			//System.out.println(e.getMessage());
		}
//		sql = "INSERT INTO "+r.getDbName()+".tables_relations VALUES (null,'"+r.getFromTable()+"','"+r.getToTable()+"','"+r.getRelation()+"')";//"+r.getRelation()+" VARCHAR(225),
//		return jdbcTemplate.update(sql);
		return 1;
	}
	
	@Override
	public List<String> getRows(String dbName, String tableName, String attrName) {
		String sql = "SELECT DISTINCT "+attrName+" FROM "+dbName+"."+tableName;
		List<String> getRows = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String attVal = rs.getString(attrName);
				getRows.add(attVal);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return getRows;
	}
	
	@Override
	public List<String> getRowsForChart(String dbName, String tableName, String attrName,String contitionAttribute) {
		String sql = "SELECT "+attrName+" FROM "+dbName+"."+tableName+" where "+contitionAttribute+" != '' AND "+contitionAttribute+" != 'Null' AND status = '1'";
		 System.out.println("sql in getRowsForChart: "+sql);
		List<String> getRowsForChart = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String rowValue = rs.getString(attrName);
				getRowsForChart.add(rowValue);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return getRowsForChart;
	}
	
	@Override
	public List<String> getRowsForMulitpleChart(String dbName, String tableName, String attrName,String contitionAttribute) {
		String sql = "SELECT "+attrName+" FROM "+dbName+"."+tableName+" where "+contitionAttribute+" != '' AND status = '1'";
		
		List<String> getRowsForMulitpleChart = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String rowValue = rs.getString(attrName);
				getRowsForMulitpleChart.add(rowValue);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return getRowsForMulitpleChart;
	}
	
	@Override
	public List<String> getRowsForAverageMulitpleChart(String dbName, String tableName, String attrName,String contitionAttribute) {
		String sql = "SELECT "+attrName+" FROM "+dbName+"."+tableName+" where "+contitionAttribute+" != ''";
		
		List<String> getRowsForAverageMulitpleChart = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String rowValue = rs.getString(attrName);
				getRowsForAverageMulitpleChart.add(rowValue);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return getRowsForAverageMulitpleChart;
	}
	
	@Override
	public List<String> getAllowableValues(String dbName, String tableName, String attrName) {
		String sql = "SELECT DISTINCT Allowable_values FROM "+dbName+".allowable_values WHERE Atrribute_Name = '"+attrName +"' && Entity_Name = '"+tableName+"'" ;
		 
		List<String> getAllowableValues = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String rowValue = rs.getString("Allowable_values");
				getAllowableValues.add(rowValue);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return getAllowableValues; 
	}
	
	@Override
	public List<String> getRows1(String dbName, String tableName, String attrName) {
		String sql = "SELECT "+attrName+" FROM "+dbName+"."+tableName+" WHERE status = '1'";
		 
		List<String> getRows1 = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String rowValue = rs.getString(attrName);
				getRows1.add(rowValue);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return getRows1;
	}
	
	
	@Override
	public List<String> getTreeRowsForMyPage(String dbName, String tableName, String attrName, String username) {
		String sql = "SELECT "+attrName+" FROM "+dbName+"."+tableName+" WHERE status = '1' AND owner_of_the_object = "+username+" ";
		 
		List<String> getRows1 = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String rowValue = rs.getString(attrName);
				getRows1.add(rowValue);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return getRows1;
	}
	
	@Override
	public List<String> getDeletedRows(String dbName, String tableName, String attrName) {
		String sql = "SELECT "+attrName+" FROM "+dbName+"."+tableName+" WHERE status = '0'";
		
		List<String> getDeletedRows = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String rowValue = rs.getString(attrName);
				getDeletedRows.add(rowValue);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return getDeletedRows;
	}
	
	
	@Override
	public List<String> getDeletedRowsForMyPage(String dbName, String tableName, String attrName, String username) {
		String sql = "SELECT "+attrName+" FROM "+dbName+"."+tableName+" WHERE status = '0' AND owner_of_the_object= '"+username+"' ";
		
		List<String> getDeletedRows = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String rowValue = rs.getString(attrName);
				getDeletedRows.add(rowValue);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return getDeletedRows;
	}
	
	@Override
	public List<String> getAttributesFromDB(String dbName,String elementName) {
		 String sql = "SELECT Actual_Attribute FROM "+dbName+".attributes_information WHERE Element_Name = '"+elementName+"' AND Attribute_Format != 'Text' AND Attribute_Format != 'Rich Text' AND Attribute_Type != 'Relationship'";
		
		 List<String> getAttributesFromDB = new ArrayList<String>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					String rowValue = rs.getString("Actual_Attribute");
					getAttributesFromDB.add(rowValue);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return getAttributesFromDB;
	}
	
	@Override
	public List<String> getSameAttributesName(String dbName,String elementName,String getAttribute) {
		 String sql = "SELECT Allowable_Values FROM "+dbName+".attributes_information WHERE Element_Name = '"+elementName+"' AND Actual_Attribute = '"+getAttribute+"'";
//		 
		 List<String> columns = new ArrayList<String>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					String rowValue = rs.getString("Allowable_Values");
					columns.add(rowValue);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}

		 String getActualAttributes = "SELECT Actual_Attribute FROM "+dbName+".attributes_information WHERE Element_Name = '"+elementName+"' AND Attribute_Format != 'Text' AND Attribute_Format != 'Rich Text' AND Attribute_Type != 'Relationship' AND Actual_Attribute != '"+getAttribute+"' AND Allowable_Values = '"+columns.get(0)+"'";
//		 
		 List<String> columns1 = new ArrayList<String>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(getActualAttributes);
				while (rs.next()) {
					String rowValue = rs.getString("Actual_Attribute");
					columns1.add(rowValue);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return columns1;		 

	}
	
	@Override
	public int deleteRow(String dbName,String tableName,String id) {
		String sql = "DELETE FROM "+dbName+"."+tableName+" WHERE id="+id;
		try {
			Statement stmt = conn.createStatement();
			return stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
	}
	
	
	@Override
	public int editRow(String dbName, String tableName, List<String> attributes, String id, List<String> formData) {
		int length = attributes.size();
		String data = "";
		for(int i = 0;i<length; i++) {
			data+= attributes.get(i)+" = '"+formData.get(i)+"',";
		}
		data = data.substring(0, data.length() - 1);
		//System.out.println(data);
		//System.out.println(length);
		String sql = "UPDATE "+dbName+"."+tableName+" SET "+data+" WHERE id="+id;
		String sql1 = "UPDATE "+dbName+"."+tableName+" SET last_time_updated = null WHERE id="+id;
//		System.out.println(sql+"\n");
		try {
			Statement stmt = conn.createStatement();
			stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
		try {
			Statement stmt = conn.createStatement();
			return stmt.executeUpdate(sql1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
	}

	@Override
	public List<String> getRows_Form(String dbName, String tableName, String id, String obj) {
		 String sql = "SELECT "+obj+" FROM "+dbName+"."+tableName+" WHERE id="+id;
//		 
		 List<String> columns = new ArrayList<String>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					String rowValue = rs.getString(obj);
					columns.add(rowValue);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return columns;

	}
	
	@Override
	public List<String> getDatabases() {
		String sql = "SHOW DATABASES";
		List<String> columns = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String dbName = rs.getString("Database");
				columns.add(dbName);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return columns;		
	}

	@Override
	public List<String> getSelfGenerated(String dbName, String elementName) {
		
		String sql ="Select Self_Generated_Attribute from " +dbName+ ".attributes_information where Element_Name = '"+elementName+"' AND Actual_Attribute = 'Name'";
//		
		List<String> columns = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String attVal= rs.getString("Self_Generated_Attribute");
				columns.add(attVal);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return columns;		
	}
	
	@Override
	public List<String> getActualValue(String dbName, String elementName, String attributeValue) {
		
		
		String sql ="Select Actual_Attribute from " +dbName+ ".attributes_information where Element_Name = '"+elementName+"' AND Self_Generated_Attribute = '"+attributeValue+"'";
		
//		
		List<String> columns = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String attVal= rs.getString("Actual_Attribute");
				columns.add(attVal);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return columns;		
	}
	
	@Override
	public List<attributesInformationModel> getAttributeDetails(String dbName, String elementName,String conditionAttribute, String attributeValue) {
		String sql ="Select * from " +dbName+ ".attributes_information where Element_Name = '"+elementName+"' AND "+conditionAttribute+" = '"+attributeValue+"'";
		List<attributesInformationModel> fullnames = new ArrayList<attributesInformationModel>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
		
				String attType= rs.getString("Attribute_Type");
				String targetRelElement= rs.getString("Target_Rel_Element");
				String sourceRelElement= rs.getString("Source_Rel_Element");
				String selfGeneratedAttribute= rs.getString("Self_Generated_Attribute");
				String attVal= rs.getString("Actual_Attribute");
				String isGrouped= rs.getString("Is_Grouped");
				String groupStyle= rs.getString("Group_Style");
				String groupCaption= rs.getString("Group_Caption");
				String attributeFormat= rs.getString("Attribute_Format");
				String pageNumber= rs.getString("Page_Number");
				String pageTitle= rs.getString("Page_Title");
				String allowableValues= rs.getString("Allowable_Values");
				String attributeTip= rs.getString("Attribute_Tip");
				String bidirectionRelationshipPair= rs.getString("Bidirection_Relationship_Pair");
				String singleOrMultiple= rs.getString("Single_or_Multiple");
				String maximumNumberofObjectOccurrence= rs.getString("Maximum_Number_of_Object_Occurrence");
				String relationship= rs.getString("Relationship");
				String relationshipOverloadText= rs.getString("Relationship_Overload_Text");
				attributesInformationModel rm = new attributesInformationModel(attType,targetRelElement,sourceRelElement,selfGeneratedAttribute,attVal,isGrouped,groupStyle,groupCaption,attributeFormat,pageNumber,pageTitle,allowableValues,attributeTip,bidirectionRelationshipPair,singleOrMultiple,maximumNumberofObjectOccurrence,relationship,relationshipOverloadText);
				fullnames.add(rm);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return fullnames;		
	}
	
	@Override
	public List<attributesInformationModel> getAllAttributeDetails(String dbName, String elementName) {
		
		String sql ="Select DISTINCT * from " +dbName+ ".attributes_information where Element_Name = '"+elementName+"' ORDER BY id ASC";
		
		List<attributesInformationModel> getAllAttributeDetails = new ArrayList<attributesInformationModel>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String attType= rs.getString("Attribute_Type");
				String targetRelElement= rs.getString("Target_Rel_Element");
				String sourceRelElement= rs.getString("Source_Rel_Element");
				String selfGeneratedAttribute= rs.getString("Self_Generated_Attribute");
				String attVal= rs.getString("Actual_Attribute");
				String isGrouped= rs.getString("Is_Grouped");
				String groupStyle= rs.getString("Group_Style");
				String groupCaption= rs.getString("Group_Caption");
				String attributeFormat= rs.getString("Attribute_Format");
				String pageNumber= rs.getString("Page_Number");
				String pageTitle= rs.getString("Page_Title");
				String isPageGrouped= rs.getString("Is_Page_Grouped");
				String groupPageTitle= rs.getString("Group_Page_Title");
				String groupPageID= rs.getString("Group_Page_ID");
				String allowableValues= rs.getString("Allowable_Values");
				String attributeTip= rs.getString("Attribute_Tip");
				String bidirectionRelationshipPair= rs.getString("Bidirection_Relationship_Pair");
				String singleOrMultiple= rs.getString("Single_or_Multiple");
				String maximumNumberofObjectOccurrence= rs.getString("Maximum_Number_of_Object_Occurrence");
				String relationship= rs.getString("Relationship");
				String relationshipOverloadText= rs.getString("Relationship_Overload_Text");
				attributesInformationModel ai = new attributesInformationModel(attType,targetRelElement,sourceRelElement,selfGeneratedAttribute,attVal,isGrouped,groupStyle,groupCaption,attributeFormat,pageNumber,pageTitle,isPageGrouped,groupPageTitle,groupPageID,allowableValues,attributeTip,bidirectionRelationshipPair,singleOrMultiple,maximumNumberofObjectOccurrence,relationship,relationshipOverloadText);
				getAllAttributeDetails.add(ai);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return getAllAttributeDetails;
		/////
	}
	
	@Override	
	public List<attributesInformation> getAllAttribute(String dbName, String elementName) {
		List<String> sql1 = new ArrayList<String>();
//		sql1.add("Select Element_Name from "+dbName+".attributes_information");
//		System.out.println("elementName: "+sql1);
//		System.out.println("elementName"+elementName);
		String sql = "Select DISTINCT * from "+dbName+".attributes_information where Element_Name = '"+elementName+"' ORDER BY id ASC";
//		System.out.println("elementName"+elementName);
//		System.out.println("sql: "+sql);
//		System.out.println(dbName);
			
//		
		List<attributesInformation> fullnames = new ArrayList<attributesInformation>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				
				String attType= rs.getString("Attribute_Type");
				String targetRelElement= rs.getString("Target_Rel_Element");
				String sourceRelElement= rs.getString("Source_Rel_Element");
				
				
				String selfGeneratedAttribute= rs.getString("Self_Generated_Attribute");
				String attVal= rs.getString("Actual_Attribute");
				String isGrouped= rs.getString("Is_Grouped");
				String groupStyle= rs.getString("Group_Style");
				String groupCaption= rs.getString("Group_Caption");
				String attributeFormat= rs.getString("Attribute_Format");
				String pageNumber= rs.getString("Page_Number");
				String pageTitle= rs.getString("Page_Title");
				String isPageGrouped= rs.getString("Is_Page_Grouped");
				String groupPageTitle= rs.getString("Group_Page_Title");
				String groupPageID= rs.getString("Group_Page_ID");
				String allowableValues= rs.getString("Allowable_Values");
				String attributeTip= rs.getString("Attribute_Tip");
				String bidirectionRelationshipPair= rs.getString("Bidirection_Relationship_Pair");
				String singleOrMultiple= rs.getString("Single_or_Multiple");
				String maximumNumberofObjectOccurrence= rs.getString("Maximum_Number_of_Object_Occurrence");
				String relationship= rs.getString("Relationship");
				String relationshipOverloadText= rs.getString("Relationship_Overload_Text");
				attributesInformation rm = new attributesInformation(elementName, attType,targetRelElement,sourceRelElement,selfGeneratedAttribute,attVal,isGrouped,groupStyle,groupCaption,attributeFormat,pageNumber,pageTitle,isPageGrouped,groupPageTitle,groupPageID,allowableValues,attributeTip,bidirectionRelationshipPair,singleOrMultiple,maximumNumberofObjectOccurrence,relationship,relationshipOverloadText);
				fullnames.add(rm);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return fullnames;		
	}
	@Override
	public List<String> getRelationshipOverloadText(String dbName, String element,String sourceOrTarget, String sourceOrTargetValue, String relationshipType,String brCode) {
		
				
		//String sql ="Select Relationship_Overload_Text from " +dbName+ ".attributes_information where Element_Name = '"+elementName+"' AND "+conditionAttribute+" = '"+attributeValue+"'";
		String sql = "SELECT Relationship_Overload_Text FROM " +dbName+ ".attributes_information WHERE Element_Name = '"+element+"' AND "+sourceOrTarget+" = '"+sourceOrTargetValue+"' AND Relationship = '"+relationshipType+"' AND Bidirection_Relationship_Pair = '"+brCode+"'";
		List<String> columns = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String relationshipOverloadText= rs.getString("Relationship_Overload_Text");
				columns.add(relationshipOverloadText);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return columns;		
	}
	
	@Override
	public List<String> getAllRelationshipOverloadText(String dbName, String element,String sourceOrTarget, String sourceOrTargetValue, String relationshipType) {
		
				
		//String sql ="Select Relationship_Overload_Text from " +dbName+ ".attributes_information where Element_Name = '"+elementName+"' AND "+conditionAttribute+" = '"+attributeValue+"'";
		String sql = "SELECT Relationship_Overload_Text FROM " +dbName+ ".attributes_information WHERE Element_Name = '"+element+"' AND "+sourceOrTarget+" = '"+sourceOrTargetValue+"' AND Relationship = '"+relationshipType+"'";
		List<String> columns = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String relationshipOverloadText= rs.getString("Relationship_Overload_Text");
				columns.add(relationshipOverloadText);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return columns;		
	}
	
	
	@Override
	public List<String> getColumn_or_RowElements(String dbName, String rowElement, String colElement) {
		if(colElement == null) {
			String sql = "SELECT DISTINCT Destination FROM " +dbName+ ".relationships WHERE Source = '"+rowElement+"'";
			List<String> columns = new ArrayList<String>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					String relationshipOverloadText= rs.getString("Destination");
					columns.add(relationshipOverloadText);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return columns;			
		}else {
			String sql = "SELECT DISTINCT Source FROM " +dbName+ ".relationships WHERE Destination = '"+colElement+"'";
//			
			List<String> columns = new ArrayList<String>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					String relationshipOverloadText= rs.getString("Source");
					columns.add(relationshipOverloadText);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return columns;			
		}
	}
	
	@Override
	public List<String> getRelationsForMatrix(String dbName, String rowElement, String colElement) {
			String sql = "SELECT DISTINCT Relationship_Type FROM " +dbName+ ".relationships WHERE Source = '"+rowElement+"' && 	Destination = '"+colElement+"'";
			List<String> columns = new ArrayList<String>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					String relationshipOverloadText= rs.getString("Relationship_Type");
					columns.add(relationshipOverloadText);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return columns;			
	}
	
	@Override
	public List<attributesInformationModel> getAttributeDetails_2(String dbName, String element, String sourceOrTargetValue, String relationshipCondition, String relationshipConditionValue) {
		
		String sql = "SELECT * FROM " +dbName+ ".attributes_information WHERE Element_Name = '"+element+"' AND (Source_Rel_Element = '"+sourceOrTargetValue+"' OR Target_Rel_Element = '"+sourceOrTargetValue+"') AND "+relationshipCondition+" = '"+relationshipConditionValue+"'";
		System.out.println(sql);
//		
		List<attributesInformationModel> fullnames = new ArrayList<attributesInformationModel>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
			
				String attType= rs.getString("Attribute_Type");
				String targetRelElement= rs.getString("Target_Rel_Element");
				String sourceRelElement= rs.getString("Source_Rel_Element");
				String selfGeneratedAttribute= rs.getString("Self_Generated_Attribute");
				String attVal= rs.getString("Actual_Attribute");
				String isGrouped= rs.getString("Is_Grouped");
				String groupStyle= rs.getString("Group_Style");
				String groupCaption= rs.getString("Group_Caption");
				String attributeFormat= rs.getString("Attribute_Format");
				String pageNumber= rs.getString("Page_Number");
				String pageTitle= rs.getString("Page_Title");
				String allowableValues= rs.getString("Allowable_Values");
				String attributeTip= rs.getString("Attribute_Tip");
				String bidirectionRelationshipPair= rs.getString("Bidirection_Relationship_Pair");
				String singleOrMultiple= rs.getString("Single_or_Multiple");
				String maximumNumberofObjectOccurrence= rs.getString("Maximum_Number_of_Object_Occurrence");
				String relationship= rs.getString("Relationship");
				String relationshipOverloadText= rs.getString("Relationship_Overload_Text");
				attributesInformationModel rm = new attributesInformationModel(attType,targetRelElement,sourceRelElement,selfGeneratedAttribute,attVal,isGrouped,groupStyle,groupCaption,attributeFormat,pageNumber,pageTitle,allowableValues,attributeTip,bidirectionRelationshipPair,singleOrMultiple,maximumNumberofObjectOccurrence,relationship,relationshipOverloadText);
				fullnames.add(rm);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return fullnames;		
	}
	
	@Override
	public List<attributesInformationModel> getAttributeDetails_withAdditionalConditions(String dbName, String element, String sourceOrTargetValue, String relationshipCondition, String relationshipConditionValue,String relationshipCondition_2, String relationshipConditionValue_2) {
		
		String sql = "SELECT * FROM " +dbName+ ".attributes_information WHERE Element_Name = '"+element+"' AND (Source_Rel_Element = '"+sourceOrTargetValue+"' OR Target_Rel_Element = '"+sourceOrTargetValue+"') AND "+relationshipCondition+" = '"+relationshipConditionValue+"' AND "+relationshipCondition_2+" = '"+relationshipConditionValue_2+"'";
		System.out.println(sql);
//		
		List<attributesInformationModel> fullnames = new ArrayList<attributesInformationModel>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
			
				String attType= rs.getString("Attribute_Type");
				String targetRelElement= rs.getString("Target_Rel_Element");
				String sourceRelElement= rs.getString("Source_Rel_Element");
				String selfGeneratedAttribute= rs.getString("Self_Generated_Attribute");
				String attVal= rs.getString("Actual_Attribute");
				String isGrouped= rs.getString("Is_Grouped");
				String groupStyle= rs.getString("Group_Style");
				String groupCaption= rs.getString("Group_Caption");
				String attributeFormat= rs.getString("Attribute_Format");
				String pageNumber= rs.getString("Page_Number");
				String pageTitle= rs.getString("Page_Title");
				String allowableValues= rs.getString("Allowable_Values");
				String attributeTip= rs.getString("Attribute_Tip");
				String bidirectionRelationshipPair= rs.getString("Bidirection_Relationship_Pair");
				String singleOrMultiple= rs.getString("Single_or_Multiple");
				String maximumNumberofObjectOccurrence= rs.getString("Maximum_Number_of_Object_Occurrence");
				String relationship= rs.getString("Relationship");
				String relationshipOverloadText= rs.getString("Relationship_Overload_Text");
				attributesInformationModel rm = new attributesInformationModel(attType,targetRelElement,sourceRelElement,selfGeneratedAttribute,attVal,isGrouped,groupStyle,groupCaption,attributeFormat,pageNumber,pageTitle,allowableValues,attributeTip,bidirectionRelationshipPair,singleOrMultiple,maximumNumberofObjectOccurrence,relationship,relationshipOverloadText);
				fullnames.add(rm);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return fullnames;		
	}
	
	@Override
	public List<String> getSelfGeneratedForGivenAttribute(String dbName, String elementName, String attributeValue) {
		
		String sql ="Select DISTINCT Self_Generated_Attribute from " +dbName+ ".attributes_information where Element_Name = '"+elementName+"' AND Actual_Attribute = '"+attributeValue+"'";
		List<String> getSelfGeneratedForGivenAttribute = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String rowValue = rs.getString("Self_Generated_Attribute");
				getSelfGeneratedForGivenAttribute.add(rowValue);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return getSelfGeneratedForGivenAttribute;
	}
	
	@Override
	public List<String> getRowWithCondition(String dbName, String tableName, String attributeName, String conditionAttribute, String conditionValue) {
		
		
		String sql ="Select "+attributeName+" from " +dbName+ "."+tableName+" where "+conditionAttribute+" = '"+conditionValue+"'";
		
//		
		List<String> columns = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
					String attVal = null;
					try {
						attVal = rs.getString(attributeName);
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						attVal = "";
					}
				columns.add(attVal);
				}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return columns;		
	}
	
	@Override
	public List<String> getRelTableData(String dbName,String tableName,String fromAttName, String targetAttName, String fromObject,String toObject,String attributeToGet) {
		String sql = "SELECT "+attributeToGet+" FROM "+dbName+"."+tableName+" WHERE "+fromAttName+" = '"+fromObject+"' && "+targetAttName+" = '"+toObject+"'";
//
		List<String> columns = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String attVal = "";
				try {
					attVal = rs.getString(attributeToGet);
				} catch (SQLException e) {
					attVal = "";
				}
				columns.add(attVal);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return columns;		
	}
	
	@Override
	public int savegraphjson(String json_graph , String username, String graphname, String graphID) {
//		System.out.println("\n\nCOMING HERE\n\n");
        String sql = "UPDATE graphs.files SET graph_json = '"+json_graph+"' WHERE id = '"+graphID+"'";
//        System.out.println(sql);
		//String sql = "INSERT INTO "+"graphs"+".json_graph"+" ("+"username, graphname, Graph_json"+") VALUES ('"+username+"', '"+graphname+"', '"+json_graph+"') ";
        try {
			Statement stmt = conn.createStatement();
			return stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
	}
	
	@Override
	public int save_all_graphs(String json_graph , String username, String graphname) {
//		System.out.println("\n\nCOMING HERE\n\n");
        String sql = "UPDATE graphs.files SET graph_json = '"+json_graph+"' WHERE modelName = '"+graphname+"'";
//        System.out.println(sql);
        try {
			Statement stmt = conn.createStatement();
			return stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
	}
	
	@Override
	public int addElementInDBFromGraph(String dbName, String elementName, String attributeName, String attributeType, String nodeName){
		//System.out.println("\n\nCOMING HERE\n\n");
		
		String sql="INSERT IGNORE  INTO "+dbName+"."+elementName+" ("+attributeName+","+attributeType+") VALUES (\""+nodeName+"\",\"Other\")";
		try {
			Statement stmt = conn.createStatement();
			return stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
	}
	
	@Override
	public String getGraph(String dbName, String username, String graphname,String company_name) {
		
		String sql = "SELECT graph_json FROM "+dbName+".files WHERE company_name =\'"+company_name+"\' && modelName = \'"+graphname+"\' && status = '1' ";
		System.out.println(sql);
		List<String> columns = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String graph = rs.getString("graph_json");
				columns.add(graph);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return columns.get(0);
	}

	@Override
	public String getNavigationGraph(String dbName, String username, String graphname,String company_name) {
		String sql = "SELECT graph_json FROM "+dbName+".navigation_files WHERE company_name =\'"+company_name+"\' && navigationName = \'"+graphname+"\' && status = '1' ";
		List<String> columns = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String graph = rs.getString("graph_json");
				columns.add(graph);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return columns.get(0);
	}
	
	@Override
	public String validateObjectName(String dbName, String tableName, String object_name,String oldName) {
		String sql ="Select id from " +dbName+ "."+tableName+" where ATT_01 = '"+object_name+"' AND ATT_01 != '"+oldName+"'";
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
					String attVal = "";
			while (rs.next()) {
					try {
						attVal = rs.getString("id");
					} catch (SQLException e) {
						attVal = "";
					}
				}
			
			return attVal.toString();
			
		} catch (SQLException e) {
			// e.printStackTrace();
			
			 return null;
		}
		
	}
	
	@Override
	public String validateModelName(String modelName, String company_name) {
		String sql ="Select id from graphs.files where company_name = '"+company_name+"' AND modelName = '"+modelName+"'";
		try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
					String attVal = "";
				while (rs.next()) {
					try {
						attVal = rs.getString("id");
					} catch (SQLException e) {
						attVal = "";
					}
				}
			
				return attVal.toString();
				
			} catch (SQLException e) {
				// e.printStackTrace();
			 return null;
		}
	}
	
	@Override
	public String validateCatalogName(String catalog_name, String company_name) {
		String sql ="Select id from graphs.catalog_files where company_name = '"+company_name+"' AND catalog_name = '"+catalog_name+"'";

		try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
					String attVal = "";
				while (rs.next()) {
					try {
						attVal = rs.getString("id");
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						attVal = "";
					}
				}
				return attVal.toString();
			} catch (SQLException e) {
				// e.printStackTrace();
			 return null;
		}
	}	
	
	@Override
	public int validateMatrixName(String matrix_name, String company_name) {
		String sql ="Select id from graphs.matrix_files where matrix_name = '"+matrix_name+"' AND company_name = '"+company_name+"'";
		
		int a = 0;
		// List<Integer> val = new ArrayList<Integer>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			if (rs.next()) {
				a= 1;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return a;
	}	
	
	@Override
	public String validateRoadmapName(String roadMap_name, String company_name) {
		String sql ="Select id from graphs.roadmap where RoadMap_Name = '"+roadMap_name+"' AND company_name = '"+company_name+"'";

		try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
					String attVal = "";
				while (rs.next()) {
					try {
						attVal = rs.getString("id");
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						attVal = "";
					}
				}
			
				return attVal.toString();
		} catch (SQLException e) {
			e.printStackTrace();
			 return null;
		}
	}
	
	@Override
	public String validateNavigationName(String navigationName, String company_name) {
		String sql ="Select id from graphs.navigation_files where company_name = '"+company_name+"' AND navigationName = '"+navigationName+"'";

		String attVal = "";
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				
				try {
					attVal = rs.getString("id");
					//System.out.println("try");
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					//System.out.println("catch");
					attVal = "";
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		return attVal.toString();

	}
	
	
	@Override
	public String validateFolderName(String folderName, String username) {
		String sql ="Select id from graphs.folders where username = '"+username+"' AND folder_name = '"+folderName+"'";
//		System.out.println("sql" +sql);
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
					String attVal = "";
			while (rs.next()) {
					try {
						attVal = rs.getString("id");
					} catch (SQLException e) {
						attVal = "";
					}
				}
			
			return attVal.toString();
			
		} catch (SQLException e) {
			// e.printStackTrace();
			
			 return null;
		}
	}
	
	@Override
	public List<String> getGraphNames( String username) {
//		String mygraph = "Test Graph String";
		String sql = "SELECT graphname FROM graphs.json_graph WHERE username =\'"+username+"\'";
		
//
		List<String> columns = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String graph = rs.getString("graphname");
				columns.add(graph);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return columns;		
	}
	
	@Override
	public String getLastObjectId(String dbName, String elementName) {
//		String mygraph = "Test Graph String";
		String sql = "SELECT id FROM "+dbName+"."+elementName+" ORDER BY id DESC LIMIT 1";
//		System.out.println(sql);
		
//		
		List<String> columns = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String graph = rs.getString("id");
				columns.add(graph);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
//		return columns.get(0).toString();
//		
//		RowMapper<String> rowMapper = new RowMapper<String>() {
//			@Override
//			public String mapRow(ResultSet rs, int rowNum) throws SQLException {
//				String graph = rs.getString("id");
//				return new String(graph);
//			}
//		};
//		List<String> lastId = jdbcTemplate.query(sql, rowMapper);
//		System.out.println(lastId);
		if(columns.isEmpty())
			return "0";
		else
			return new String(columns.get(0));
	}
	
	@Override
	public List<String> getRelValueFromRelTable(String dbName,String srcRelElement,String tagetRelElement,String cond1,String val1,String cond2,String val2,String valueToGet) {
		String sql = "SELECT "+valueToGet+" FROM "+dbName+".relationships WHERE Source = '"+srcRelElement+"' && Destination = '"+tagetRelElement+"' && "+cond1+" = '"+val1+"' && "+cond2+" = '"+val2+"' ";
//		System.out.println(sql);
		
		List<String> columns = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String row_val = rs.getString(valueToGet);
				columns.add(row_val);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return columns;
		/////
	}
	
	@Override
	public List<String> getRelTableIDs(String dbName,String tableName,String fromColumn,String toColumn,String fromObject,String toObject) {
		String sql = "SELECT id FROM "+dbName+"."+tableName+" WHERE "+fromColumn+" = '"+fromObject+"' && "+toColumn+" = '"+toObject+"'";
//		System.out.println(sql);
		
		List<String> values = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String row_val = rs.getString("id");
				values.add(row_val);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return values;
	}
	
	@Override
	public int delRowDataFromTree(String dbName, String tableName, String attributeName) {
		// TODO Auto-generated method stub
		//String sql = "DELETE FROM "+dbName+"."+tableName+" WHERE ATT_01= '"+attributeName+"' ";
		String sql = "UPDATE "+dbName+"."+tableName+" SET status ='0' WHERE ATT_01= '"+attributeName+"' ";
//		System.out.println(sql+"\n");
		try {
			Statement stmt = conn.createStatement();
			return stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
	}

	@Override
	public int delRowFromRelations(String dbName, String[] AllRelRowIDs) {
		for(String rowID: AllRelRowIDs) {
			String sql = "DELETE FROM "+dbName+".relationships WHERE id= '"+rowID+"' ";
			try {
				Statement stmt = conn.createStatement();
				stmt.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return 0;
	}

	@Override
	public int delGraphRowData(String graphID) {
		// TODO Auto-generated method stub
		String sql = "UPDATE graphs.files SET status = '0' WHERE id = '"+graphID+"' ";
		//String sql = "DELETE FROM graphs.files WHERE id= '"+graphID+"' ";
//		System.out.println(sql+"\n");
		try {
			Statement stmt = conn.createStatement();
			return stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
	}
	
	@Override
	public int delNavigationRowData(String graphID) {
		// TODO Auto-generated method stub
		String sql = "UPDATE graphs.navigation_files SET status = '0' WHERE id = '"+graphID+"' ";
		//String sql = "DELETE FROM graphs.files WHERE id= '"+graphID+"' ";
//		System.out.println(sql+"\n");
		try {
			Statement stmt = conn.createStatement();
			return stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
	}	

	@Override
	public int delCatalogMatrix(String modelID, String catalog_or_matrix) {
		// TODO Auto-generated method stub
		String sql = "";
		if(catalog_or_matrix.equals("matrix")) {
			sql = "UPDATE graphs.matrix_files SET status = '0' WHERE id = '"+modelID+"' ";
		}else {
			sql = "UPDATE graphs.catalog_files SET status = '0' WHERE id = '"+modelID+"' ";
		}
		try {
			Statement stmt = conn.createStatement();
			return stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
	}
	
	@Override
	public int deleteCatalogMatrixPermanently(String modelID, String catalog_or_matrix) {
		// TODO Auto-generated method stub
		String sql = "";
		if(catalog_or_matrix.equals("matrix")) {
			sql = "DELETE FROM graphs.matrix_files WHERE id = '"+modelID+"' ";
		}else {
			sql = "DELETE FROM graphs.catalog_files WHERE id = '"+modelID+"' ";
		}
		try {
			Statement stmt = conn.createStatement();
			return stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
	}

	@Override
	public int deleteModelFolder(int id) {
		// TODO Auto-generated method stub
		String sql = "UPDATE graphs.folders SET status = '0' WHERE id = '"+id+"' ";
		String changeCatalogStatus = "UPDATE graphs.catalog_files SET status = '0' WHERE parent_id = '"+id+"' ";
		String changeMatrixStatus = "UPDATE graphs.matrix_files SET status = '0' WHERE parentID = '"+id+"' ";
		String changeFilesStatus = "UPDATE graphs.files SET status = '0' WHERE parent_id = '"+id+"' ";
		String changenavigationStatus = "UPDATE graphs.navigation_files SET status = '0' WHERE parent_id = '"+id+"' ";
		//String sql = "DELETE FROM graphs.files WHERE id= '"+graphID+"' ";
		//System.out.println(sql+"\n");
		try {
			Statement stmt = conn.createStatement();
			stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			Statement stmt = conn.createStatement();
			stmt.executeUpdate(changeCatalogStatus);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		try {
			Statement stmt = conn.createStatement();
			stmt.executeUpdate(changeMatrixStatus);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		try {
			Statement stmt = conn.createStatement();
			stmt.executeUpdate(changenavigationStatus);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}			
		try {
			Statement stmt = conn.createStatement();
			return stmt.executeUpdate(changeFilesStatus);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}		
	}
	
	@Override
	public int deleteObjPermanently(String dbName, String tableName, String name, String ul_id, String username) {
		// TODO Auto-generated method stub
		String checkAdmin = "SELECT role FROM EEATool.user_roles WHERE username= '"+username+"' ";		
//		
		List<String> columns = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(checkAdmin);
			while (rs.next()) {
				String attVal = "";
				try {
					attVal = rs.getString("role");
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					attVal = "";
				}
				columns.add(attVal);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			}
		
		if(columns.get(0).equals("ROLE_ADMIN")) {
			String sql = "DELETE FROM "+dbName+"."+tableName+" WHERE ATT_01= '"+name+"'"; 
			try {
				Statement stmt = conn.createStatement();
				return stmt.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return 0;
			}
		}
		else {
			 String sql = "DELETE FROM "+dbName+"."+tableName+" WHERE ATT_01= '"+name+"' AND owner_of_the_object = '"+username+"'"; 
			 try {
					Statement stmt = conn.createStatement();
					return stmt.executeUpdate(sql);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					return 0;
				}
		}
	}

	
	@Override
	public int restoreData(String graphID) {
		// TODO Auto-generated method stub
		String sql = "UPDATE graphs.files SET status = '1' WHERE id = '"+graphID+"' ";
		//String sql = "DELETE FROM graphs.files WHERE id= '"+graphID+"' ";
//		System.out.println(sql+"\n");
		try {
			Statement stmt = conn.createStatement();
			return stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
	}
	
	@Override
	public List<graphFiles> getGraphFilteredDetails(String graphID) {
		// TODO Auto-generated method stub
		List<graphFiles> fullnames = new ArrayList<graphFiles>();
		
		String sql = "SELECT id, modelName, filtered, filtered_details from graphs.files WHERE id = '"+graphID+"' ";
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String id = rs.getString("id");
				String graph = rs.getString("modelName");
				String isFiltered = rs.getString("filtered");
				String filteredDetails = rs.getString("filtered_details");
				graphFiles rm = new graphFiles(id, graph, isFiltered, filteredDetails);
				fullnames.add(rm);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return fullnames;
	}
	
	@Override
	public int restoreNavigation(String graphID) {
		// TODO Auto-generated method stub
		String sql = "UPDATE graphs.navigation_files SET status = '1' WHERE id = '"+graphID+"' ";
		//String sql = "DELETE FROM graphs.files WHERE id= '"+graphID+"' ";
//		System.out.println(sql+"\n");
		try {
			Statement stmt = conn.createStatement();
			return stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
	}
	
	@Override
	public int restoreCatalogMatrix(String modelID,String catalog_or_matrix) {
		// TODO Auto-generated method stub
		String sql = "";
		if(catalog_or_matrix.equals("matrix")) {
			sql = "UPDATE graphs.matrix_files SET status = '1' WHERE id = '"+modelID+"' ";
		}else {
			sql = "UPDATE graphs.catalog_files SET status = '1' WHERE id = '"+modelID+"' ";
		}
		//String sql = "DELETE FROM graphs.files WHERE id= '"+graphID+"' ";
//		System.out.println(sql+"\n");
		try {
			Statement stmt = conn.createStatement();
			return stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
	}
	
	@Override
	public int restoreObj(String dbName, String tableName, String name, String ul_id) {
		// TODO Auto-generated method stub
		String sql = "UPDATE "+dbName+"."+tableName+" SET status = '1' WHERE ATT_01 = '"+name+"' ";
		//String sql = "DELETE FROM graphs.files WHERE id= '"+graphID+"' ";
//		System.out.println(sql+"\n");
		try {
			Statement stmt = conn.createStatement();
			return stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
	}
	
//	@Override
//	public List<graphFiles> restoreRoadmapFolder(String roadmapID,String username) {
//		// TODO Auto-generated method stub
//		String getCompanyName = "SELECT company_name FROM test.users WHERE username= '"+username+"' ";
////		System.out.println("getCompanyName"+getCompanyName);
//		RowMapper<String> rowMapper = new RowMapper<String>() {
//			@Override
//			public String mapRow(ResultSet rs, int rowNum){
//				String attVal = "";
//				try {
//					attVal = rs.getString("company_name");
//				} catch (SQLException e) {
//					// TODO Auto-generated catch block
//					attVal = "";
//				}
//				return new String(attVal);
//			}
//		};
//		List<String> companyName = jdbcTemplate.query(getCompanyName, rowMapper);
//		//System.out.println("companyName.get(0)"+companyName.get(0));
//		
//		// TODO Auto-generated method stub
//		String sql = "UPDATE graphs.folders SET status = '1' WHERE id = '"+roadmapID+"' ";
//		String changeFileStatus = "UPDATE graphs.files SET status = '1' WHERE parent_id = '"+roadmapID+"' ";
//		jdbcTemplate.update(sql);
//		jdbcTemplate.update(changeFileStatus);
////		System.out.println(sql+"\n");
//		
//		sql = "SELECT id,RoadMap_Name FROM graphs.roadmap WHERE company_name =\'"+companyName.get(0)+"\' && parent_id = \'"+roadmapID+"\' && status = '1'";
//		//sql = "SELECT id,modelName FROM graphs.files WHERE username =\'"+username+"\' && parent_id = \'"+graphID+"\' && status = '1'";
////		System.out.println(sql);
//		RowMapper<graphFiles> rowMapper1 = new RowMapper<graphFiles>() {
//			@Override
//			public graphFiles mapRow(ResultSet rs, int rowNum) throws SQLException {
//				String graph = rs.getString("modelName");
//				String id = rs.getString("id");
//				return new graphFiles(id,graph);
//			}
//		};
//		return jdbcTemplate.query(sql, rowMapper1);
//		
//		//String sql = "DELETE FROM graphs.files WHERE id= '"+graphID+"' ";
//		
//	}
	
	@Override
	public List<graphFiles> restoreFolder(String graphID,String username, String company_name) {

		
		// TODO Auto-generated method stub
		String sql = "UPDATE graphs.folders SET status = '1' WHERE id = '"+graphID+"' ";
		String changeFileStatus = "UPDATE graphs.files SET status = '1' WHERE parent_id = '"+graphID+"' ";
				try {
			Statement stmt = conn.createStatement();
			stmt.executeUpdate(sql);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
			e.printStackTrace();
				}
		try {
			Statement stmt = conn.createStatement();
			stmt.executeUpdate(changeFileStatus);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			}
//		System.out.println(sql+"\n");
		
		sql = "SELECT id, modelName, filtered, filtered_details FROM graphs.files WHERE company_name =\'"+company_name+"\' && parent_id = \'"+graphID+"\' && status = '1'";
		//sql = "SELECT id,modelName FROM graphs.files WHERE username =\'"+username+"\' && parent_id = \'"+graphID+"\' && status = '1'";
//		System.out.println(sql);
//		
		List<graphFiles> fullnames = new ArrayList<graphFiles>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String id = rs.getString("id");
				String graph = rs.getString("modelName");
				String isFiltered = rs.getString("filtered");
				String filteredDetails = rs.getString("filtered_details");
				graphFiles rm = new graphFiles(id, graph, isFiltered, filteredDetails);
				fullnames.add(rm);
	}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
			e.printStackTrace();
				}
		return fullnames;
			}
	
	
	@Override
	public List<navigationFiles> restoreNavigation(String graphID,String username, String company_name) {

		
		// TODO Auto-generated method stub
		String sql = "UPDATE graphs.folders SET status = '1' WHERE id = '"+graphID+"' ";
		String changeFileStatus = "UPDATE graphs.navigation_files SET status = '1' WHERE parent_id = '"+graphID+"' ";
				try {
			Statement stmt = conn.createStatement();
			stmt.executeUpdate(sql);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
			e.printStackTrace();
				}
		try {
			Statement stmt = conn.createStatement();
			stmt.executeUpdate(changeFileStatus);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			}
//		System.out.println(sql+"\n");
		
		sql = "SELECT id,navigationName FROM graphs.navigation_files WHERE company_name =\'"+company_name+"\' && parent_id = \'"+graphID+"\' && status = '1'";
		//sql = "SELECT id,modelName FROM graphs.files WHERE username =\'"+username+"\' && parent_id = \'"+graphID+"\' && status = '1'";
//		System.out.println(sql);
//		
		List<navigationFiles> fullnames = new ArrayList<navigationFiles>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String graph = rs.getString("navigationName");
				String id = rs.getString("id");
				navigationFiles rm = new navigationFiles(id,graph);
				fullnames.add(rm);
	}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
			e.printStackTrace();
				}
		return fullnames;
			}
	
	@Override
	public List<catalogFiles> restoreFolderWithCatalog(String graphID,String username, String company_name) {
		
		// TODO Auto-generated method stub
//		String sql = "UPDATE graphs.folders SET status = '1' WHERE id = '"+graphID+"' ";
		String changeCatalogStatus = "UPDATE graphs.catalog_files SET status = '1' WHERE parent_id = '"+graphID+"' ";
//		jdbcTemplate.update(sql);
		try {
			Statement stmt = conn.createStatement();
			stmt.executeUpdate(changeCatalogStatus);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
//		System.out.println(sql+"\n");
		
		String sql = "SELECT id,catalog_name, element_name FROM graphs.catalog_files WHERE company_name =\'"+company_name+"\' && parent_id = \'"+graphID+"\' && status = '1'";
		//sql = "SELECT id,modelName FROM graphs.files WHERE username =\'"+username+"\' && parent_id = \'"+graphID+"\' && status = '1'";
//		System.out.println(sql);
		
//		
		List<catalogFiles> fullnames = new ArrayList<catalogFiles>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				
				String graph = rs.getString("catalog_name");
				String id = rs.getString("id");
				String elementName = rs.getString("element_name");
				catalogFiles rm = new catalogFiles(id,graph,elementName);
				fullnames.add(rm);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return fullnames;
	}	
	
	@Override
	public List<matrixFiles> restoreFolderWithMatrix(String graphID,String username, String company_name) {
		
		// TODO Auto-generated method stub
//		String sql = "UPDATE graphs.folders SET status = '1' WHERE id = '"+graphID+"' ";
		String changeMatrixStatus = "UPDATE graphs.matrix_files SET status = '1' WHERE parentID = '"+graphID+"' ";
//		jdbcTemplate.update(sql);
		try {
			Statement stmt = conn.createStatement();
			stmt.executeUpdate(changeMatrixStatus);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
//		System.out.println(sql+"\n");
		
		String sql = "SELECT  id,matrix_name,matrix_element1,matrix_element2,matrix_relation,parentID FROM graphs.matrix_files WHERE company_name =\'"+company_name+"\' && parentID = \'"+graphID+"\' && status = '1'";
		//sql = "SELECT id,modelName FROM graphs.files WHERE username =\'"+username+"\' && parent_id = \'"+graphID+"\' && status = '1'";
//		System.out.println(sql);
		
//		
		List<matrixFiles> fullnames = new ArrayList<matrixFiles>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				
				String id = rs.getString("id");
				String matrix_name = rs.getString("matrix_name");
				String matrix_element1 = rs.getString("matrix_element1");
				String matrix_element2 = rs.getString("matrix_element2");
				String matrix_relation = rs.getString("matrix_relation");
				String parentID = rs.getString("parentID");
				matrixFiles rm = new matrixFiles(id,matrix_name,matrix_element1,matrix_element2,matrix_relation,parentID);
				fullnames.add(rm);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return fullnames;
//		

		
		//String sql = "DELETE FROM graphs.files WHERE id= '"+graphID+"' ";
	}	
	
	@Override
	public List<timeLineGraph> restoreFolderWithRoadmap(String graphID,String username, String company_name) {

		
		// TODO Auto-generated method stub
//		String sql = "UPDATE graphs.folders SET status = '1' WHERE id = '"+graphID+"' ";
		String changeRoadmapStatus = "UPDATE graphs.roadmap SET status = '1' WHERE parentID = '"+graphID+"' ";
//		jdbcTemplate.update(sql);
		try {
			Statement stmt = conn.createStatement();
			stmt.executeUpdate(changeRoadmapStatus);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
//		System.out.println(sql+"\n");
		
		String sql = "SELECT id, RoadMap_Name, company_name, parentID FROM graphs.roadmap WHERE company_name =\'"+company_name+"\' && parentID = \'"+graphID+"\' && status = '1'";
		//sql = "SELECT id,modelName FROM graphs.files WHERE username =\'"+username+"\' && parent_id = \'"+graphID+"\' && status = '1'";
//		System.out.println(sql);
		
//		
		List<timeLineGraph> fullnames = new ArrayList<timeLineGraph>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				
				int id = rs.getInt("id");
				String RoadMap_Name = rs.getString("RoadMap_Name");
				String company_name1 = rs.getString("company_name");
				int parentID = rs.getInt("parentID");
				timeLineGraph rm = new timeLineGraph(id,RoadMap_Name,company_name1,parentID);
				fullnames.add(rm);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return fullnames;		
	}		
	@Override
	public int deleteModelPermanently(int id, String username) {
		
		// TODO Auto-generated method stub
		String checkAdmin = "SELECT role FROM EEATool.user_roles WHERE username= '"+username+"' ";	
//		
		List<String> columns = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(checkAdmin);
			while (rs.next()) {
				String attVal = "";
				try {
					attVal = rs.getString("role");
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					attVal = "";
				}
				columns.add(attVal);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		if(columns.get(0).equals("ROLE_ADMIN")) {	
			String sql1 = "DELETE FROM graphs.files WHERE id= '"+id+"'"; 
			try {
				Statement stmt = conn.createStatement();
				return stmt.executeUpdate(sql1);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return 0;
			}
			
		}
		else {
			 String sql3 = "DELETE FROM graphs.files WHERE id= '"+id+"' AND owner_of_the_object = '"+username+"'"; 
			 try {
					Statement stmt = conn.createStatement();
					return stmt.executeUpdate(sql3);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					return 0;
				}
		}
		
		// TODO Auto-generated method stub
		/*
		 * String sql = "DELETE FROM graphs.files WHERE id = '"+id+"' ";
		 * System.out.println(sql+"\n"); return jdbcTemplate.update(sql);
		 */
	}
	
	@Override
	public int deleteNavigationPermanently(int id, String username) {
		
		// TODO Auto-generated method stub
		String checkAdmin = "SELECT role FROM EEATool.user_roles WHERE username= '"+username+"' ";	
//		
		List<String> columns = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(checkAdmin);
			while (rs.next()) {
				String attVal = "";
				try {
					attVal = rs.getString("role");
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					attVal = "";
				}
				columns.add(attVal);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		if(columns.get(0).equals("ROLE_ADMIN")) {	
			String sql1 = "DELETE FROM graphs.navigation_files WHERE id= '"+id+"'"; 
			try {
				Statement stmt = conn.createStatement();
				return stmt.executeUpdate(sql1);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return 0;
			}
			
		}
		else {
			 String sql3 = "DELETE FROM graphs.navigation_files WHERE id= '"+id+"' AND owner_of_the_object = '"+username+"'"; 
			 try {
					Statement stmt = conn.createStatement();
					return stmt.executeUpdate(sql3);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					return 0;
				}
		}
		
		// TODO Auto-generated method stub
		/*
		 * String sql = "DELETE FROM graphs.files WHERE id = '"+id+"' ";
		 * System.out.println(sql+"\n"); return jdbcTemplate.update(sql);
		 */
	}	
	@Override
	public int deleteFolderPermanently(int id, String username) {
		// TODO Auto-generated method stub
		String checkAdmin = "SELECT role FROM EEATool.user_roles WHERE username= '"+username+"' ";		
//		
		List<String> columns = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(checkAdmin);
			while (rs.next()) {
				String attVal = "";
				try {
					attVal = rs.getString("role");
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					attVal = "";
				}
				columns.add(attVal);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		if(columns.get(0).equals("ROLE_ADMIN")) {
			String sql = "DELETE FROM graphs.folders WHERE id= '"+id+"'";
			int deleteFolder = 0;
			try {
				Statement stmt = conn.createStatement();
				deleteFolder = stmt.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(deleteFolder == 1) {
				String sql1 = "DELETE FROM graphs.files WHERE parent_id= '"+id+"'"; 
				try {
					Statement stmt = conn.createStatement();
					stmt.executeUpdate(sql1);
					return 1;
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					return 0;
				}
			}
			else {
				return 0;
			}
		}
		else {
			 String sql2 = "DELETE FROM graphs.folders WHERE id= '"+id+"' AND owner_of_the_object = '"+username+"'"; 
			 int deleteFolder = 0;
			 try {
					Statement stmt = conn.createStatement();
					deleteFolder = stmt.executeUpdate(sql2);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}			 
			 if(deleteFolder == 1) {
				 String sql3 = "DELETE FROM graphs.files WHERE parent_id= '"+id+"'"; 
				 try {
						Statement stmt = conn.createStatement();
						stmt.executeUpdate(sql3);
						return 1;
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
						return 0;
					}			 
			 }
			 else {
				 return 0; 
			 }
		}
		
		// TODO Auto-generated method stub
		//String sql = "DELETE FROM graphs.files WHERE id = '"+id+"' ";
		/*
		 * String sql = "DELETE FROM graphs.folders WHERE id = '"+id+"'; "; String sql1
		 * = "DELETE FROM graphs.files WHERE parent_id = '"+id+"'; "; //String sql1 =
		 * "DELETE graphs.folders, graphs.files FROM graphs.folders INNER JOIN graphs.files ON graphs.folders.id = graphs.files.parent_id WHERE graphs.folders.id = '"
		 * +id+"'; "; System.out.println(sql+"\n"); jdbcTemplate.update(sql); return
		 * jdbcTemplate.update(sql1);
		 */
	}

	
	@Override
	public List<graphFiles> getGraphRowData(String username, String company_name) {
		String sql = "SELECT id, modelName, parent_id, filtered, filtered_details FROM graphs.files WHERE company_name =\'"+company_name+"\' && status = '0'";
		//String sql = "SELECT id,modelName,parent_id FROM graphs.files WHERE username =\'"+username+"\' && status = '0'";
//		System.out.println(sql);
		
//		
		List<graphFiles> fullnames = new ArrayList<graphFiles>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				
				String id = rs.getString("id");
				String graph = rs.getString("modelName");
				String parent_id = rs.getString("parent_id");
				String filtered = rs.getString("filtered");
				String filtered_details = rs.getString("filtered_details");
				graphFiles rm = new graphFiles(id, graph, parent_id, filtered, filtered_details);
				fullnames.add(rm);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return fullnames;		
	}
	
	@Override
	public List<graphFiles> getNavigationRowData(String username, String company_name) {
		String sql = "SELECT id,navigationName,parent_id FROM graphs.navigation_files WHERE company_name =\'"+company_name+"\' && status = '0'";
		//String sql = "SELECT id,modelName,parent_id FROM graphs.files WHERE username =\'"+username+"\' && status = '0'";
//		System.out.println(sql);
		
//		
		List<graphFiles> fullnames = new ArrayList<graphFiles>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				
				String graph = rs.getString("navigationName");
				String id = rs.getString("id");
				String parent_id = rs.getString("parent_id");
				graphFiles rm = new graphFiles(id,graph,parent_id);
				fullnames.add(rm);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return fullnames;		
	}
	
	@Override
	public String createNewModelFolder(String id, String name, String folderName, String username, String company_name) {
		// TODO Auto-generated method stub
		
		String sql = "CREATE TABLE IF NOT EXISTS graphs.folders(id int NOT NULL AUTO_INCREMENT, username TEXT NULL, company_name VARCHAR(255) NULL, folder_name TEXT NULL,  parent_id VARCHAR(255) NULL, status TEXT NULL,Primary Key(id))";
		jdbcTemplate.update(sql);
		String sql1 = "INSERT INTO graphs.folders(username, company_name,folder_name,parent_id, status, owner_of_the_object) VALUES('"+username+"', '"+company_name+"','"+folderName+"' ,'"+id+"', '1', '"+username+"')";
		String sql2 = "SELECT id FROM graphs.folders WHERE username = '"+username+"' && folder_name = '"+folderName+"'";
		
//		System.out.println(sql+"\n");
		try {
			Statement stmt = conn.createStatement();
			stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			Statement stmt = conn.createStatement();
			stmt.executeUpdate(sql1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
//		jdbcTemplate.update(sql);
//		jdbcTemplate.update(sql1);
		
//		
		List<String> columns = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql2);
			while (rs.next()) {
				String folderID = rs.getString("id");
				columns.add(folderID);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return columns.get(0);		
	}

	@Override
	public int createNewModelFile(String foreign_key, String company_name, String username, String graphname,String graph_json) {
		// TODO Auto-generated method stub
		String sql = "CREATE TABLE IF NOT EXISTS graphs.files(id int NOT NULL AUTO_INCREMENT, username VARCHAR(255) NULL, modelName TEXT NULL, graph_json VARCHAR(255) NULL,parent_id int NULL,status TEXT NULL, Primary Key(id), FOREIGN KEY (parent_id) REFERENCES graphs.folders(id))";
		try {
			Statement stmt = conn.createStatement();
			stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String sql1 = "INSERT INTO graphs.files(company_name,username,  modelName,graph_json,parent_id, status, owner_of_the_object) VALUES('"+company_name+"','"+username+"','"+graphname+"', '"+graph_json+"','"+foreign_key+"', '1', '"+username+"')";
//		System.out.println(sql+"\n");
		try {
			Statement stmt = conn.createStatement();
			return stmt.executeUpdate(sql1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
	}
	
	
	@Override
	public int createNewModelFileForFilteredDiagram(String foreign_key, String company_name, String username, String graphname,String graph_json, String isFiltered, String filteredDetails) {
		// TODO Auto-generated method stub
//		String sql = "CREATE TABLE IF NOT EXISTS graphs.files(id int NOT NULL AUTO_INCREMENT, username VARCHAR(255) NULL, modelName TEXT NULL, graph_json VARCHAR(255) NULL,parent_id int NULL, status TEXT NULL, filtered TEXT 'false', filtered_details TEXT NULL, Primary Key(id), FOREIGN KEY (parent_id) REFERENCES graphs.folders(id))";
//		System.out.println("create");
//		System.out.println(sql+"\n");
//		try {
//			Statement stmt = conn.createStatement();
//			stmt.executeUpdate(sql);
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		String sql1 = "INSERT INTO graphs.files(company_name,username,  modelName,graph_json,parent_id, status, owner_of_the_object, filtered, filtered_details) VALUES('"+company_name+"','"+username+"','"+graphname+"', '"+graph_json+"','"+foreign_key+"', '1', '"+username+"', '"+isFiltered+"', '"+filteredDetails+"')";
		System.out.println(sql1+"\n");
		try {
			Statement stmt = conn.createStatement();
			return stmt.executeUpdate(sql1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
	}

	@Override
	public int createNewNavigationFile(String foreign_key, String company_name, String username, String navigationName,String graph_json) {
		// TODO Auto-generated method stub
		String sql = "CREATE TABLE IF NOT EXISTS graphs.navigation_files(id int NOT NULL AUTO_INCREMENT, username VARCHAR(255) NULL, navigationName TEXT NULL, graph_json VARCHAR(255) NULL,parent_id int NULL,status TEXT NULL, Primary Key(id), FOREIGN KEY (parent_id) REFERENCES graphs.folders(id))";
		try {
			Statement stmt = conn.createStatement();
			stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String sql1 = "INSERT INTO graphs.navigation_files(company_name,username,  navigationName,graph_json,parent_id, status, owner_of_the_object) VALUES('"+company_name+"','"+username+"','"+navigationName+"', '"+graph_json+"','"+foreign_key+"', '1', '"+username+"')";
//		System.out.println(sql+"\n");
		try {
			Statement stmt = conn.createStatement();
			return stmt.executeUpdate(sql1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
	}
	
    @Override
	public int userRegister(String username, String email, String company_name,String metamodel_name, String phone_no, String company_address, String password) {
		// TODO Auto-generated method stub
		String checkCompanyName = "SELECT company_name FROM graphs.folders WHERE company_name= '"+company_name+"' ";
		
		RowMapper<String> rowMapper = new RowMapper<String>() {
			@Override
			public String mapRow(ResultSet rs, int rowNum){
				String attVal = "";
				try {
					attVal = rs.getString("company_name");
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					attVal = "";
				}
				return new String(attVal);
			}
		};
		List<String> companyName = jdbcTemplate.query(checkCompanyName, rowMapper);
		if(companyName.size() != 0) {
			String insertIntoUserTable = "INSERT INTO EEATool.users(username, email, company_name, metamodel_name, password) VALUES('"+username+"', '"+email+"', '"+company_name+"', '"+metamodel_name+"_metamodel','"+password+"')";
			String insertIntoUserRolesTable = "INSERT INTO EEATool.user_roles(username,role) VALUES('"+username+"','ROLE_USER')";
			int a = 0;
			try {
				Statement stmt = conn.createStatement();
				a = stmt.executeUpdate(insertIntoUserTable);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}			
			int b = 0;
			try {
				Statement stmt = conn.createStatement();
				b = stmt.executeUpdate(insertIntoUserRolesTable);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}			
			//String insertIntoGraphsTable = "INSERT INTO graphs.folders(username,folder_name, company_name, parent_id, status) VALUES('"+username+"', '"+company_name+"','"+company_name+"', '0', '1')";
			//String sql1 = "INSERT INTO graphs.files(username, modelName, graph_json, parent_id, status) VALUES('"+username+"','"+company_name+"', '','0', '1')";
			if(a==1 && b==1) {
				return 1;
			}
			else {
				return 0;
			}
		}
		else {
			String insertIntoUserTable = "INSERT INTO EEATool.users(username, email, company_name, metamodel_name, password) VALUES('"+username+"', '"+email+"', '"+company_name+"', '"+metamodel_name+"_metamodel','"+password+"')";
			String insertIntoUserRolesTable = "INSERT INTO EEATool.user_roles(username,role) VALUES('"+username+"','ROLE_USER')";
			String insertCompanyNameToGraphFolder = "INSERT IGNORE INTO graphs.folders(username, company_name, folder_name, parent_id, status) VALUES ('"+username+"', '"+company_name+"' , '"+company_name+"', '0', '1')";
			//String insertIntoGraphsFoldersTable = "INSERT INTO graphs.folders(username,folder_name, company_name, parent_id, status) VALUES('"+username+"', '"+company_name+"','"+company_name+"', '0', '1')";
			int a = 0;
			try {
				Statement stmt = conn.createStatement();
				a = stmt.executeUpdate(insertIntoUserTable);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			int b = 0;
			try {
				Statement stmt = conn.createStatement();
				b = stmt.executeUpdate(insertIntoUserRolesTable);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}			
			int c = 0;
			try {
				Statement stmt = conn.createStatement();
				c = stmt.executeUpdate(insertCompanyNameToGraphFolder);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}			
			//int d = jdbcTemplate.update(insertIntoGraphsFoldersTable);
			//String sql1 = "INSERT INTO graphs.files(username, modelName, graph_json, parent_id, status) VALUES('"+username+"','"+company_name+"', '','0', '1')";
			if(a==1 && b==1 && c == 1) {
				return 1;
			}
			else {
				return 0;
			}
		} 
		
/*		int a = jdbcTemplate.update(insertIntoUserTable);
		int b = jdbcTemplate.update(insertIntoUserRolesTable);
		int c = jdbcTemplate.update(insertCompanyNameToGraphFolder);
		//String insertIntoGraphsTable = "INSERT INTO graphs.folders(username,folder_name, company_name, parent_id, status) VALUES('"+username+"', '"+company_name+"','"+company_name+"', '0', '1')";
		//String sql1 = "INSERT INTO graphs.files(username, modelName, graph_json, parent_id, status) VALUES('"+username+"','"+company_name+"', '','0', '1')";
		if(a==1 && b==1 && c == 1) {
			return 1;
		}
		else {
			return 0;
		} */
 	}
	
	@Override
	public List<graphFolders> getGraphFolders(String foreignKey, String username, String status, String company_name) {
		// TODO Auto-generated method stub
//		String getCompanyName = "SELECT company_name FROM EEATool.users WHERE username= '"+username+"' ";
////		System.out.println("getCompanyName"+getCompanyName);
//		RowMapper<String> rowMapper = new RowMapper<String>() {
//			@Override
//			public String mapRow(ResultSet rs, int rowNum){
//				String attVal = "";
//				try {
//					attVal = rs.getString("company_name");
//				} catch (SQLException e) {
//					// TODO Auto-generated catch block
//					attVal = "";
//				}
//				return new String(attVal);
//			}
//		};
//		List<String> companyName = jdbcTemplate.query(getCompanyName, rowMapper);
		//System.out.println("companyName.get(0)"+companyName.get(0));
		
		String sql ="Select * from graphs.folders where parent_id = '"+foreignKey+"' && company_name = '"+company_name+"' && status = '"+status+"'";
//		System.out.println(sql);
		List<graphFolders> fullnames = new ArrayList<graphFolders>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				
				String id= rs.getString("id");
				String folder_name= rs.getString("folder_name");
				String parent_id= rs.getString("parent_id");
				graphFolders rm = new graphFolders(id,folder_name,parent_id);
				fullnames.add(rm);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return fullnames;
		
//		/////
//		RowMapper<graphFolders> rowMapper1 = new RowMapper<graphFolders>() {
//			
//			@Override
//			public graphFolders mapRow(ResultSet rs, int rowNum) throws SQLException {
//				String id= rs.getString("id");
//				String folder_name= rs.getString("folder_name");
//				String parent_id= rs.getString("parent_id");
//				return new graphFolders(id,folder_name,parent_id);
//			}
//		};
//		//System.out.println(sql);
//		return jdbcTemplate.query(sql, rowMapper1);
	}
	
//	attachments work starts here
	@Override
	public List<graphFolders> getAttachmentFolders(String foreignKey, String username, String status, String company_name) {
		// TODO Auto-generated method stub
//		String getCompanyName = "SELECT company_name FROM EEATool.users WHERE username= '"+username+"' ";
////		System.out.println("getCompanyName"+getCompanyName);
//		RowMapper<String> rowMapper = new RowMapper<String>() {
//			@Override
//			public String mapRow(ResultSet rs, int rowNum){
//				String attVal = "";
//				try {
//					attVal = rs.getString("company_name");
//				} catch (SQLException e) {
//					// TODO Auto-generated catch block
//					attVal = "";
//				}
//				return new String(attVal);
//			}
//		};
//		List<String> companyName = jdbcTemplate.query(getCompanyName, rowMapper);
		//System.out.println("companyName.get(0)"+companyName.get(0));
		
		String sql ="Select * from attachments.folders where parent_id = '"+foreignKey+"' && company_name = '"+company_name+"' && status = '"+status+"'";
//		System.out.println(sql);
		List<graphFolders> fullnames = new ArrayList<graphFolders>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				
				String id= rs.getString("id");
				String folder_name= rs.getString("folder_name");
				String parent_id= rs.getString("parent_id");
				graphFolders rm = new graphFolders(id,folder_name,parent_id);
				fullnames.add(rm);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return fullnames;
		
//		/////
//		RowMapper<graphFolders> rowMapper1 = new RowMapper<graphFolders>() {
//			
//			@Override
//			public graphFolders mapRow(ResultSet rs, int rowNum) throws SQLException {
//				String id= rs.getString("id");
//				String folder_name= rs.getString("folder_name");
//				String parent_id= rs.getString("parent_id");
//				return new graphFolders(id,folder_name,parent_id);
//			}
//		};
//		//System.out.println(sql);
//		return jdbcTemplate.query(sql, rowMapper1);
	}
	
	@Override
	public List<graphFiles> getAttachmentNamesFromFolder(String username,String parent_id,String status, String company_name) {
		// TODO Auto-generated method stub
//		String getCompanyName = "SELECT company_name FROM EEATool.users WHERE username= '"+username+"' ";
////		System.out.println("getCompanyName"+getCompanyName);
//		RowMapper<String> rowMapper = new RowMapper<String>() {
//			@Override
//			public String mapRow(ResultSet rs, int rowNum){
//				String attVal = "";
//				try {
//					attVal = rs.getString("company_name");
//				} catch (SQLException e) {
//					// TODO Auto-generated catch block
//					attVal = "";
//				}
//				return new String(attVal);
//			}
//		};
//		List<String> companyName = jdbcTemplate.query(getCompanyName, rowMapper);
		//System.out.println("companyName.get(0)"+companyName.get(0));
		String sql = "SELECT id,attachmentName,parent_id FROM attachments.files WHERE company_name =\'"+company_name+"\' && parent_id = \'"+parent_id+"\' && status = '"+status+"'";
//		System.out.println(sql);
		List<graphFiles> fullnames = new ArrayList<graphFiles>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				
				String graph = rs.getString("attachmentName");
				String id = rs.getString("id");
				String parent_id1 = rs.getString("parent_id");
				graphFiles rm = new graphFiles(id,graph,parent_id1);
				fullnames.add(rm);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return fullnames;
		
//		RowMapper<graphFiles> rowMapper1 = new RowMapper<graphFiles>() {
//			@Override
//			public graphFiles mapRow(ResultSet rs, int rowNum) throws SQLException {
//				String graph = rs.getString("modelName");
//				String id = rs.getString("id");
//				String parent_id = rs.getString("parent_id");
//				return new graphFiles(id,graph,parent_id);
//			}
//		};
//		return jdbcTemplate.query(sql, rowMapper1);
	}
//	attachments work ends here
	
	@Override
	public List<graphFolders> getGraphRemovedFolders(String username, String company_name) {
		String sql ="Select * from graphs.folders where status = '0' AND company_name = '"+company_name+"'";
		//String sql ="Select * from graphs.folders where status = '0' AND username = '"+username+"'";
		//System.out.println(sql);
			
//
		List<graphFolders> fullnames = new ArrayList<graphFolders>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				
				String id= rs.getString("id");
				String folder_name= rs.getString("folder_name");
				String parent_id= rs.getString("parent_id");
				graphFolders rm = new graphFolders(id,folder_name,parent_id);
				fullnames.add(rm);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return fullnames;		
	}
	
	@Override
	public List<String> check_username_when_registration(String username) {
		String sql ="select username from EEATool.users where username = '"+username+"'";
		//System.out.println(sql);
		List<String> columns = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String row_val = rs.getString("username");
				columns.add(row_val);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return columns;
	}
	
	@Override
	public List<String> catalogRelationElements(String dbName, String selectAtt, String srcElement, String tgtElement,String srcORtgtAtt, String srcORtgtVal, String reltype,String bidirectionRelationshipPair) {
		String sql ="SELECT "+selectAtt+" FROM "+dbName+".relationships WHERE Source = "+srcElement+" AND Destination = "+tgtElement+" AND "+srcORtgtAtt+" = '"+srcORtgtVal+"' AND Relationship_Type = '"+reltype+"' AND Bidirection_Relationship_Pair = '"+bidirectionRelationshipPair+"'";
		//System.out.println(sql);

		List<String> columns = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String row_val = rs.getString(selectAtt);
				columns.add(row_val);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return columns;
	}
	
	@Override
	public List<String> catalogRelationElementsForShared(String dbName, String selectAtt, String srcElement, String tgtElement,String srcORtgtAtt, String srcORtgtVal, String reltype,String brCode) {
		brCode = brCode.replaceAll("\\[", "\\(");
		brCode = brCode.replaceAll("\\]", "\\)");
		String sql ="SELECT "+selectAtt+" FROM "+dbName+".relationships WHERE Source = "+srcElement+" AND Destination = "+tgtElement+" AND "+srcORtgtAtt+" = '"+srcORtgtVal+"' AND Relationship_Type = '"+reltype+"' AND Bidirection_Relationship_Pair IN "+brCode+"";
		List<String> columns = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String row_val = rs.getString(selectAtt);
				columns.add(row_val);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return columns;
	}
	
	@Override
	public List<String> getCompanyName(String username) {
		String getCompanyName = "SELECT company_name FROM EEATool.users WHERE username= '"+username+"' ";
		
		
		List<String> companyName = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(getCompanyName);
			while (rs.next()) {
				String attVal = rs.getString("company_name");
				companyName.add(attVal);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if(!(companyName.size()>0)) {
			try {
				getConnection();
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(getCompanyName);
				while (rs.next()) {
					String attVal = rs.getString("company_name");
					companyName.add(attVal);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		return companyName;
	}
	
	@Override
	public List<String> getUserId(String username) {
		String getUserId = "SELECT id FROM EEATool.users WHERE username= '" + username + "' ";
//		System.out.println("getCompanyName"+getCompanyName);
		
		List<String> user_id = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(getUserId);
			while (rs.next()) {
				String row_val = rs.getString("id");
				user_id.add(row_val);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if(!(user_id.size()>0)) {
			try {
				getConnection();
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(getUserId);
				while (rs.next()) {
					String row_val = rs.getString("id");
					user_id.add(row_val);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		return user_id;
	}

	@Override
	public List<String> getLicenseId(String user_id) {
		String getLicenseId = "SELECT license_id  FROM EEATool.license_user WHERE user_id = '" + user_id + "' ";
//		System.out.println("getCompanyName"+getCompanyName);
		RowMapper<String> rowMapper = new RowMapper<String>() {
			@Override
			public String mapRow(ResultSet rs, int rowNum) {
				String attVal = "";
				try {
					attVal = rs.getString("license_id");
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					attVal = "";
				}
				return new String(attVal);
			}
		};
		List<String> license_id = jdbcTemplate.query(getLicenseId, rowMapper);
		return license_id;
	}

	@Override
	public List<String> getLicenseStatus(String license_id) {
		String getLicenseStatus = "SELECT status  FROM EEATool.license_user WHERE license_id = '" + license_id + "' ";
//		System.out.println("getCompanyName"+getCompanyName);
		RowMapper<String> rowMapper = new RowMapper<String>() {
			@Override
			public String mapRow(ResultSet rs, int rowNum) {
				String attVal = "";
				try {
					attVal = rs.getString("status");
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					attVal = "";
				}
				return new String(attVal);
			}
		};
		List<String> status = jdbcTemplate.query(getLicenseStatus, rowMapper);
		return status;
	}

	@Override
	public List<String> getIdsOfLoggedInUsers(String userNames) {
		String getIdsOfLoggedInUsers = "SELECT id FROM EEATool.users WHERE username in " + userNames + " ";
//		System.out.println("getCompanyName"+getCompanyName);
		RowMapper<String> rowMapper = new RowMapper<String>() {
			@Override
			public String mapRow(ResultSet rs, int rowNum) {
				String attVal = "";
				try {
					attVal = rs.getString("id");
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					attVal = "";
				}
				return new String(attVal);
			}
		};
		List<String> ids = jdbcTemplate.query(getIdsOfLoggedInUsers, rowMapper);
		return ids;
	}

	@Override
	public List<Integer> getLoggedInUsersStatus(String user_ids, String license_id) {
		String getLoggedInUsersStatus = "SELECT status FROM EEATool.license_user WHERE user_id IN " + user_ids
				+ " AND license_id = " + license_id;
		System.out.println(getLoggedInUsersStatus);
//		System.out.println("getCompanyName"+getCompanyName);
		RowMapper<Integer> rowMapper = new RowMapper<Integer>() {
			@SuppressWarnings("deprecation")
			@Override
			public Integer mapRow(ResultSet rs, int rowNum) {
				int attVal = 0;
				try {
					attVal = rs.getInt("status");
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					attVal = 0;
				}
				return new Integer(attVal);
			}
		};
		List<Integer> status = jdbcTemplate.query(getLoggedInUsersStatus, rowMapper);
		return status;
	}

	@Override
	public List<String> getLicenseExpirationDate(String license_id) {
		String getLicenseExpirationDate = "SELECT expiration_date  FROM EEATool.license WHERE id = '" + license_id + "' ";
//		System.out.println("getCompanyName"+getCompanyName);
		
//		
		List<String> columns = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(getLicenseExpirationDate);
			while (rs.next()) {
				String attVal = "";
				try {
					attVal = rs.getString("expiration_date");
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					attVal = "";
				}
				columns.add(attVal);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return columns;		
	}

	@Override
	public int updateLicenseStatusOne(String license_id, String user_id) {
		String sql = "UPDATE EEATool.license_user SET status = '1' WHERE license_id = '" + license_id + "' AND user_id = '"
				+ user_id + "'";
		try {
			Statement stmt = conn.createStatement();
			return stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
	}

	@Override
	public int updateLicenseStatusZero(String user_id) {
		String sql = "UPDATE EEATool.license_user SET status = '0' WHERE user_id = '" + user_id + "' AND status = '1'";
		try {
			Statement stmt = conn.createStatement();
			return stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
	}

	@Override
	public List<String> matrixElements(String dbName, String matrix_element1, String matrix_element2) {
		String sql ="SELECT DISTINCT ATT_01 FROM "+dbName+"."+matrix_element1+"";
		List<String> columns = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String attVal = null;
				try {
					attVal = rs.getString("ATT_01");
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					attVal = "";
					System.out.println("attVal"+attVal);
				}
				columns.add(attVal);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return columns;		
	}
		
	@Override
	public List<String> getExistingRelationshipsForMatrix(String dbName, String matrix_element1, String matrix_element2,String object1, String object2,String relationshipType) {
//		String sql = "SELECT Relationship_Type from "+dbName+".relationships Where Source = '"+matrix_element1+"' && Destination = '"+matrix_element2+"' && Source_Attribute_Value = '"+object1+"' && Destination_Attribute_Value = '"+object2+"' && Relationship_Type = '"+relationshipType+"' ";
		String sql = "SELECT Relationship_Type from "+dbName+".relationships Where ( (Source = '"+matrix_element1+"' && Destination = '"+matrix_element2+"' && Source_Attribute_Value = '"+object1+"' && Destination_Attribute_Value = '"+object2+"') || (Source = '"+matrix_element2+"' && Destination = '"+matrix_element1+"' && Source_Attribute_Value = '"+object2+"' && Destination_Attribute_Value = '"+object1+"') ) && Relationship_Type = '"+relationshipType+"' ";
		
//		
		List<String> columns = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String attVal = null;
				try {
					attVal = rs.getString("Relationship_Type");
				} catch (SQLException e) {
					attVal = "";
				}
				columns.add(attVal);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return columns;
	}
	@Override
	public List<String> getAccessTypeAttributeNames(String dbName) {
		String sql = "SELECT Self_Generated_Attribute FROM "+dbName+".attributes_information WHERE Element_Name = \"Access\" && Group_Caption = \"Access Type\";";
		
		
		List<String> getAccessTypeAttributeNames = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String attrName = rs.getString("Self_Generated_Attribute");
				getAccessTypeAttributeNames.add(attrName);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return getAccessTypeAttributeNames;
	}

	@Override
	public List<String> check_email_when_registration(String email) {
		String sql ="select email from EEATool.users where email = '"+email+"'";
		//System.out.println(sql);
		try {
			List<String> columns = new ArrayList<String>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					String attVal = null;
					try {
						attVal = rs.getString("email");
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						attVal = "";
					}
					columns.add(attVal);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return columns;
		}catch (EmptyResultDataAccessException e) {
			 return null;
		}
	}
	
	@Override
	public List<String> getAllForeignKeys(String dbName, String elementName, String ValueToGet) {
		String sql = "SELECT DISTINCT "+ValueToGet+" FROM "+dbName+"."+elementName+" ORDER BY "+ValueToGet+" ASC";
		
		List<String> columns = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String graph = rs.getString(ValueToGet);
				columns.add(graph);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return columns;		
//		/////
//		RowMapper<String> rowMapper = new RowMapper<String>() {
//			@Override
//			public String mapRow(ResultSet rs, int rowNum) throws SQLException {
//				String graph = rs.getString(ValueToGet);
//				return new String(graph);
//			}
//		};
//		return jdbcTemplate.query(sql, rowMapper);
	}

	@Override
	public List<graphFiles> getGraphNamesFromFolder(String username,String parent_id,String status, String company_name) {
		// TODO Auto-generated method stub
//		String getCompanyName = "SELECT company_name FROM EEATool.users WHERE username= '"+username+"' ";
////		System.out.println("getCompanyName"+getCompanyName);
//		RowMapper<String> rowMapper = new RowMapper<String>() {
//			@Override
//			public String mapRow(ResultSet rs, int rowNum){
//				String attVal = "";
//				try {
//					attVal = rs.getString("company_name");
//				} catch (SQLException e) {
//					// TODO Auto-generated catch block
//					attVal = "";
//				}
//				return new String(attVal);
//			}
//		};
//		List<String> companyName = jdbcTemplate.query(getCompanyName, rowMapper);
		//System.out.println("companyName.get(0)"+companyName.get(0));
		String sql = "SELECT id, modelName ,parent_id, filtered ,filtered_details FROM graphs.files WHERE company_name =\'"+company_name+"\' && parent_id = \'"+parent_id+"\' && status = '"+status+"'";
//		System.out.println(sql);
		List<graphFiles> fullnames = new ArrayList<graphFiles>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				
				String graph = rs.getString("modelName");
				String id = rs.getString("id");
				String parent_id1 = rs.getString("parent_id");
				String filtered = rs.getString("filtered");
				String filtered_details = rs.getString("filtered_details");
				graphFiles rm = new graphFiles(id, graph, parent_id1, filtered, filtered_details);
				fullnames.add(rm);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return fullnames;
		
//		RowMapper<graphFiles> rowMapper1 = new RowMapper<graphFiles>() {
//			@Override
//			public graphFiles mapRow(ResultSet rs, int rowNum) throws SQLException {
//				String graph = rs.getString("modelName");
//				String id = rs.getString("id");
//				String parent_id = rs.getString("parent_id");
//				return new graphFiles(id,graph,parent_id);
//			}
//		};
//		return jdbcTemplate.query(sql, rowMapper1);
	}
	
	@Override
	public List<navigationFiles> getNavigationNamesFromFolder(String username,String parent_id,String status, String company_name) {
		// TODO Auto-generated method stub
//		String getCompanyName = "SELECT company_name FROM EEATool.users WHERE username= '"+username+"' ";
////		System.out.println("getCompanyName"+getCompanyName);
//		RowMapper<String> rowMapper = new RowMapper<String>() {
//			@Override
//			public String mapRow(ResultSet rs, int rowNum){
//				String attVal = "";
//				try {
//					attVal = rs.getString("company_name");
//				} catch (SQLException e) {
//					// TODO Auto-generated catch block
//					attVal = "";
//				}
//				return new String(attVal);
//			}
//		};
//		List<String> companyName = jdbcTemplate.query(getCompanyName, rowMapper);
		//System.out.println("companyName.get(0)"+companyName.get(0));
		String sql = "SELECT id,navigationName,parent_id FROM graphs.navigation_files WHERE company_name =\'"+company_name+"\' && parent_id = \'"+parent_id+"\' && status = '"+status+"'";
//		System.out.println(sql);
		
//		
		List<navigationFiles> fullnames = new ArrayList<navigationFiles>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				
				String graph = rs.getString("navigationName");
				String id = rs.getString("id");
				String parent_id1 = rs.getString("parent_id");
				navigationFiles rm = new navigationFiles(id,graph,parent_id1);
				fullnames.add(rm);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return fullnames;		
//		
//		RowMapper<navigationFiles> rowMapper1 = new RowMapper<navigationFiles>() {
//			@Override
//			public navigationFiles mapRow(ResultSet rs, int rowNum) throws SQLException {
//				String graph = rs.getString("navigationName");
//				String id = rs.getString("id");
//				String parent_id = rs.getString("parent_id");
//				return new navigationFiles(id,graph,parent_id);
//			}
//		};
//		return jdbcTemplate.query(sql, rowMapper1);
	}
	
	@Override
	public List<List<String>> getXML_link_and_element_name_FromDB(String id) {
		String sql = "SELECT xml_link,element_name FROM graphs.catalog_files WHERE id =\'"+id+"\'";
		
//		
		List<String> xml_link = new ArrayList<String>();
		List<String> element_name = new ArrayList<String>();
		List<List<String>> elementName_and_xmlLink = new ArrayList<List<String>>(); 
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String xml_link_str = rs.getString("xml_link");
				String element_name_str = rs.getString("element_name");
				xml_link.add(xml_link_str);
				element_name.add(element_name_str);
				System.out.println("element_name_str: "+element_name_str);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		elementName_and_xmlLink.add(element_name);
		elementName_and_xmlLink.add(xml_link);
		return elementName_and_xmlLink;		
	}
	
	@Override
	public String getMatrix_XML_linkFromDB(String id) {
		String sql = "SELECT xml_link FROM graphs.matrix_files WHERE id =\'"+id+"\'";
//		
		List<String> columns = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String graph = rs.getString("xml_link");
				columns.add(graph);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return columns.get(0);		
	}
	
	@Override
	public List<catalogFiles> getCatalogNamesFromFolder(String username,String parent_id,String status, String company_name) {
		// TODO Auto-generated method stub
//		String getCompanyName = "SELECT company_name FROM EEATool.users WHERE username= '"+username+"' ";
////		System.out.println("getCompanyName"+getCompanyName);
//		RowMapper<String> rowMapper = new RowMapper<String>() {
//			@Override
//			public String mapRow(ResultSet rs, int rowNum){
//				String attVal = "";
//				try {
//					attVal = rs.getString("company_name");
//				} catch (SQLException e) {
//					// TODO Auto-generated catch block
//					attVal = "";
//				}
//				return new String(attVal);
//			}
//		};
//		List<String> companyName = jdbcTemplate.query(getCompanyName, rowMapper);
		//System.out.println("companyName.get(0)"+companyName.get(0));
		String sql = "SELECT id,catalog_name,element_name FROM graphs.catalog_files WHERE company_name =\'"+company_name+"\' && parent_id = \'"+parent_id+"\' && status = '"+status+"'";
//		System.out.println(sql);
		
//		
		List<catalogFiles> fullnames = new ArrayList<catalogFiles>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				
				String graph = rs.getString("catalog_name");
				String id = rs.getString("id");
				String elementName = rs.getString("element_name");
				catalogFiles rm = new catalogFiles(id,graph,elementName);
				fullnames.add(rm);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return fullnames;		
//		
		
//		RowMapper<catalogFiles> rowMapper1 = new RowMapper<catalogFiles>() {
//			@Override
//			public catalogFiles mapRow(ResultSet rs, int rowNum) throws SQLException {
//				String graph = rs.getString("catalog_name");
//				String id = rs.getString("id");
//				String elementName = rs.getString("element_name");
//				return new catalogFiles(id,graph,elementName);
//			}
//		};
//		return jdbcTemplate.query(sql, rowMapper1);
	}
	
	@Override
	public List<matrixFiles> getMatrixNamesFromFolder(String username,String parent_id,String status, String company_name) {
		// TODO Auto-generated method stub
//		String getCompanyName = "SELECT company_name FROM EEATool.users WHERE username= '"+username+"' ";
////		System.out.println("getCompanyName"+getCompanyName);
//		RowMapper<String> rowMapper = new RowMapper<String>() {
//			@Override
//			public String mapRow(ResultSet rs, int rowNum){
//				String attVal = "";
//				try {
//					attVal = rs.getString("company_name");
//				} catch (SQLException e) {
//					// TODO Auto-generated catch block
//					attVal = "";
//				}
//				return new String(attVal);
//			}
//		};
//		List<String> companyName = jdbcTemplate.query(getCompanyName, rowMapper);
		//System.out.println("companyName.get(0)"+companyName.get(0));
		String sql = "SELECT id, matrix_name,matrix_element1,matrix_element2,matrix_relation,parentID FROM graphs.matrix_files WHERE company_name =\'"+company_name+"\' && parentID = \'"+parent_id+"\' && status = '"+status+"'";
//		System.out.println(sql);
		
//		
		List<matrixFiles> fullnames = new ArrayList<matrixFiles>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				
				String id = rs.getString("id");
				String matrix_name = rs.getString("matrix_name");
				String matrix_element1 = rs.getString("matrix_element1");
				String matrix_element2 = rs.getString("matrix_element2");
				String matrix_relation = rs.getString("matrix_relation");
				String parentID = rs.getString("parentID");
				matrixFiles rm = new matrixFiles(id,matrix_name,matrix_element1,matrix_element2,matrix_relation,parentID);
				fullnames.add(rm);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return fullnames;		
//		
		
//		RowMapper<matrixFiles> rowMapper1 = new RowMapper<matrixFiles>() {
//			@Override
//			public matrixFiles mapRow(ResultSet rs, int rowNum) throws SQLException {
//				String id = rs.getString("id");
//				String matrix_name = rs.getString("matrix_name");
//				String matrix_element1 = rs.getString("matrix_element1");
//				String matrix_element2 = rs.getString("matrix_element2");
//				String matrix_relation = rs.getString("matrix_relation");
//				String parentID = rs.getString("parentID");
//				return new matrixFiles(id,matrix_name,matrix_element1,matrix_element2,matrix_relation,parentID);
//			}
//		};
//		return jdbcTemplate.query(sql, rowMapper1);
	}
	@Override
	public List<matrixFiles> getMatrixDetailsFromID(String matrix_id) {
		String sql = "SELECT id, matrix_name,matrix_element1,matrix_element2,matrix_relation,parentID FROM graphs.matrix_files WHERE id ='"+matrix_id+"'";
//		
		List<matrixFiles> fullnames = new ArrayList<matrixFiles>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				
				String id = rs.getString("id");
				String matrix_name = rs.getString("matrix_name");
				String matrix_element1 = rs.getString("matrix_element1");
				String matrix_element2 = rs.getString("matrix_element2");
				String matrix_relation = rs.getString("matrix_relation");
				String parentID = rs.getString("parentID");
				matrixFiles rm = new matrixFiles(id,matrix_name,matrix_element1,matrix_element2,matrix_relation,parentID);
				fullnames.add(rm);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return fullnames;	
	}
	
	@Override
	public List<matrixFiles> getDeletedMatrixDetails(String username) {
		String sql = "SELECT id, matrix_name,matrix_element1,matrix_element2,matrix_relation,parentID FROM graphs.matrix_files WHERE status = '0'";
		
//		
		List<matrixFiles> fullnames = new ArrayList<matrixFiles>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				
				String id = rs.getString("id");
				String matrix_name = rs.getString("matrix_name");
				String matrix_element1 = rs.getString("matrix_element1");
				String matrix_element2 = rs.getString("matrix_element2");
				String matrix_relation = rs.getString("matrix_relation");
				String parentID = rs.getString("parentID");
				matrixFiles rm = new matrixFiles(id,matrix_name,matrix_element1,matrix_element2,matrix_relation,parentID);
				fullnames.add(rm);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return fullnames;		

	}
	
	@Override
	public String getFolderNameFromID(String id) {
		String sql = "SELECT folder_name FROM graphs.folders WHERE id =\'"+id+"\'";
		
//		
		List<String> columns = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String graph = rs.getString("folder_name");
				columns.add(graph);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return columns.get(0);		
//		
	}
	
	@Override
	public List<catalogFiles> getCatalogDetailsFromID(String catalogID) {
		String sql = "SELECT id,catalog_name,element_name FROM graphs.catalog_files WHERE id =\'"+catalogID+"\'";
		
//		
		List<catalogFiles> fullnames = new ArrayList<catalogFiles>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				
				String graph = rs.getString("catalog_name");
				String id = rs.getString("id");
				String elementName = rs.getString("element_name");
				catalogFiles rm = new catalogFiles(id,graph,elementName);
				fullnames.add(rm);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return fullnames;		

	}
	
	@Override
	public List<catalogFiles> getDeletedCatalogDetails(String username) {
		String sql = "SELECT id,catalog_name,parent_id,element_name FROM graphs.catalog_files WHERE status = '0'";
		
		List<catalogFiles> fullnames = new ArrayList<catalogFiles>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				
				String graph = rs.getString("catalog_name");
				String id = rs.getString("id");
				String elementName = rs.getString("element_name");
				String parent_id = rs.getString("parent_id");
				catalogFiles rm = new catalogFiles(id,graph,parent_id,elementName);
				fullnames.add(rm);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return fullnames;		
	}
	
	@Override
	public List<navigationFiles> getDeletedNavigationDetails(String username) {
		String sql = "SELECT id,navigationName,parent_id FROM graphs.navigation_files WHERE status = '0'";
		
		List<navigationFiles> fullnames = new ArrayList<navigationFiles>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				
				String graph = rs.getString("navigationName");
				String id = rs.getString("id");
				String parent_id = rs.getString("parent_id");
				navigationFiles rm = new navigationFiles(id,graph,parent_id);
				fullnames.add(rm);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return fullnames;		
	}	
	
	@Override
	public String getGraphIDFromFolder(String username,String parent_id, String modelName) {
		String sql = "SELECT id FROM graphs.files WHERE username =\'"+username+"\' && parent_id = \'"+parent_id+"\' && modelName = \'"+modelName+"\'";
//		String sql = "SELECT Graph_json FROM "+dbName+".json_graph WHERE username =\'"+username+"\' && graphname = \'"+graphname+"\'";
//		System.out.println(sql);
		
//		
		List<String> columns = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String graph = rs.getString("id");
				columns.add(graph);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return columns.get(0);		
	}

	@Override
	public String getNavigationIDFromFolder(String username,String parent_id, String modelName) {
		String sql = "SELECT id FROM graphs.navigation_files WHERE username =\'"+username+"\' && parent_id = \'"+parent_id+"\' && navigationName = \'"+modelName+"\'";
//		String sql = "SELECT Graph_json FROM "+dbName+".json_graph WHERE username =\'"+username+"\' && graphname = \'"+graphname+"\'";
//		System.out.println(sql);
		
//		
		List<String> columns = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String graph = rs.getString("id");
				columns.add(graph);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return columns.get(0);
	}	

	@Override
	public List<String> getRowWithCondition1(String dbName, String tableName, String attributeName,
			String conditionAttribute, String conditionValue) {
		
		
		String sql ="Select "+attributeName+" from " +dbName+ "."+tableName+" where "+conditionAttribute+" = '"+conditionValue+"' where status = '0'";
		try {
//			
			List<String> columns = new ArrayList<String>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					String attVal = null;
					try {
						attVal = rs.getString(attributeName);
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						attVal = "";
					}
					columns.add(attVal);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return columns;
		}catch (EmptyResultDataAccessException e) {
			 return null;
		}
	}
	
	@Override
	public int updateNameInRelTable(String dbName,String name, String updatedName) {
		String sql = "UPDATE "+dbName+".relationships SET Source_Attribute_Value = '"+updatedName+"' WHERE Source_Attribute_Value = '"+name+"' ";
		try {
			Statement stmt = conn.createStatement();
			stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			Statement stmt = conn.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String sql1 = "UPDATE "+dbName+".relationships SET Destination_Attribute_Value = '"+updatedName+"' WHERE Destination_Attribute_Value = '"+name+"' ";
		try {
			Statement stmt = conn.createStatement();
			return stmt.executeUpdate(sql1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
	}

	@Override
	public List<String> getGraphLastDate(String dbName, String graphID) {
		String graphLastDate = "SELECT last_time_updated FROM graphs.files WHERE id = '"+graphID+"'";
		
//		
		List<String> columns = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(graphLastDate);
			while (rs.next()) {
				String attVal = "";
				try {
					attVal = rs.getString("last_time_updated");
				} catch (SQLException e) {
					attVal = "";
				}
				columns.add(attVal);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return columns;
	}
	
	
	@Override
	public List<String> getGraphCompanyName(String dbName, String graphID) {
		String graphLastDate = "SELECT company_name, modelName, parent_id FROM graphs.files WHERE id = '"+graphID+"'";
		
		System.out.println("graphLastDate: "+graphLastDate);	
		List<String> columns = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(graphLastDate);
			while (rs.next()) {
				String companyName = "";
				String modelName = "";
				String parentId = "";
				try {
					companyName = rs.getString("company_name");
					modelName = rs.getString("modelName");
					parentId = rs.getString("parent_id");
				} catch (SQLException e) {
					companyName = "";
					modelName = "";
					parentId = "";
				}
				columns.add(companyName);
				columns.add(modelName);
				columns.add(parentId);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return columns;
	}
	
	@Override
	public List<String> checkNewNavigationSaveStatus(String navigtaionId) {
		
		String navigationGraph = "SELECT 	graph_json FROM graphs.navigation_files WHERE id = '"+navigtaionId+"'";
		
		List<String> columns = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(navigationGraph);
			while (rs.next()) {
				String graph_json = "";
				try {
					graph_json = rs.getString("graph_json");
				} catch (SQLException e) {
					graph_json = "";
				}
				columns.add(graph_json);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return columns;
	}
	
	@Override
	public List<String> checkNewGraphSaveStatus(String graphId) {
		
		String diagramGraph = "SELECT graph_json FROM graphs.files WHERE id = '"+graphId+"'";
		
		List<String> columns = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(diagramGraph);
			while (rs.next()) {
				String graph_json = "";
				try {
					graph_json = rs.getString("graph_json");
				} catch (SQLException e) {
					graph_json = "";
				}
				columns.add(graph_json);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return columns;
	}
	
	@Override
	public List<String> getNavigationCompanyAndModelName(String navigtaionId) {
		
		String NavigationDetails = "SELECT company_name, navigationName, parent_id FROM graphs.navigation_files WHERE id = '"+navigtaionId+"'";
		
		System.out.println("NavigationDetails: "+NavigationDetails);	
		List<String> columns = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(NavigationDetails);
			while (rs.next()) {
				String companyName = "";
				String navigationName = "";
				String parentId = "";
				try {
					companyName = rs.getString("company_name");
					navigationName = rs.getString("navigationName");
					parentId = rs.getString("parent_id");
				} catch (SQLException e) {
					companyName = "";
					navigationName = "";
					parentId = "";
				}
				columns.add(companyName);
				columns.add(navigationName);
				columns.add(parentId);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return columns;
	}
	
	@Override
	public List<String> getFolderName(String folderId) {
		String graphLastDate = "SELECT folder_name FROM graphs.folders WHERE id = '"+folderId+"'";
		
		System.out.println("graphLastDate: "+graphLastDate);	
		List<String> columns = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(graphLastDate);
			while (rs.next()) {
				String folderName = "";

				try {
					folderName = rs.getString("folder_name");

				} catch (SQLException e) {
					folderName = "";

				}
				columns.add(folderName);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return columns;
	}
	
	@Override
	public List<String> getNavigationLastDate(String dbName, String navigationID) {
		String graphLastDate = "SELECT last_time_updated FROM graphs.navigation_files WHERE id = '"+navigationID+"'";
//		
		List<String> columns = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(graphLastDate);
			while (rs.next()) {
				String attVal = "";
				try {
					attVal = rs.getString("last_time_updated");
				} catch (SQLException e) {
					attVal = "";
				}
				columns.add(attVal);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return columns;		
//		

	}
	
	
	@Override
	public List<String> checkFileStatus(String graphID) {
		String checkFileStatus = "SELECT status FROM graphs.files WHERE id = '"+graphID+"'";
		
//		
		List<String> columns = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(checkFileStatus);
			while (rs.next()) {
				String attVal = "";
				try {
					attVal = rs.getString("status");
				} catch (SQLException e) {
					attVal = "";
				}
				columns.add(attVal);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return columns;

	}

	@Override
	public List<String> getUserDetails(String username) {
		String sql = "SELECT metamodel_name FROM EEATool.users WHERE username = '"+username+"'";
		List<String> columns = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String row_val = rs.getString("metamodel_name");
				columns.add(row_val);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return columns;
	}

	@Override
	public int insertCatalogInDb(String username , Catalog catalog, String XML_link, String comapny_name ) {
		
		String duplicateCatalogCheckQuery = "SELECT id FROM graphs.catalog_files WHERE company_name ='"+comapny_name+"' AND catalog_name = '"+catalog.getCatalogName()+"' AND element_name = '"+catalog.getElementName()+"' ";
		List<String> data = new ArrayList<>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(duplicateCatalogCheckQuery);
			while (rs.next()) {
				
				String Id = rs.getString("id");
				data.add(Id);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			// e.printStackTrace();
			System.out.println("Checking Existing Catalog Error");
		}
		
		System.out.println("data: "+data);
		
		if(data.size() == 0) {
			
		String sql= "INSERT  INTO graphs.catalog_files (username,company_name,catalog_name,element_name,xml_link,parent_id,status) VALUES ('"+username+"','"+comapny_name+"','"+catalog.getCatalogName()+"','"+catalog.getElementName()+"','"+XML_link+"','"+catalog.getParentID()+"','1')";
		
				try {
			Statement stmt = conn.createStatement();
			return stmt.executeUpdate(sql);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
			}
		}else {
			return 000;
		}
	}
	
	@Override
	public int insertMatrixInDb(String username , saveMatrix matrix,String XML_link, String company_name) {
		
		String sql= "INSERT  INTO graphs.matrix_files (username,company_name,matrix_name,xml_link,parent_id,status) VALUES ('"+username+"','"+company_name+"','"+matrix.getMatrixName()+"','"+XML_link+"','"+matrix.getParentID()+"','1')";
		
		try {
			Statement stmt = conn.createStatement();
			return stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
	}
	
	@Override
	public int getRelationsCount(String dbName, String sourceElement,String targetElement,String relType, String relTypeVal,String attName, String attVal) {
		
		String sql = "SELECT COUNT(id) FROM "+dbName+".relationships WHERE Source = '"+sourceElement+"' AND Destination = '"+targetElement+"' AND "+relType+" = '"+relTypeVal+"' AND "+attName+" = '"+attVal+"'";
		RowMapper<String> rowMapper = new RowMapper<String>() {
			@Override
			public String mapRow(ResultSet rs, int rowNum){
				String attVal = "";
				try {
					attVal = rs.getString("COUNT(id)");
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					attVal = "";
				}
				return new String(attVal);
			}
		};
		String count =  jdbcTemplate.queryForObject(sql, rowMapper);
		int countInt=Integer.parseInt(count);
		return countInt;
	}
	
	/*
	@Override
	public int testFiling(String r) {
		try {
			File fobj=new File("./testing.txt");
			fobj.createNewFile();
			FileOutputStream fout=new FileOutputStream(fobj,true);
			for(int i = 0; i< r.length(); i++)
			fout.write(r.charAt(i));
			//System.out.println("fout before close: "+fout);
			//System.out.println("Success!");
			fout.close();
			//System.out.println("fout after close: "+fout);
			//System.out.println("path"+fobj.getAbsolutePath());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
		
		
		
		return (Integer) null;
//		return jdbcTemplate.update(sql);
	}*/

public List<Element> DbToExcel()
	{			
		String sql = "Select * from amf1.Business_Actor ";
		List<Element> eleList = jdbcTemplate.query(sql, new RowMapper<Element>() {

			@Override
			public Element mapRow(ResultSet rs, int rowNum) throws SQLException {
				Element elem = new Element();
				
				elem.setElementName(rs.getString("ename"));
				elem.setConceptType(rs.getString("designation"));
				elem.setElementType(rs.getString("dept"));
//				elem.setElementColor(rs.getInt("salary"));
				elem.setElementAspect(rs.getString("location"));
				System.out.println("values "+elem);
				return elem;
				
			}

		});
		// TODO Auto-generated method stub
		return eleList;
	}

	@Override
	public List<String> DbToExcel(String dbName, String tableName, String elementName) {
		// TODO Auto-generated method stub
		return null;
	}
	
	public List<String> listTruncTbl(String dbName)
	{
		String getTableNames = "SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE = 'BASE TABLE' AND TABLE_SCHEMA='"+dbName+"'";
		System.out.println("sql:"+getTableNames);	
//		String truncate = "";
		try {
			
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(getTableNames);
			while (rs.next()) {
				String truncate = "";
				String attVal = rs.getString("TABLE_NAME");
				if (!attVal.equals("attributes_information"))
				{
					truncate = "TRUNCATE TABLE "+ dbName +"."+ attVal;
//					System.out.println("sql: "+truncate);
					try {
						Statement stmt1 = conn.createStatement();
						stmt1.executeUpdate(truncate);
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
//				columns.add(row_val);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
//	Get table data from Database
	@Override
	public List<String> listTbl(String dbName) {
		String getTableNames = "SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE = 'BASE TABLE' AND TABLE_SCHEMA='"+dbName+"'";
		System.out.println("Database Name: "+dbName);
		
//		
		List<String> columns = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(getTableNames);
			while (rs.next()) {
				String attVal = "";
				try {
					attVal = rs.getString("TABLE_NAME");
				} catch (SQLException e) {
					attVal = "";
				}
				columns.add(attVal);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return columns;		
	}
	
	
	@Override
	public List<ModelElement> listEle(String dbName,String tableName) {
				
		String getElementNames = "SELECT * FROM "+dbName+"."+tableName+"";
//		System.out.println("getElementNames: "+getElementNames);
				
//		
		List<ModelElement> fullnames = new ArrayList<ModelElement>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(getElementNames);
			while (rs.next()) {
				
					String Name = rs.getString("ATT_01");
					String Id = rs.getString("ATT_02");
					String Description = rs.getString("ATT_03");
					String Type = rs.getString("ATT_04");
					String Repository_Status = rs.getString("ATT_05");
				ModelElement rm = new ModelElement(Name,Id,Description,Type,Repository_Status);
				fullnames.add(rm);
				}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return fullnames;
		}

//	@Override
//	public List<ModelRelationship> listRel(String dbName, String tableName, String Source_Rel_Element, String Target_Rel_Element) {
//		
//		String sql = "SELECT * FROM amf1."+tableName+" limit 100";
//		
//		//System.out.println("relationship: "+sql);
//		RowMapper<ModelRelationship> rowMapper = new RowMapper<ModelRelationship>() {
//			
//			@Override
//			public ModelRelationship mapRow(ResultSet rs, int rowNum) throws SQLException {
//				String destination = rs.getString("Target_Rel_Element");
//				String source = rs.getString("Source_Rel_Element");
//				//System.out.printf(" ---: "+source + destination);
//				if ((source.equals("N/A")) && (!destination.equals("N/A")))
//				{
////					System.out.println("Target: "+destination);
//					return new ModelRelationship(null,destination);
//				}
//				else if ((!source.equals("N/A")) && (destination.equals("N/A")))
//				{
//// 					System.out.println("Source: "+source);
//					return new ModelRelationship(source,null);
//				}
//				else
//				{
////					return null;
//					return new ModelRelationship(null,null);
//				}
////				
//				}
//		};
//		return jdbcTemplate.query(sql, rowMapper);
//
//	}
	
		
	
		@Override
		public List<String> listRel(String dbName, String selectAtt, String srcElement, String tgtElement, String srcORtgtAtt, String srcORtgtVal, String reltype, String DAN, String tgtName){
//		public List<String> listRel(String dbName, String selectAtt, String srcElement, String tgtElement, String src_att_name, String des_att_name, String srcORtgtAtt, String srcORtgtVal, String reltype) {
			
//			"+selectAtt+"				WHERE Source = "+srcElement+" AND Destination = "+tgtElement+" AND "+srcORtgtAtt+" = '"+srcORtgtVal+"' AND Relationship_Type = '"+reltype+"'"
			
			String sql ="SELECT "+selectAtt+" FROM "+dbName+".relationships WHERE Source = '"+srcElement+"' AND Destination = '"+tgtElement+"' AND "+srcORtgtAtt+" = '"+srcORtgtVal+"' "
					+ "AND Relationship_Type = '"+reltype+"' AND "+DAN+" = '"+tgtName+"'"  ;
//			System.out.println("QueryREL: "+sql);
			RowMapper<String> rowMapper = new RowMapper<String>() {
				
				@Override
				public String mapRow(ResultSet rs, int rowNum){
					String attVal = null;
					try 
					{
						attVal = rs.getString(selectAtt);
					} 
	
					catch (SQLException e) 
					{
						// TODO Auto-generated catch block
						attVal = "";
					}
					System.out.println();
//					System.out.println(attVal);
					return new String(attVal);
				}
			};
			//System.out.println(sql);
			return jdbcTemplate.query(sql, rowMapper);
		}
		
		@Override
		public List<roleDetails> getRoleDetails(String userRole,String username,String companyName) {
			
			String sql = "SELECT * FROM EEATool.role_details WHERE user_role = '"+userRole+"' AND company_name = '"+companyName+"'";
			
			List<roleDetails> roleDetails = new ArrayList<roleDetails>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					int id= rs.getInt("id");
					String user_role= rs.getString("user_role");
					String company_name= rs.getString("company_name");
					boolean eaPortal = rs.getBoolean("eaPortal");
					boolean import_export = rs.getBoolean("import_export");
					boolean admin = rs.getBoolean("admin");
					boolean userManagement = rs.getBoolean("userManagement");
					boolean userProfile = rs.getBoolean("userProfile");
					boolean organizationalPortal = rs.getBoolean("organizationalPortal");
					boolean elementCreate= rs.getBoolean("elementCreate");
					boolean elementRead= rs.getBoolean("elementRead");
					boolean elementUpdate= rs.getBoolean("elementUpdate");
					boolean elementDelete= rs.getBoolean("elementDelete");
					boolean relationshipCreate= rs.getBoolean("relationshipCreate");
					boolean relationshipRead= rs.getBoolean("relationshipRead");
					boolean relationshipUpdate= rs.getBoolean("relationshipUpdate");
					boolean relationshipDelete= rs.getBoolean("relationshipDelete");
					boolean connectorCreate= rs.getBoolean("connectorCreate");
					boolean connectorRead= rs.getBoolean("connectorRead");
					boolean connectorUpdate= rs.getBoolean("connectorUpdate");
					boolean connectorDelete= rs.getBoolean("connectorDelete");
					boolean catalogCreate= rs.getBoolean("catalogCreate");
					boolean catalogRead= rs.getBoolean("catalogRead");
					boolean catalogUpdate= rs.getBoolean("catalogUpdate");
					boolean catalogDelete= rs.getBoolean("catalogDelete");
					boolean matrixCreate= rs.getBoolean("matrixCreate");
					boolean matrixRead= rs.getBoolean("matrixRead");
					boolean matrixUpdate= rs.getBoolean("matrixUpdate");
					boolean matrixDelete= rs.getBoolean("matrixDelete");
					boolean graphCreate= rs.getBoolean("graphCreate");
					boolean graphRead= rs.getBoolean("graphRead");
					boolean graphUpdate= rs.getBoolean("graphUpdate");
					boolean graphDelete= rs.getBoolean("graphDelete");
					boolean userCreate= rs.getBoolean("userCreate");
					boolean userRead= rs.getBoolean("userRead");
					boolean userUpdate= rs.getBoolean("userUpdate");
					boolean userDelete= rs.getBoolean("userDelete");
					boolean importVar= rs.getBoolean("import");
					boolean exportVar= rs.getBoolean("export");
					boolean roleCreate= rs.getBoolean("roleCreate");
					boolean roleRead= rs.getBoolean("roleRead");
					boolean roleUpdate= rs.getBoolean("roleUpdate");
					boolean roleDelete= rs.getBoolean("roleDelete");
					boolean backup_restore= rs.getBoolean("backup_restore");
					roleDetails rd = new roleDetails(id, user_role, company_name, eaPortal,  import_export,
						 admin,  userManagement,  userProfile,organizationalPortal, elementCreate, elementRead, elementUpdate,
						elementDelete, relationshipCreate, relationshipRead, relationshipUpdate, relationshipDelete,
						connectorCreate, connectorRead, connectorUpdate, connectorDelete, catalogCreate, catalogRead,
						catalogUpdate, catalogDelete, matrixCreate, matrixRead, matrixUpdate, matrixDelete, graphCreate,
						graphRead, graphUpdate, graphDelete, userCreate, userRead, userUpdate, userDelete, importVar,
						exportVar, roleCreate, roleRead, roleUpdate, roleDelete, backup_restore);
					///
					roleDetails.add(rd);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return roleDetails;
		}

	@Override
	public List<roleDetails> getSpecificRoleDetails(String userRole, String companyName) {

		String sql = "SELECT * FROM EEATool.role_details WHERE user_role = '" + userRole + "' AND company_name = '"
				+ companyName + "'";
		System.out.println(sql);

//		
		List<roleDetails> fullnames = new ArrayList<roleDetails>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				
				int id = rs.getInt("id");
				String user_role = rs.getString("user_role");
				String company_name = rs.getString("company_name");
				boolean elementCreate = rs.getBoolean("elementCreate");
				boolean elementRead = rs.getBoolean("elementRead");
				boolean elementUpdate = rs.getBoolean("elementUpdate");
				boolean elementDelete = rs.getBoolean("elementDelete");
				boolean relationshipCreate = rs.getBoolean("relationshipCreate");
				boolean relationshipRead = rs.getBoolean("relationshipRead");
				boolean relationshipUpdate = rs.getBoolean("relationshipUpdate");
				boolean relationshipDelete = rs.getBoolean("relationshipDelete");
				boolean connectorCreate = rs.getBoolean("connectorCreate");
				boolean connectorRead = rs.getBoolean("connectorRead");
				boolean connectorUpdate = rs.getBoolean("connectorUpdate");
				boolean connectorDelete = rs.getBoolean("connectorDelete");
				boolean catalogCreate = rs.getBoolean("catalogCreate");
				boolean catalogRead = rs.getBoolean("catalogRead");
				boolean catalogUpdate = rs.getBoolean("catalogUpdate");
				boolean catalogDelete = rs.getBoolean("catalogDelete");
				boolean matrixCreate = rs.getBoolean("matrixCreate");
				boolean matrixRead = rs.getBoolean("matrixRead");
				boolean matrixUpdate = rs.getBoolean("matrixUpdate");
				boolean matrixDelete = rs.getBoolean("matrixDelete");
				boolean graphCreate = rs.getBoolean("graphCreate");
				boolean graphRead = rs.getBoolean("graphRead");
				boolean graphUpdate = rs.getBoolean("graphUpdate");
				boolean graphDelete = rs.getBoolean("graphDelete");
				boolean userCreate = rs.getBoolean("userCreate");
				boolean userRead = rs.getBoolean("userRead");
				boolean userUpdate = rs.getBoolean("userUpdate");
				boolean userDelete = rs.getBoolean("userDelete");
				boolean importVar = rs.getBoolean("import");
				boolean exportVar = rs.getBoolean("export");
				boolean roleCreate = rs.getBoolean("roleCreate");
				boolean roleRead = rs.getBoolean("roleRead");
				boolean roleUpdate = rs.getBoolean("roleUpdate");
				boolean roleDelete = rs.getBoolean("roleDelete");
				boolean backup_restore = rs.getBoolean("backup_restore");
				roleDetails rm = new roleDetails(id, user_role, company_name, elementCreate, elementRead, elementUpdate,
						elementDelete, relationshipCreate, relationshipRead, relationshipUpdate, relationshipDelete,
						connectorCreate, connectorRead, connectorUpdate, connectorDelete, catalogCreate, catalogRead,
						catalogUpdate, catalogDelete, matrixCreate, matrixRead, matrixUpdate, matrixDelete, graphCreate,
						graphRead, graphUpdate, graphDelete, userCreate, userRead, userUpdate, userDelete, importVar,
						exportVar, roleCreate, roleRead, roleUpdate, roleDelete, backup_restore);
				fullnames.add(rm);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return fullnames;
	}

	@Override
	public int updateRoleDetails(Map<String, String> roleDict) {
		String updateValuesString = "";
		int valueInt = 0;
		for (Map.Entry<String, String> entry : roleDict.entrySet()) {
			String key = entry.getKey();
			String value = entry.getValue();
			if (!key.equals("id")) {
				if (key.equals("importVar") || key.equals("exportVar")) {
					key = key.replaceAll("Var", "");
				}
				if (value.equals("true")) {
					valueInt = 1;
				} else if (value.equals("false")) {
					valueInt = 0;
				}
				updateValuesString += key + " = '" + valueInt + "', ";
			}

		}
		updateValuesString = updateValuesString.substring(0, updateValuesString.length() - 2);
		String sql = "UPDATE EEATool.role_details SET " + updateValuesString + " Where id = " + roleDict.get("id");
		System.out.println("dd2: " + sql);
		try {
			Statement stmt = conn.createStatement();
			return stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
	}

		
	@Override
	public List<chartsModel> getChartDataFromDivID(String divID, String username, String company_name) {		
		String sql = "SELECT * FROM graphs.chart_details WHERE company_name = '"+company_name+"' AND tab_id = '"+divID+"'";
		System.out.println(sql);
		
//		
		List<chartsModel> fullnames = new ArrayList<chartsModel>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String tab_name= rs.getString("tab_name");
				String element_name= rs.getString("element_name");
				String chart_title= rs.getString("chart_title");
				String chart_title_in_arabic= rs.getString("chart_title_in_arabic");
				String chart_name= rs.getString("chart_name");
				String div_id= rs.getString("div_id");
				String chart_type= rs.getString("chart_type");
				String chart_operation= rs.getString("chart_operation");
				String y_axis_data= rs.getString("y_axis_data");
				String y_axis_label= rs.getString("y_axis_label");
				String x_axis_label= rs.getString("x_axis_label");
				String y_axis_title= rs.getString("y_axis_title");
				String categories_array= rs.getString("categories_array");
				String operation_value= rs.getString("operation_value");
				String attributesTextArea= rs.getString("attributesTextArea");
				chartsModel rm = new chartsModel(tab_name,element_name,chart_title,chart_title_in_arabic,chart_name, div_id, chart_type, chart_operation, y_axis_data, y_axis_label, x_axis_label, y_axis_title,categories_array,operation_value, attributesTextArea);
				fullnames.add(rm);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return fullnames;
	}
		
		@Override
		public List<chartsModel> getChartData() {
			
			String sql = "SELECT * FROM graphs.chart_details";
			System.out.println(sql);
			
//			
			List<chartsModel> fullnames = new ArrayList<chartsModel>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					
					String tab_name= rs.getString("tab_name");
					String element_name= rs.getString("element_name");
					String chart_title= rs.getString("chart_title");
					String chart_title_in_arabic= rs.getString("chart_title_in_arabic");
					String chart_name= rs.getString("chart_name");
					String div_id= rs.getString("div_id");
					String chart_type= rs.getString("chart_type");
					String chart_operation= rs.getString("chart_operation");
					String y_axis_data= rs.getString("y_axis_data");
					String y_axis_label= rs.getString("y_axis_label");
					String x_axis_label= rs.getString("x_axis_label");
					String y_axis_title= rs.getString("y_axis_title");
					String categories_array= rs.getString("categories_array");
					String operation_value= rs.getString("operation_value");
					String attributesTextArea= rs.getString("attributesTextArea");
					chartsModel rm = new chartsModel(tab_name,element_name,chart_title,chart_title_in_arabic,chart_name, div_id, chart_type, chart_operation, y_axis_data, y_axis_label, x_axis_label, y_axis_title,categories_array, operation_value, attributesTextArea);
					fullnames.add(rm);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return fullnames;			
		}
		
		
		@Override
		public List<String> getUserRole(String username) {
			// TODO Auto-generated method stub
			String checkAdmin = "SELECT role FROM EEATool.user_roles WHERE username= '"+username+"' ";	
//			
			List<String> columns = new ArrayList<String>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(checkAdmin);
				while (rs.next()) {
					String attVal = "";
					try {
						attVal = rs.getString("role");
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						attVal = "";
					}
					columns.add(attVal);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return columns;
		}
		
		@Override
		public int deleteChartDataFromDivID(String divID, String username, String userRole) {
			if(userRole.equals("ROLE_ADMIN")) {	
			String sql = "DELETE FROM graphs.chart_details WHERE div_id= '"+divID+"'";
			try {
				Statement stmt = conn.createStatement();
				return stmt.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return 0;
			}
				
			}
			else {
				 String sql3 = "DELETE FROM graphs.chart_details WHERE div_id= '"+divID+"' AND username = '"+username+"'"; 
				 try {
						Statement stmt = conn.createStatement();
						return stmt.executeUpdate(sql3);
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
						return 0;
					}
			}
		}
		/*
		@Override
		public List<String> getChartDataFromDivID(String chart_div_id) {
			String sql ="Select chart_json from graphs.chart_details where div_id = '"+chart_div_id+"'";
			try {
			RowMapper<String> rowMapper = new RowMapper<String>() {
				@Override
					public String mapRow(ResultSet rs, int rowNum){
						String attVal = null;
						try { 
							attVal= rs.getString("chart_json");
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							attVal = "";
						}
//						System.out.println(attVal);
					return new String(attVal);
				}
			};
			System.out.println(sql);
			return jdbcTemplate.query(sql, rowMapper);
				
			}catch (EmptyResultDataAccessException e) {
//				System.out.println("null");
				 return null;
			}
		}
		*/
		@Override
		public int saveChart(Map<String, String> saveChart, String username) {
			String getCompanyName = "SELECT company_name FROM EEATool.users WHERE username= '"+username+"' ";
//			System.out.println("getCompanyName"+getCompanyName);
			
//			
			List<String> columns = new ArrayList<String>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(getCompanyName);
				while (rs.next()) {
					String attVal = "";
					try {
						attVal = rs.getString("company_name");
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						attVal = "";
					}
					columns.add(attVal);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}

			String getChartIdSql = "SELECT id from graphs.chart_details WHERE tab_id= '"+saveChart.get("tab_id")+"' AND tab_name='"+saveChart.get("chartNameVal")+"' AND div_id = '"+saveChart.get("divID")+"'  ";
			List<String> chartData = new ArrayList<String>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(getChartIdSql);
				while (rs.next()) {
					String chartDetails = "";
					try {
						chartDetails = rs.getString("id");
						
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						chartDetails = "";
					}
					chartData.add(chartDetails);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			if(chartData.size() < 1) {
//				String sql = "INSERT INTO graphs.chart_details (tab_id, tab_name, element_name, chart_title,chart_title_in_arabic,chart_name, div_id, chart_type, chart_operation, y_axis_data, y_axis_label, x_axis_label, y_axis_title, categories_array, operation_value, attributesTextArea, username, company_name) VALUES ('"+saveChart.get("tab_id")+"','Chart_"+saveChart.get("tab_id")+"','"+saveChart.get("element_name")+"','"+saveChart.get("chart_title")+"','"+saveChart.get("chart_title_in_arabic")+"','"+saveChart.get("chartName")+"', '"+saveChart.get("divID")+"', '"+saveChart.get("chartType")+"', '"+saveChart.get("chartOperation")+"', '"+saveChart.get("yAxisData")+"', '"+saveChart.get("yAxisLabel")+"', '"+saveChart.get("xAxisLabel")+"', '"+saveChart.get("y_axis_title")+"', '"+saveChart.get("categoriesArray")+"', '"+saveChart.get("operation_value")+"', '"+saveChart.get("attributesTextArea")+"','"+username+"', '"+columns.get(0)+"') ";
				String sql = "INSERT INTO graphs.chart_details (tab_id, tab_name, element_name, chart_title,chart_title_in_arabic,chart_name, div_id, chart_type, chart_operation, y_axis_data, y_axis_label, x_axis_label, y_axis_title, categories_array, operation_value, attributesTextArea, username, company_name) VALUES ('"+saveChart.get("tab_id")+"','"+saveChart.get("chartNameVal")+"','"+saveChart.get("element_name")+"','"+saveChart.get("chart_title")+"','"+saveChart.get("chart_title_in_arabic")+"','"+saveChart.get("chartName")+"', '"+saveChart.get("divID")+"', '"+saveChart.get("chartType")+"', '"+saveChart.get("chartOperation")+"', '"+saveChart.get("yAxisData")+"', '"+saveChart.get("yAxisLabel")+"', '"+saveChart.get("xAxisLabel")+"', '"+saveChart.get("y_axis_title")+"', '"+saveChart.get("categoriesArray")+"', '"+saveChart.get("operation_value")+"', '"+saveChart.get("attributesTextArea")+"','"+username+"', '"+columns.get(0)+"') ";
				System.out.println("sql23: "+sql);
				try {
					Statement stmt1 = conn.createStatement();
					stmt1.executeUpdate(sql);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				return 1;
			}
			else {
				return 0;
			}
			
			

		}
		
		@Override
		//	(String dbName, String selectAtt, String srcElement, String tgtElement, String srcORtgtAtt, String srcORtgtVal, String reltype)
			public List<String> listRel1(String dbName, String selectAtt, String srcElement, String tgtElement, String srcName, String tgtName, String srcORtgtAtt, String srcORtgtVal, String reltype) {
				
//				"+selectAtt+"				WHERE Source = "+srcElement+" AND Destination = "+tgtElement+" AND "+srcORtgtAtt+" = '"+srcORtgtVal+"' AND Relationship_Type = '"+reltype+"'"
				String sql ="SELECT "+selectAtt+" FROM "+dbName+".relationships WHERE Source = '"+srcElement+"' AND Destination = '"+tgtElement+"' AND Source_Attribute_Name = '"+srcName+"'  AND  Destination_Attribute_Name = '"+tgtName+"'  AND "+srcORtgtAtt+" = '"+srcORtgtVal+"' AND Relationship_Type = '"+reltype+"' "  ;
//				System.out.println("Query: "+sql);
				
//				
				List<String> columns = new ArrayList<String>();
				try {
					Statement stmt = conn.createStatement();
					ResultSet rs = stmt.executeQuery(sql);
					while (rs.next()) {
						String attVal = null;
						try 
						{
							attVal = rs.getString(selectAtt);
						} 
		
						catch (SQLException e) 
						{
							// TODO Auto-generated catch block
							attVal = "";
						}
						columns.add(attVal);
					}
				} catch (SQLException e) {
					e.printStackTrace();
				}
				return columns;				
			}

//		@Override
////		public List<ModelRelationships> listRelationship(String dbName, String tableName) {
//			// TODO Auto-generated method stub
//			return null;
//		}

		@Override
		public int editRow1(String dbName, String tableName, List<String> attributes, String id,
				List<String> formData) {
			// TODO Auto-generated method stub
			return 0;
		}

		@Override
		public List<String> ListForRel(String dbName, String selectAtt, String srcElement, String tgtElement,
				String srcORtgtAtt, String srcORtgtVal, String reltype) {
			// TODO Auto-generated method stub
			return null;
		}
	
@Override
	public List<String> getColumnGivenAttribute(String dbName, String elementName) {
		String sql = "Select Self_Generated_Attribute from " + dbName + ".attributes_information where Element_Name = '"
				+ elementName + "' AND (Attribute_Type = 'Primary' OR Attribute_Type = 'System')";
		try {
//
			List<String> columns = new ArrayList<String>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					String attVal = null;
					try {
						attVal = rs.getString("Self_Generated_Attribute");
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						attVal = "";
					}
					columns.add(attVal);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return columns;			
//			
//			RowMapper<String> rowMapper = new RowMapper<String>() {
//				@Override
//				public String mapRow(ResultSet rs, int rowNum) {
//					String attVal = null;
//					try {
//						attVal = rs.getString("Self_Generated_Attribute");
//					} catch (SQLException e) {
//						// TODO Auto-generated catch block
//						attVal = "";
//					}
////						System.out.println(attVal);
//					return new String(attVal);
//				}
//			};
//			return jdbcTemplate.query(sql, rowMapper);

		} catch (EmptyResultDataAccessException e) {
//				System.out.println("null");
			return null;
		}
	}

	@Override
	public int deletePool(String poolName) {
		String poolActiveUsers = "pool_"+poolName+"_active_users";
		String poolLicense = "pool_"+poolName+"_license";
		String poolUsers = "pool_"+poolName+"_users";
		
		String sql = "DROP TABLE EEATool."+poolActiveUsers;
		try {
			Statement stmt = conn.createStatement();
			stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		sql = "DROP TABLE EEATool."+poolLicense;
		try {
			Statement stmt = conn.createStatement();
			stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		sql = "DROP TABLE EEATool."+poolUsers;
		try {
			Statement stmt = conn.createStatement();
			stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		sql = "DELETE FROM EEATool.pools WHERE pool_name = '"+poolName+"'";
		try {
			Statement stmt = conn.createStatement();
			stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return 0;
	}

	@Override
	public List<pools> getPoolNameAndRoles(String repository_name) {
		ReloadableResourceBundleMessageSource messageSource=new ReloadableResourceBundleMessageSource();
		messageSource.setBasename("classpath:net/lt/eaze/resources/locale/messages");
		messageSource.setDefaultEncoding("UTF-8");
		messageSource.setUseCodeAsDefaultMessage(true);
		Locale locale = LocaleContextHolder.getLocale();		
		
		String sql = "SELECT pool_name,role_type,repository_name FROM EEATool.pools WHERE repository_name = '"+repository_name+"'";
		
		
		List<pools> getPoolNameAndRoles = new ArrayList<pools>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				
				String pool_name= rs.getString("pool_name");
				String role_type= rs.getString("role_type");
				String repository_name1= rs.getString("repository_name");
				if(role_type.equals("ROLE_USER"))
//					role_type = "architect";
					role_type = messageSource.getMessage("architect",null,locale);
				else if((role_type.equals("ROLE_ADMIN")))
//					role_type = "repository_admin";
					role_type = messageSource.getMessage("repository_admin",null,locale);
				else if((role_type.equals("ROLE_READER")))
//					role_type = "reader";
					role_type = messageSource.getMessage("reader",null,locale);
				else if((role_type.equals("ROLE_ORGANIZATION_PORTAL")))
//					role_type = "organizational_portal";
					role_type = messageSource.getMessage("organizational_portal",null,locale);
				pools p = new pools(pool_name, role_type, repository_name1);
				getPoolNameAndRoles.add(p);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return getPoolNameAndRoles;
	}

	@Override
	public List<String> getPools() {
		String sql = "SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME LIKE 'pool_%_license'";
		try {
			List<String> columns = new ArrayList<String>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					String attVal = null;
					try {
						attVal = rs.getString("TABLE_NAME");
					} catch (SQLException e) {
						attVal = "";
					}
					columns.add(attVal);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return columns;			
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
	}

	@Override
	public List<String> getPoolsFromPoolsTable(String company_name) {
		String sql = "SELECT pool_name FROM EEATool.pools where repository_name = '"+company_name+"'";
		List<String> getPoolsFromPoolsTable = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String rowVal = rs.getString("pool_name");
				getPoolsFromPoolsTable.add(rowVal);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return getPoolsFromPoolsTable;
	}
	
	@Override
	public List<String> getPoolLicense(String poolLicenseTable) {
		String sql = "SELECT license.license_key FROM EEATool.license INNER JOIN EEATool." + poolLicenseTable	+ " ON license.id = " + poolLicenseTable + ".license_id; ";
		
		List<String> getPoolLicense = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String row_val = rs.getString("license_key");
				getPoolLicense.add(row_val);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return getPoolLicense;
	}

	@Override
	public List<String> getPoolUsers(String poolUsersTable) {
		String sql = "SELECT users.username FROM EEATool.users INNER JOIN EEATool." + poolUsersTable + " ON users.id = "+ poolUsersTable + ".user_id; ";
		
		List<String> columns = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String row_val = rs.getString("username");
				columns.add(row_val);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return columns;
	}

	@Override
	public List<String> getPoolUserType(String poolName) {
		String sql = "SELECT role_type from EEATool.pools where pool_name = '" + poolName + "'";
		
		List<String> columns = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String row_val = rs.getString("role_type");
				columns.add(row_val);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return columns;
	}
	
	@Override
	public List<String> getPoolsFromRole(String poolRole) {
		String sql = "SELECT pool_name FROM EEATool.pools WHERE role_type = '"+poolRole+"'";
		
		List<String> columns = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String row_val = rs.getString("pool_name");
				columns.add(row_val);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return columns;
	}
	
	@Override
	public List<String> getConcurrentLicensesFromRole(String userRole) {
		String sql = "SELECT license_key FROM EEATool.license WHERE user_role = '"+userRole+"' AND license_type = 'concurrent';";
		
		List<String> columns = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String row_val = rs.getString("license_key");
				columns.add(row_val);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return columns;
	}
	
	@Override
	public List<String> getUsersFromCompanyName(String company_name) {
//		String sql = "SELECT users.username FROM test.users INNER JOIN test.user_roles ON users.username = user_roles.username WHERE users.company_name='"+company_name+"'";
		String sql = "SELECT username FROM EEATool.users WHERE users.company_name='"+company_name+"' AND enabled = 1 ";
		
		List<String> columns = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String row_val = rs.getString("username");
				columns.add(row_val);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return columns;
	}

	@Override
	public List<String> check_poolname_when_registration(String poolname) {
		String sql = "SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = '" + poolname + "'";
		
		
		List<String> columns = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String row_val = rs.getString("TABLE_NAME");
				columns.add(row_val);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return columns;
	}

	@Override
	public int createPoolTables(String poolActiveUsers, String poolLicense, String poolUsers, String poolName,String roleType,String username,String company_name) {
		String activeUsersTable = "CREATE TABLE EEATool." + poolActiveUsers
				+ " (id INT NOT NULL AUTO_INCREMENT, license_id INT NOT NULL, user_id INT NOT NULL, FOREIGN KEY (license_id) references EEATool.license(id), FOREIGN KEY (user_id) references EEATool.users(ID),PRIMARY KEY (id));";
		try {
			Statement stmt = conn.createStatement();
			stmt.executeUpdate(activeUsersTable);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String poolLicenseTable = "CREATE TABLE EEATool." + poolLicense
				+ " (id INT NOT NULL AUTO_INCREMENT, license_id INT NOT NULL, FOREIGN KEY (license_id) references EEATool.license(id),PRIMARY KEY (id));";
		try {
			Statement stmt = conn.createStatement();
			stmt.executeUpdate(poolLicenseTable);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String poolUsersTable = "CREATE TABLE EEATool." + poolUsers
				+ " (id INT NOT NULL AUTO_INCREMENT, user_id INT NOT NULL, FOREIGN KEY (user_id) references EEATool.users(id),PRIMARY KEY (id));";
		try {
			Statement stmt = conn.createStatement();
			stmt.executeUpdate(poolUsersTable);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		String poolsTableEntry = "INSERT INTO EEATool.pools(pool_name, role_type,repository_name) VALUES ('"+poolName+"','"+roleType+"','"+company_name+"')";
		try {
			Statement stmt = conn.createStatement();
			return stmt.executeUpdate(poolsTableEntry);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
	}
	
	@Override
	public int updatePoolDetails(String poolLicenseTable, String poolUsersTable,List<String> poolLicenses,List<String> poolUsers) {
		
		try {
			Statement stmt = conn.createStatement();
			stmt.executeUpdate("TRUNCATE TABLE EEATool."+poolLicenseTable);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			Statement stmt = conn.createStatement();
			stmt.executeUpdate("TRUNCATE TABLE EEATool."+poolUsersTable);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String licenseValues = "";
		for(String p:poolLicenses) {
			licenseValues += "((SELECT id from EEATool.license WHERE license_key='"+p+"') ),";
		}
		licenseValues = licenseValues.substring(0, licenseValues.length() - 1);
		String licenseUpdateQuery = "INSERT INTO EEATool."+poolLicenseTable+" (license_id ) VALUES "+licenseValues;
		try {
			Statement stmt = conn.createStatement();
			stmt.executeUpdate(licenseUpdateQuery);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String userValues = "";
		for(String u:poolUsers) {
			userValues += "((SELECT id from EEATool.users WHERE username='"+u+"') ),";
		}
		userValues = userValues.substring(0, userValues.length() - 1);
		String usersInsertQuery = "INSERT INTO EEATool."+poolUsersTable+" (user_id ) VALUES "+userValues;
		
		try {
			Statement stmt = conn.createStatement();
			stmt.executeUpdate(usersInsertQuery);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

		return 0;
	}
	
	@Override
	public List<String> checkIfUserExistInPool(String poolUsersTable, String userId) {
		String sql = "SELECT id FROM EEATool."+poolUsersTable+" WHERE user_id = '" + userId + "'";
		
		List<String> checkIfUserExistInPool = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String attrName = rs.getString("id");
				checkIfUserExistInPool.add(attrName);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return checkIfUserExistInPool;
	}
	
	@Override
	public List<namedLicenses> getAllocatedLicenses(String repository_name) {
		String sql = "SELECT named_licence_users.id,license.license_key, license.user_role, users.username from EEATool.named_licence_users INNER JOIN EEATool.license ON named_licence_users.license_id = license.id INNER JOIN EEATool.users ON named_licence_users.user_id = users.id WHERE repository_name = '"+repository_name+"'";
		
		List<namedLicenses> getAllocatedLicenses = new ArrayList<namedLicenses>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				
				String id= rs.getString("id");
				String license_key= rs.getString("license_key");
				String username= rs.getString("username");
				String role_type= rs.getString("user_role");
				
				if(role_type.equals("ROLE_USER"))
					role_type = "Architect";
				else if((role_type.equals("ROLE_ADMIN")))
					role_type = "Repository Admin";
				else if((role_type.equals("ROLE_READER")))
					role_type = "Reader";
				namedLicenses nl = new namedLicenses(id,license_key, role_type, username);
				getAllocatedLicenses.add(nl);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return getAllocatedLicenses;
	}
	
	@Override
	public int deAllocateNamedLicense(String row_id) {
		String sql = "DELETE FROM EEATool.named_licence_users WHERE id="+row_id;
		//System.out.println(sql+"\n");
		try {
			Statement stmt = conn.createStatement();
			return stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
	}
	
	@Override
	public int allocateNamedLicense(String repository_name,String license_id,String user_id) {
		String sql = "INSERT INTO EEATool.named_licence_users (id, repository_name, license_id, user_id) VALUES (NULL, '"+repository_name+"', (SELECT id FROM EEATool.license WHERE license_key = '"+license_id+"'), (SELECT id FROM EEATool.users WHERE username = '"+user_id+"'))";
		//System.out.println(sql+"\n");
		try {
			Statement stmt = conn.createStatement();
			return stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
	}
	
	@Override
	public List<userManagement> getUsers_adminModule(String repository_name) {
		
		
		String loggedInUser = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			loggedInUser = userDetail.getUsername();
		}
		
		String sql = "SELECT user_fullname,username,email,enabled FROM EEATool.users WHERE company_name = '"+repository_name+"' AND username != '"+loggedInUser+"' ";
		
		List<userManagement> getUsers_adminModule = new ArrayList<userManagement>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				
				String user_fullname= rs.getString("user_fullname");
				String username= rs.getString("username");
				String email= rs.getString("email");
				int enabled = rs.getInt("enabled");
				userManagement um = new userManagement(user_fullname, username, email,enabled);
				getUsers_adminModule.add(um);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return getUsers_adminModule;
	}
	
	@Override
	public int updateUserStatus(String username,String isEnabled) {
		String sql = "UPDATE EEATool.users SET enabled='"+isEnabled+"' WHERE username = '"+username+"'";
		try {
			Statement stmt = conn.createStatement();
			return stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
	}
	
	@Override
	public int addUser(String username,String email,String company_name,String metamodel,String user_type,String hashedPassword,String password,String fullName) {
		String sql = "INSERT INTO EEATool.users(username, email, company_name, metamodel_name, user_type, password, enabled, user_fullname) VALUES ('"+username+"','"+email+"','"+company_name+"','"+metamodel+"','"+user_type+"','"+hashedPassword+"','"+password+"','"+fullName+"')";
		//System.out.println(sql+"\n");
		try {
			Statement stmt = conn.createStatement();
			stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		sql =  "INSERT INTO EEATool.user_roles(username, role) VALUES ('"+username+"','ROLE_USER')";
		try {
			Statement stmt = conn.createStatement();
			stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}
	
	@Override
	public int updateUserPassword(String username,String password) {
		String sql = "UPDATE EEATool.users SET password = '"+password+"' WHERE username = '"+username+"'";
		try {
			Statement stmt = conn.createStatement();
			stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}
	
	@Override
	public int saveMatrixIntoDB(String matrix_name,String matrix_element1,String matrix_element2,String matrix_relation,String parentID,String username) {
		String getCompanyName = "SELECT company_name FROM EEATool.users WHERE username= '"+username+"' ";
//		System.out.println("getCompanyName"+getCompanyName);
		RowMapper<String> rowMapper = new RowMapper<String>() {
			@Override
			public String mapRow(ResultSet rs, int rowNum){
				String attVal = "";
				try {
					attVal = rs.getString("company_name");
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					attVal = "";
				}
				return new String(attVal);
			}
		};
		
		String companyName = jdbcTemplate.query(getCompanyName, rowMapper).get(0);
		
		String sql = "INSERT INTO graphs.matrix_files(matrix_name, matrix_element1, matrix_element2, matrix_relation, parentID,username,company_name) VALUES ('"+matrix_name+"','"+matrix_element1+"','"+matrix_element2+"','"+matrix_relation+"','"+parentID+"','"+username+"','"+companyName+"')";
		try {
			Statement stmt = conn.createStatement();
			stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}
	
	@Override
	public List<namedLicenses> getAvailableNamedLicenses(String repository_name) {
//		String sql = "SELECT license.license_key, license.user_role FROM test.named_licence_users INNER JOIN test.license ON named_licence_users.license_id != license.id WHERE license.license_type = 'named' AND repository_name = '"+repository_name+"'";
		String sql = "SELECT license_key, user_role FROM EEATool.license WHERE license_type = 'named' AND id NOT IN (SELECT license_id FROM EEATool.named_licence_users WHERE repository_name = '"+repository_name+"')";
		
		List<namedLicenses> getAvailableNamedLicenses = new ArrayList<namedLicenses>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				
				String license_key= rs.getString("license_key");
				String role_type= rs.getString("user_role");
				
				if(role_type.equals("ROLE_USER"))
					role_type = "Architect";
				else if((role_type.equals("ROLE_ADMIN")))
					role_type = "Repository Admin";
				else if((role_type.equals("ROLE_READER")))
					role_type = "Reader";
				namedLicenses nl = new namedLicenses(license_key, role_type);
				getAvailableNamedLicenses.add(nl);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return getAvailableNamedLicenses;
	}
	
	@Override
	public List<String> checkNamedLicenseAndRole(String userId) {

		String getElementNames = "Select license.user_role from EEATool.license INNER JOIN EEATool.named_licence_users ON license.id = named_licence_users.license_id WHERE named_licence_users.user_id = '"+userId+"'";
		List<String> columns = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(getElementNames);
			while (rs.next()) {
				String Name = rs.getString("user_role");
				columns.add(Name);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return columns;		
	}
	
	@Override
	public List<String> getPoolRolesFromPoolNames(String poolNames) {
		String getPoolRolesFromPoolNames = "SELECT role_type FROM EEATool.pools WHERE pool_name in " + poolNames + " ";
		System.out.println(getPoolRolesFromPoolNames);
		
		List<String> getPoolRolesFromPoolNames_list = new ArrayList<String>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(getPoolRolesFromPoolNames);
			while (rs.next()) {
				String row_val = rs.getString("role_type");
				getPoolRolesFromPoolNames_list.add(row_val);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return getPoolRolesFromPoolNames_list;
	}
		
		
		@Override
		public int createActiveUserTable(String username, String company_name) {
			String sql = "CREATE TABLE IF NOT EXISTS EEATool.active_users (id INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY, username VARCHAR(255), company_name VARCHAR(255))";
			//System.out.println(sql+"\n");
			try {
				Statement stmt = conn.createStatement();
				return stmt.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return 0;
			}
		}
		
		@Override
		public List<timeLineGraph> getTimeLineGraph(String dbName, String tableName, String ElementVal, String StartActDate, String EndActDate, String legendData) {
			String sql = "SELECT id, ATT_01 , " +StartActDate+ " , " +EndActDate+ " , " +legendData+ " FROM "+dbName+"."+ElementVal;
			List<timeLineGraph> fullnames = new ArrayList<timeLineGraph>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					
					int id= rs.getInt("id");
					String ElementName= rs.getString("ATT_01");
					String StartDate= rs.getString(StartActDate); 
					String EndDate= rs.getString(EndActDate);
					String Legend= rs.getString(legendData);
					timeLineGraph rm = new timeLineGraph(id, ElementName, StartDate, EndDate, Legend);
					fullnames.add(rm);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return fullnames;			
		}

		@Override
		public List<String> GanttElement(String dbName, String tableName) {
			String sql = "SELECT DISTINCT Element_Name FROM "+dbName+"."+tableName;
			System.out.println("SQL: "+sql);
			List<String> columns = new ArrayList<String>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					String ElementName= rs.getString("Element_Name");
					columns.add(ElementName);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return columns;			
		}
		@Override
		public List<userprofile> getuserprofiledetails(String username) {
			String sql ="Select * from EEATool.users where username = '"+username+"'";
			
			List<userprofile> getuserprofiledetails = new ArrayList<userprofile>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					String username1= rs.getString("username");
					String userFullName= rs.getString("user_fullname");
					String emailAddress= rs.getString("email");
					String cellNumber= rs.getString("cell_no");
					String phoneNumber= rs.getString("phone_no");
					String extension= rs.getString("extension");
					String organizationUnitName= rs.getString("company_name");
					
					userprofile rm = new userprofile(username1,userFullName,emailAddress,cellNumber,phoneNumber,extension,organizationUnitName);
					getuserprofiledetails.add(rm);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return getuserprofiledetails;
		}
		
		@Override
		public int updateuserprofiledetails(String username,String emailAddress,String cellNumber,String phoneNumber,String extension) {
			
			String sql = "UPDATE EEATool.users SET email = '"+emailAddress+"', cell_no = '"+cellNumber+"', phone_no = '"+phoneNumber+"', extension = '"+extension+"' WHERE username = '"+username+"'";
			try {
				Statement stmt = conn.createStatement();
				return stmt.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return 0;
			}
		}

		@Override
		public List<String> GanttStartDate(String dbName, String tableName) {
			String sql = "SELECT DISTINCT Actual_Attribute FROM "+dbName+".attributes_information where Attribute_Format = 'Date' AND Element_Name ='"+tableName+"'";
			System.out.println("Start Date SQL: "+sql);
//			
			List<String> columns = new ArrayList<String>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					String Actual_Attribute= rs.getString("Actual_Attribute");
					columns.add(Actual_Attribute);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return columns;			

		}

		@Override
		public List<String> GanttLegend(String dbName, String tableName) {
			String sql = "SELECT DISTINCT Actual_Attribute FROM "+dbName+".attributes_information where Attribute_Format = 'List' AND Element_Name = '"+tableName+"'";
			System.out.println("SQL: "+sql);
//			
			List<String> columns = new ArrayList<String>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					String Actual_Attribute= rs.getString("Actual_Attribute");
					columns.add(Actual_Attribute);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return columns;			
		}

		@Override
		public List<String> SGAGanttStartDate(String dbName, String tableName, String ElementVal, String StartDateVal) {
			String sql = "SELECT Self_Generated_Attribute FROM "+dbName+"."+tableName+ " where Actual_Attribute = '"+StartDateVal+"' AND Attribute_Format = 'Date' AND Element_Name = '"+ElementVal+"'";
			System.out.println("SGAGanttStartDate-SQL: "+sql);
//
			List<String> columns = new ArrayList<String>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					String Self_Generated_Attribute= rs.getString("Self_Generated_Attribute");
					columns.add(Self_Generated_Attribute);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return columns;			
}
		@Override
		public List<String> SGAGanttEndDate(String dbName, String tableName, String ElementVal,String EndDateVal) {
			String sql = "SELECT Self_Generated_Attribute FROM "+dbName+"."+tableName+ " where Actual_Attribute = '"+EndDateVal+"' AND Attribute_Format = 'Date' AND Element_Name = '"+ElementVal+"'";
			System.out.println("SGAGanttEndDate-SQL: "+sql);
//
			List<String> columns = new ArrayList<String>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					String Self_Generated_Attribute= rs.getString("Self_Generated_Attribute");
					columns.add(Self_Generated_Attribute);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return columns;			
		}

		@Override
		public List<String> SGAGanttLegend(String dbName, String tableName, String ElementVal, String LegendVal) {
			String sql = "SELECT Self_Generated_Attribute FROM "+dbName+"."+tableName+ " where Actual_Attribute = '"+LegendVal+"' AND Attribute_Format = 'List' AND Element_Name = '"+ElementVal+"'";
			System.out.println("SGAGanttLegend-SQL: "+sql);
//			
			List<String> columns = new ArrayList<String>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					String Self_Generated_Attribute= rs.getString("Self_Generated_Attribute");
					columns.add(Self_Generated_Attribute);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return columns;			

		}

		@Override
		public List<String> getUserOnlineStatus(String username) {
			String sql = "SELECT status from EEATool.users WHERE username = '"+username+"'";
//			
			List<String> columns = new ArrayList<String>();
			try {
				if(conn==null) {
					getConnection();
				}
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					String satus= rs.getString("status");
					columns.add(satus);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			if(!(columns.size()>0)) {
				try {
					getConnection();
					Statement stmt = conn.createStatement();
					ResultSet rs = stmt.executeQuery(sql);
					while (rs.next()) {
						String row_val = rs.getString("status");
						columns.add(row_val);
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
			return columns;
		}
		
		@Override
		public int updateUserOnlineStatus(String username,int status) {
			String sql = "UPDATE EEATool.users SET status = '"+status+"' Where username = '"+username+"'";
			try {
				Statement stmt = conn.createStatement();
				return stmt.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return 0;
			}
		}

		@Override
		public List<ArrayList<String>> attributeList(String dbName, String attTable, String tableName) {
			String sql = "SELECT Actual_Attribute, Self_Generated_Attribute FROM "+dbName+"."+attTable+" WHERE Element_Name = '"+tableName+"' AND Attribute_Type IN ('Primary','System')";
			System.out.println("sql-att: "+sql);
			return null;
		}

		@Override
		public List<attributesInformation> attList(String dbName, String attTable, String tableName) {
			String sql = "SELECT * FROM "+dbName+"."+attTable+" WHERE Element_Name = '"+tableName+"' AND Attribute_Type IN ('Primary','System')";
			System.out.println("sql-att: "+sql);
			
//			
			List<attributesInformation> fullnames = new ArrayList<attributesInformation>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					
					String actualAttribute = rs.getString("Actual_Attribute");
					String selfGeneratedAtt = rs.getString("Self_Generated_Attribute");
					String elementName= rs.getString("Element_Name");
					attributesInformation rm = new attributesInformation(elementName, actualAttribute, selfGeneratedAtt);
					fullnames.add(rm);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return fullnames;			
		}

		@Override
		public List<attributesInformation> SGList(String dbName, String attTable, String tableName) {
			String sql = "SELECT Actual_Attribute, Self_Generated_Attribute FROM "+dbName+"."+attTable+" WHERE Element_Name = '"+tableName+"' AND Attribute_Type IN ('Primary','System')";
			System.out.println("sql-att: "+sql);
			
//			
			List<attributesInformation> fullnames = new ArrayList<attributesInformation>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					
					String actualAttribute = rs.getString("Actual_Attribute");
					String selfGeneratedAtt = rs.getString("Self_Generated_Attribute");
					String elementName= rs.getString("Element_Name");
					attributesInformation rm = new attributesInformation(elementName, actualAttribute, selfGeneratedAtt);
					fullnames.add(rm);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return fullnames;			
		}

		@Override
		public List<String> shoaibList(String dbName, List<String> selfGen, String tableName) {
			List<String> value = new ArrayList<String>();
			String imple = selfGen.toString();
			imple = imple.replace("[", " ").replace("]", " ");
//			System.out.println("type1: "+imple.getClass().getSimpleName());
//			System.out.println("Imple: "+selfGen);
			String sql1 = "SELECT "+imple+" From "+dbName+"."+tableName;
//			System.out.println("Your logic: "+sql1);
			System.out.println("Implementation");
			RowMapper<String> rowMapper = new RowMapper<String>() {
			
				@Override
				
				public String mapRow(ResultSet rs, int rowNum) throws SQLException {
					String Self_Generated_Attribute = "";
					value.clear();
					for (int i=0; i<selfGen.size(); i++)
					{
//						System.out.println(i +" "+ selfGen.get(i));
//						System.out.println("  "+rowNum+ "  "+selfGen.get(i));
//						Self_Generated_Attribute= rs.getString(selfGen.set(rowNum, str));
						Self_Generated_Attribute= rs.getString(selfGen.get(i));
						value.add(Self_Generated_Attribute);
//						System.out.println("rowmapper: "+Self_Generated_Attribute);
						
					}
//					System.out.println("final"+value);
//					value.clear();
					
					String value1 = value.toString();
//					value1 = value1.replace("[", " ").replace("]", " ");
//					}
//					System.out.println("retVal: "+value1);
//					System.out.println("type: "+value1.getClass().getSimpleName());
					return new String(value1);
				}
				
			};
			
			//System.out.println(sql+"\n");
			return jdbcTemplate.query(sql1, rowMapper);
		}

		@Override
		public int addRowsFromExcel1(fromExcel1 r, fromExcel1 q) {// TODO Auto-generated method stub
//			System.out.println("r data: "+r.getAllRowValues());
//			System.out.println("q data: "+q.getAllRowValues());
			String columns ="";
			String rows="";
			String sql = "";
//			System.out.println("Implementation");
			List<String> value = new ArrayList<String>();
			
//			System.out.println("22211: "+r.getAllRowValues());
//			System.out.println("22211Size: "+r.getAllRowValues().size());
			
			int loopLastIteration = r.getAllRowValues().size()-1;
			
			int index = 0;
//			for(List<String> a: r.getAllRowValues()){
			for (int i=0; i<r.getAllRowValues().size(); i++) {
				
				List<String> a = r.getAllRowValues().get(i);
				
				String x = a.toString();
				value.add(x);
				
				a.remove(a.size()-1);
				
				List<String> newValue = new ArrayList<String>(a);
				if(newValue.size() != 0) {
					String getFirstObjectName = newValue.get(0);
					
					StringBuffer removeSB= new StringBuffer(getFirstObjectName);
					
					removeSB.deleteCharAt(removeSB.length()-1);
					
					getFirstObjectName = removeSB.toString().replaceAll("'", "''");
					
					String getIdForCheckWhetherItExists = "SELECT id FROM "+r.getDbName()+"."+r.getTableName()+" WHERE "+r.getColumnNames().get(0)+" = '"+getFirstObjectName+"' ";
					
					RowMapper<String> rowMapper1 = new RowMapper<String>() {

						@Override
						public String mapRow(ResultSet rs, int rowNum) throws SQLException {
							String id = rs.getString("id");
							return new String(id);
						}
					};
//
					List<String> checkIfExistsResult = jdbcTemplate.query(getIdForCheckWhetherItExists, rowMapper1);
//					System.out.println("checkIfExistsResult_size: "+checkIfExistsResult.size());
					
					
					for(int k=0; k<newValue.size(); k++) {
						StringBuffer sb= new StringBuffer(newValue.get(k));  
						sb.deleteCharAt(sb.length()-1);
						newValue.set(k, sb.toString());
					}
					
					String tempV = "";
					for(int j=0; j<newValue.size(); j++){
						
//						if(newValue.get(j).toString().equals("") ) {
//							tempV+= "' '";
//						}else {
							tempV+= "'"+newValue.get(j).replace("\n", "").replace("\r", "").replaceAll("'", "''")+"'";
//						}
						if(j!=newValue.size()-1) {
							tempV+= ", ";
						}
					}
					
					
					if (checkIfExistsResult.size() == 0) {
						rows+= "("+tempV+"),";

					}else {
//						String delete = "DELETE FROM "+r.getDbName()+"."+r.getTableName()+" WHERE id='"+checkIfExistsResult.get(0)+"' ";
//						jdbcTemplate.update(delete);
						rows+="("+tempV+"),";
					}
					
					
					

				}

				if((rows.length() >300000) || (i == loopLastIteration)) {
//					System.out.println(i+"__:"+rows);


					String rows1 = rows.substring(0, rows.length() - 1);
					
					if(r.getFirstRowIsColumnName() != null) {
						for(String a1: r.getColumnNames()){
							columns+=a1+",";
						}
						String columns1 = columns.substring(0, columns.length() - 1);
						
						sql="INSERT  INTO "+r.getDbName()+"."+r.getTableName()+" ("+columns1+") VALUES "+rows1+"";
						System.out.println("sql1: "+sql);
						
						try {
							Statement stmt = conn.createStatement();
							stmt.executeUpdate(sql);
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					}else {
						if(r.getTableName().equals("attributes_information")) {
							sql="INSERT  INTO "+r.getDbName()+"."+r.getTableName()+" VALUES (null,"+rows1+")";
							
						}else {
							sql="INSERT  INTO "+r.getDbName()+"."+r.getTableName()+" VALUES (null,"+rows1+",'1')";
						}
						System.out.println("sql2: "+sql);
						
						try {
							Statement stmt = conn.createStatement();
							stmt.executeUpdate(sql);
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					}
					columns = "";
					rows ="";
				
				}
				
				
			}

	
			return 0;}
		@Override
		public String roadMap_val(String database, String tableName, String roadMap_name, String elementVal,
				String startActDate, String endActDate, String legendData,String companyName,int parentID) {
			
			String sql = "CREATE TABLE IF NOT EXISTS "+database+"."+tableName+"(id int NOT NULL AUTO_INCREMENT, RoadMap_Name varchar(255) NULL, Element_Name VARCHAR(255) NULL, Start_Date VARCHAR(255) NULL,  "
					+ "End_Date VARCHAR(255) NULL, Legend VARCHAR(255) NULL, parentID int(11),company_name varchar(255), status	text,	Primary Key(id))";
			
			String sql1 = "INSERT INTO "+database+"."+tableName+" (RoadMap_Name, Element_Name, Start_Date, End_Date, Legend, company_name, parentID, status) "
					+ "VALUES ('"+roadMap_name+"', '"+elementVal+"', '"+startActDate+"', '"+endActDate+"', '"+legendData+"', '"+companyName+"',  '"+parentID+"', 1);";
			String sql2 = "SELECT id FROM "+database+"."+tableName+" WHERE RoadMap_Name = '"+roadMap_name+"' && Legend = '"+legendData+"'";

			try {
				Statement stmt = conn.createStatement();
				stmt.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				Statement stmt = conn.createStatement();
				stmt.executeUpdate(sql1);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			RowMapper<String> rowMapper = new RowMapper<String>() {
				@Override
				public String mapRow(ResultSet rs, int rowNum) throws SQLException {
					String id = rs.getString("id");
					return new String(id);
				}
			};
			String id = (String) jdbcTemplate.queryForObject(sql2, rowMapper);
			return new String(id);
			
//			return jdbcTemplate.update(sql);
		}

		@Override
		public List<timeLineGraph> getRoadMap(String database, String tableName) {
			// TODO Auto-generated method stub
			String sql = "SELECT id, RoadMap_Name, company_name, parentID FROM "+database+"."+tableName+" where status = 1;";
			
			List<timeLineGraph> getRoadMap = new ArrayList<timeLineGraph>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					
					int id = rs.getInt("id");
					String roadmap= rs.getString("RoadMap_Name");
					String companyName = rs.getString("company_name");
					int parentID = rs.getInt("parentID");
					companyName = companyName.replaceAll("---", " ");
					
					timeLineGraph rm = new timeLineGraph(id, roadmap, companyName, parentID);
					getRoadMap.add(rm);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return getRoadMap;
		}

		@Override
		public List<timeLineGraph> getroadMapGraph(String database, String tableName, int id, String roadMapName) {
			String sql = "SELECT * FROM "+database+"."+tableName+" WHERE id = "+id+" AND RoadMap_Name = '"+roadMapName+"';";
			System.out.println("select roadmap : "+sql);
//			
			List<timeLineGraph> fullnames = new ArrayList<timeLineGraph>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					
					int id1 = rs.getInt("id");
					String RoadMap_Name= rs.getString("RoadMap_Name");
					String ElementName= rs.getString("Element_Name");
					String StartDate= rs.getString("Start_Date");
					String EndDate= rs.getString("End_Date");
					String Legend= rs.getString("Legend");
					timeLineGraph rm = new timeLineGraph(id1, RoadMap_Name, ElementName, StartDate, EndDate, Legend);
					fullnames.add(rm);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return fullnames;			
		}
		
		@Override
		public List<attributesInformation> getColAttribute(String dbName, String tableName) {
			// TODO Auto-generated method stub
			String sql = "SELECT Self_Generated_Attribute";
			return null;
		}

		@Override
		public List<attributesInformation> getActualAtt(String dbName, String tableName) {
//			String sql = "SELECT Element_Name, Self_Generated_Attribute, Actual_Attribute, Attribute_Format FROM "+dbName+".attributes_information WHERE Element_Name = '"+tableName+"' AND (Attribute_Format = 'Date' \r\n"
//					+ "OR Attribute_Format = 'Time')";
			String sql = "SELECT Element_Name, Self_Generated_Attribute, Actual_Attribute, Attribute_Format FROM "+dbName+".attributes_information WHERE Element_Name = '"+tableName+"'";
				System.out.println("att query: "+sql);
//				
				List<attributesInformation> fullnames = new ArrayList<attributesInformation>();
				try {
					Statement stmt = conn.createStatement();
					ResultSet rs = stmt.executeQuery(sql);
					while (rs.next()) {
						
						String elementName= rs.getString("Element_Name");
						String actualAttribute= rs.getString("Actual_Attribute");
						String selfGeneratedAttribute= rs.getString("Self_Generated_Attribute");
						String attributeFormat= rs.getString("Attribute_Format");
						attributesInformation rm = new attributesInformation(elementName, actualAttribute, selfGeneratedAttribute, attributeFormat);
						fullnames.add(rm);
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return fullnames;				
		}

		@Override
		public List<ArrayList<String>> getCompleteTableColumnsBySGVArray(String dbName, String tableName, List<String> ElementSGV) {
			// TODO Auto-generated method 
			
			String ElementSGVal = ElementSGV.toString();
			ElementSGVal = ElementSGVal.replace("[", "").replace("]", "");

			String sql = "SELECT "+ElementSGVal+" FROM "+dbName+"."+tableName+" WHERE status = 1 ";
			System.out.println(sql);

			RowMapper<ArrayList<String>> rowMapper = new RowMapper<ArrayList<String>>() {
			
				@Override
				public ArrayList<String> mapRow(ResultSet rs, int rowNum) throws SQLException {
					// TODO Auto-generated method stub
					List<String> data = new ArrayList<String>();
					
					for (String a: ElementSGV) {
						a = rs.getString(a);
						data.add(a);
					}

					return new ArrayList<String>(data);
				}
			};
			return jdbcTemplate.query(sql, rowMapper);
		}

		
		@Override
		public List<ArrayList<String>> getCompleteTableColumnsBySGVArrayForMyPage(String dbName, String tableName, List<String> ElementSGV, String username) {
			// TODO Auto-generated method 
			
			String ElementSGVal = ElementSGV.toString();
			ElementSGVal = ElementSGVal.replace("[", "").replace("]", "");
			
			String sql = "";
			
			if(username.equals("allUsers")) {
				sql = "SELECT "+ElementSGVal+" FROM "+dbName+"."+tableName+" WHERE status = 1 ";
			}else {
				sql = "SELECT "+ElementSGVal+" FROM "+dbName+"."+tableName+" WHERE status = 1 AND owner_of_the_object = '"+username+"'";
			}

			
			RowMapper<ArrayList<String>> rowMapper = new RowMapper<ArrayList<String>>() {
				@Override
				public ArrayList<String> mapRow(ResultSet rs, int rowNum) throws SQLException {
					// TODO Auto-generated method stub
					List<String> data = new ArrayList<String>();
					for (String a: ElementSGV) {
						a = rs.getString(a);
						data.add(a);
					}
					return new ArrayList<String>(data);
				}
			};
			return jdbcTemplate.query(sql, rowMapper);
		}

		
		@Override
		public List<String> getCompleteNamesColumnBySGVValue(String dbName, String tableName, String ElementSGV) {
			// TODO Auto-generated method 

			String sql = "SELECT "+ElementSGV+" FROM "+dbName+"."+tableName;
			
			List<String> columns = new ArrayList<String>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					if(!rs.getString(ElementSGV).equals(null)) {
						String elementName= rs.getString(ElementSGV).toString().trim();
						columns.add(elementName);
					}else {
						String elementName= rs.getString(ElementSGV);
						columns.add(elementName);
					}				
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return columns;
		}


		@Override
		public List<attributesInformation> getAllAttVal(String dbName, String elementName) {
			// TODO Auto-generated method stub
			String sql = "Select DISTINCT * from "+dbName+".attributes_information where Element_Name = '"+elementName+"' AND "
					+ " (Attribute_Type = 'Primary' OR Attribute_Type = 'System')"
					+ "ORDER BY id ASC ";
			System.out.println("att_sql_ELEMENT: "+sql);
			
//			
			List<attributesInformation> fullnames = new ArrayList<attributesInformation>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					
					String elementName1= rs.getString("Element_Name");
					String actualAttribute= rs.getString("Actual_Attribute");
					String selfGeneratedAttribute= rs.getString("Self_Generated_Attribute");
					attributesInformation rm = new attributesInformation(elementName1, actualAttribute, selfGeneratedAttribute);
					fullnames.add(rm);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return fullnames;			
		}
		
		@Override
		public int updateTheme(String username, String theme) {
			String sql = "UPDATE EEATool.users SET theme='"+theme+"' WHERE username = '"+username+"'";
			//System.out.println(sql+"\n");
			try {
				Statement stmt = conn.createStatement();
				return stmt.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return 0;
			}
		}
		
		@Override
		public List<String> getTheme(String username) {
			// TODO Auto-generated method stub
			String sql = "SELECT theme FROM EEATool.users Where username = '"+username+"';";
//			
			List<String> columns = new ArrayList<String>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					String theme= rs.getString("theme");
					columns.add(theme);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return columns;			
		}
		

		@Override
		public List<String> getLegendValues(String database, String tableName, String elementVal, String legendData) {
			// TODO Auto-generated method stub
			String sql = "SELECT Allowable_Values from "+database+"."+tableName+" where Element_Name = '"+elementVal+"' AND Actual_Attribute = '"+legendData+"'";
			System.out.println("sql: legend: "+sql);
//			
			List<String> columns = new ArrayList<String>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					String allowable_val = rs.getString("Allowable_Values");
					columns.add(allowable_val);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return columns;
		}

		@Override
		public List<String> getListLegendValues(String database, String tableName, String elementVal,
				String legendData) {
			// TODO Auto-generated method stub
						String sql = "SELECT Allowable_Values from "+database+"."+tableName+" where Element_Name = '"+elementVal+"' AND Self_Generated_Attribute = '"+legendData+"'";
						System.out.println("sql: list legend: "+sql);
//						
						List<String> columns = new ArrayList<String>();
						try {
							Statement stmt = conn.createStatement();
							ResultSet rs = stmt.executeQuery(sql);
							while (rs.next()) {
								String allowable_val = rs.getString("Allowable_Values");
								columns.add(allowable_val);
							}
						} catch (SQLException e) {
							e.printStackTrace();
						}
						return columns;						
		}

		@Override
		public List<organizationalPortal> getTabsFromDB(String username, String company_name) {

			String sql = "SELECT * FROM graphs.organizational_tabs Where company_name = '"+company_name+"'";
//			
			List<organizationalPortal> fullnames = new ArrayList<organizationalPortal>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					
					String tab_id= rs.getString("tab_id");
					String tab_name= rs.getString("tab_name");
					String username1= rs.getString("username");
					String company_name1= rs.getString("company_name");
					organizationalPortal rm = new organizationalPortal(tab_id,tab_name,username1,company_name1);
					fullnames.add(rm);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return fullnames;			
//			
//			RowMapper<organizationalPortal> rowMapper1 = new RowMapper<organizationalPortal>() {
//				@Override
//				public organizationalPortal mapRow(ResultSet rs, int rowNum) throws SQLException {
//					String tab_id= rs.getString("tab_id");
//					String tab_name= rs.getString("tab_name");
//					String username= rs.getString("username");
//					String company_name= rs.getString("company_name");
//					return new organizationalPortal(tab_id,tab_name,username,company_name);
//				}
//			};
//			return jdbcTemplate.query(sql, rowMapper1);
		}
		
		@Override
		public int deleteTabsAndRecordsFromDatabase(String username,String panelId, String company_name,String userRoleStr) {
			
			// TODO Auto-generated method stub
//			String checkAdmin = "SELECT role FROM EEATool.user_roles WHERE username= '"+username+"' ";	
////			
//			List<String> columns = new ArrayList<String>();
//			try {
//				Statement stmt = conn.createStatement();
//				ResultSet rs = stmt.executeQuery(checkAdmin);
//				while (rs.next()) {
//					String attVal = "";
//					try {
//						attVal = rs.getString("role");
//					} catch (SQLException e) {
//						// TODO Auto-generated catch block
//						attVal = "";
//					}
//					columns.add(attVal);
//				}
//			} catch (SQLException e) {
//				e.printStackTrace();
//			}
			
			if(userRoleStr.equals("ROLE_ADMIN")) {	
//			String sql = "DELETE FROM graphs.organizational_tabs WHERE tab_id='"+panelId+"' AND username = '"+username+"' AND company_name = '"+company_name+"'";
			String sql = "DELETE FROM graphs.organizational_tabs WHERE tab_id='"+panelId+"' AND company_name = '"+company_name+"'";
			try {
				Statement stmt = conn.createStatement();
					return stmt.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			String sql1 = "DELETE FROM graphs.chart_details WHERE tab_id='"+panelId+"' AND company_name = '"+company_name+"'";
			try {
				Statement stmt = conn.createStatement();
				return stmt.executeUpdate(sql1);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return 0;
			}
				
			}
			else {
//				String sql = "DELETE FROM graphs.organizational_tabs WHERE tab_id='"+panelId+"' AND username = '"+username+"' AND company_name = '"+company_name+"'";
				String sql = "DELETE FROM graphs.organizational_tabs WHERE tab_id='"+panelId+"' AND company_name = '"+company_name+"' AND username = '"+username+"'";
				try {
					Statement stmt = conn.createStatement();
					return stmt.executeUpdate(sql);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				String sql1 = "DELETE FROM graphs.chart_details WHERE tab_id='"+panelId+"' AND company_name = '"+company_name+"' AND username = '"+username+"'";
				try {
					Statement stmt = conn.createStatement();
					return stmt.executeUpdate(sql1);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					return 0;
				}
			}
			

		}

		@Override
		public int deleteRelationshipFromGraph(String dbName,String sourceElementName,String targetElementName,String source,String target,String relation) {
			
			String sql = "DELETE FROM "+dbName+".relationships WHERE Source = '"+sourceElementName+"' AND Destination = '"+targetElementName+"' AND Source_Attribute_Value = '"+target+"' AND Destination_Attribute_Value = '"+source+"' AND Relationship_Type = '"+relation+"'";
			try {
				Statement stmt = conn.createStatement();
				return stmt.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return 0;
			}
		}


		
		///LICENSE VALIDATION
		@Override
		public List<namedLicenseValidation> getNamedLicenseDetails (String username) {
			String getNamedLicenseDetails = "SELECT id,license_key,license_type,user_role,creation_date,expiration_date FROM EEATool.license WHERE id IN (SELECT license_id FROM EEATool.named_licence_users WHERE user_id = (SELECT id FROM EEATool.users WHERE username = '"+username+"') )";
	//		System.out.println("getCompanyName"+getCompanyName);
			
			List<namedLicenseValidation> getNamedLicenseDetailsList = new ArrayList<namedLicenseValidation>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(getNamedLicenseDetails);
				while (rs.next()) {
					
					String id = rs.getString("id");
					String license_key= rs.getString("license_key");
					String license_type= rs.getString("license_type");
					String user_role= rs.getString("user_role");
					String creation_date= rs.getString("creation_date");
					String expiration_date= rs.getString("expiration_date");
					namedLicenseValidation obj = new namedLicenseValidation(id,license_key,license_type,user_role, creation_date, expiration_date);
					getNamedLicenseDetailsList.add(obj);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return getNamedLicenseDetailsList;
		}
		
		@Override
		public List<namedLicenseValidation> getConcurrentLicenseDetails (String activeUsersTable, String licenseTable) {
			String getNamedLicenseDetails = "SELECT * FROM EEATool.license WHERE id IN (SELECT license_id FROM EEATool."+licenseTable+" WHERE license_id NOT IN (SELECT license_id FROM EEATool."+activeUsersTable+"))";
	//		System.out.println("getCompanyName"+getCompanyName);

//
			List<namedLicenseValidation> fullnames = new ArrayList<namedLicenseValidation>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(getNamedLicenseDetails);
				while (rs.next()) {
					
					String id = rs.getString("id");
					String license_key= rs.getString("license_key");
					String license_type= rs.getString("license_type");
					String user_role= rs.getString("user_role");
					String creation_date= rs.getString("creation_date");
					String expiration_date= rs.getString("expiration_date");
					namedLicenseValidation rm = new namedLicenseValidation(id,license_key,license_type,user_role, creation_date, expiration_date);
					fullnames.add(rm);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return fullnames;			

		}
		
		@Override
		public List<pools> getPoolNameAndRolesForLicenseCheck(String repository_name) {
			String sql = "SELECT pool_name,role_type,repository_name FROM EEATool.pools WHERE repository_name = '"+repository_name+"'";
			
			List<pools> getPoolNameAndRolesForLicenseCheck = new ArrayList<pools>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					
					String pool_name= rs.getString("pool_name");
					String role_type= rs.getString("role_type");
					String repository_name1= rs.getString("repository_name");
					pools p = new pools(pool_name, role_type, repository_name1);
					getPoolNameAndRolesForLicenseCheck.add(p);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return getPoolNameAndRolesForLicenseCheck;
		}
		
		@Override
		public List<String> checkIfUserAlreadyExistsInActiveUsersTable(String poolActiveUsers, String user_id) {
			// TODO Auto-generated method stub
			String sql = "SELECT id FROM EEATool."+poolActiveUsers+" WHERE user_id = '"+user_id+"';";
			
			List<String> columns = new ArrayList<String>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					String row_val = rs.getString("id");
					columns.add(row_val);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return columns;
			///
		}
		
		@Override
		public int insertValuesInActivePoolUsers(String tableName, String license_id, String user_id) {
			String sql = "INSERT INTO EEATool."+tableName+" (id, license_id, user_id) VALUES (NULL, '"+license_id+"', '"+user_id+"')";
			
			String activePoolDetails = tableName+","+license_id+","+user_id;
			String sql1 = "UPDATE EEATool.users SET activePoolDetails = '"+activePoolDetails+"' WHERE id = '"+user_id+"'";
			
			try {
				Statement stmt = conn.createStatement();
				stmt.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			try {
				Statement stmt = conn.createStatement();
				return stmt.executeUpdate(sql1);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return 0;
			}
		}
		
		@Override
		public int removeValuesFromActivePoolUsers(String [] activePoolDetailsList) {
			String sql = "DELETE FROM EEATool."+activePoolDetailsList[0]+" WHERE license_id = '"+activePoolDetailsList[1]+"' AND user_id = '"+activePoolDetailsList[2]+"'";
			String sql1 = "UPDATE EEATool.users SET activePoolDetails= NULL WHERE id='"+activePoolDetailsList[2]+"'";
			Statement stmt;
			try {
				stmt = conn.createStatement();
				stmt.executeUpdate(sql);
				return stmt.executeUpdate(sql1);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return 0;
			}
			
		}
		
		@Override
		public String getActivePoolDetails(String user_id) {
			String sql = "SELECT activePoolDetails FROM EEATool.users WHERE id = '"+user_id+"'";
			
			
			List<String> columns = new ArrayList<String>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					String row_val = rs.getString("activePoolDetails");
					columns.add(row_val);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return columns.get(0);
		}

//		@Override
//		public List<String> getSelfGeneratedColumnNameForChangeHistory(String dbName, String element) {
//
//			String sql = "SELECT Self_Generated_Attribute FROM "+dbName+".attributes_information WHERE Group_Style='Tabular' AND Group_Caption = 'Change History' AND Element_Name='"+element+"'";
//			
//			RowMapper<String> rowMapper = new RowMapper<String>() {
//				
//				@Override
//				public String mapRow(ResultSet rs, int rowNum) throws SQLException {
//					String SelfGenerated= rs.getString("Self_Generated_Attribute");
//					
//					return new String(SelfGenerated);
//				}
//			};
//			//System.out.println(sql);
//			return jdbcTemplate.query(sql, rowMapper);
//		}
		
		@Override
		public List<String> getSelfGeneratedValueForChangeHistory(String dbName, String element, String columnName, String id) {
			
			String sql = "SELECT "+columnName+" FROM "+dbName+"."+element+" WHERE id = "+id+" ";
			
			List<String> columns = new ArrayList<String>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					String row_val = rs.getString(columnName);
					columns.add(row_val);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return columns;
		}
		
		@Override
		public int updateSelfGeneratedValueForChangeHistory(String dbName, String element, String columnName, String updatedValue, String id) {
			String sql = "UPDATE "+dbName+"."+element+" SET "+columnName+"='"+updatedValue+"' WHERE id = "+id+" ";
			try {
				Statement stmt = conn.createStatement();
				return stmt.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return 0;
			}
		}
		

		
		
//		@Override
//		public String createOrUpdateMyPage(String dbName, String element, String createdDate, String updatedDate, String updatedBy, String status) {
//			
//			String sql= "CREATE TABLE IF NOT EXISTS "+dbName+".my_page(id INT NOT NULL AUTO_INCREMENT, symbol TEXT NULL, element_name TEXT NULL, created_date TEXT NULL, updated_date TEXT NULL, user_name TEXT NULL, status TEXT NULL, PRIMARY KEY ( id ));";
//			String sql1 = "INSERT INTO "+dbName+".my_page(symbol, element_name, created_date, updated_date, user_name, status) VALUES ('' ,'"+element+"', '"+createdDate+"','"+updatedDate+"','"+updatedBy+"','"+status+"') ";
//			jdbcTemplate.update(sql);
//			jdbcTemplate.update(sql1);
//
//			return "done";
//		}


//		@Override
//		public List<myPage> selectMyPageTable(String dbName) {
//			
//			String sql = "SELECT * FROM "+dbName+".my_page";
//			RowMapper<myPage> rowMapper = new RowMapper<myPage>() {
//				
//				@Override
//				public myPage mapRow(ResultSet rs, int rowNum) throws SQLException {
//					
//					String symbol = rs.getString("symbol");
//					String element_name = rs.getString("element_name");
//					String created_date	= rs.getString("created_date");
//					String updated_date = rs.getString("updated_date");
//					String user_name = rs.getString("user_name");
//					String status = rs.getString("status");
//
//					return new myPage(symbol, element_name, created_date, updated_date, user_name, status);
//				}
//			};
//			//System.out.println(sql+"\n");
//			return jdbcTemplate.query(sql, rowMapper);
//		}


//		@Override
//		public List<addRowsModel> getElementEntries(String dbName, String tableName) {
//			 String sql = "SELECT * FROM "+dbName+"."+tableName;
//			 String sql1 = "SELECT Self_Generated_Attribute FROM "+dbName+".attributes_information WHERE Attribute_Type='Name' AND Element_Name='"+tableName+"'";
//			 List<String> elementEntried = jdbcTemplate.query(sql1);
//			RowMapper<addRowsModel> rowMapper = new RowMapper<addRowsModel>() {
//				
//				@Override
//				public addRowsModel mapRow(ResultSet rs, int rowNum) throws SQLException {
//					int id = rs.getInt("id");
//					String rowValue = rs.getString("Name");
//					return new addRowsModel(id, rowValue);
//				}
//			};
//			//System.out.println(sql+"\n");
//			return jdbcTemplate.query(sql, rowMapper);
//		}
		
//		@Override
//		public List<String> getElementEntries(String dbName, String tableName) {
//
//			// geting column name code from attributes_information table start
//			
//			String sql1 = "SELECT Self_Generated_Attribute FROM "+dbName+".attributes_information WHERE Actual_Attribute='Name' AND Element_Name='"+tableName+"'";
//			RowMapper<String> rowMapper = new RowMapper<String>() {
//				@Override
//				public String mapRow(ResultSet rs, int rowNum) throws SQLException {
//					String SelfGenerated= rs.getString("Self_Generated_Attribute");
//					return new String(SelfGenerated);
//				}
//			};
//			List<String> columnNameCode =  jdbcTemplate.query(sql1, rowMapper);
//			
//			// geting column name code from attributes_information table end
//			
//			
//			
//			// Geting all object name name code from attributes_information table start
//			String sql = "SELECT "+columnNameCode.get(0)+" FROM "+dbName+"."+tableName;
//			RowMapper<String> rowMapper1 = new RowMapper<String>() {
//				
//				@Override
//				public String mapRow(ResultSet rs, int rowNum) throws SQLException {
//					String objectName = rs.getString(columnNameCode.get(0));
//					return new String(objectName);
//				}
//			};
//			
//			List<String> objectName = jdbcTemplate.query(sql, rowMapper1);
//			
//			// Geting all object name name code from attributes_information table start
//			
//			return objectName;
//			
//		}
		
		@Override
		public List<String> getSelfGeneratedValueForChangeHistoryByObjectName(String dbName, String tableName, String columnName, String objectName) {

			// geting column name code from attributes_information table start
			
			String sql1 = "SELECT Self_Generated_Attribute FROM "+dbName+".attributes_information WHERE Actual_Attribute='Name' AND Element_Name='"+tableName+"'";
			
//			
			List<String> columns = new ArrayList<String>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql1);
				while (rs.next()) {
					String SelfGenerated= rs.getString("Self_Generated_Attribute");
					columns.add(SelfGenerated);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}			

			String sql = "SELECT "+columnName+" FROM "+dbName+"."+tableName+" WHERE "+columns.get(0)+" = "+objectName+" ";
//			
			List<String> columns1 = new ArrayList<String>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					String oldValue= rs.getString(columnName);
					columns1.add(oldValue);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return columns1;			

		}
		
		
//		@Override
//		public List<String> getDataForMyPage(String dbName, String tableName, String objectName, String columnCode) {
//			
//			
//			// geting column name code from attributes_information table start
//			
//				String sql1 = "SELECT Self_Generated_Attribute FROM "+dbName+".attributes_information WHERE Actual_Attribute='Name' AND Element_Name='"+tableName+"'";
//
//				RowMapper<String> rowMapper = new RowMapper<String>() {
//					@Override
//					public String mapRow(ResultSet rs, int rowNum) throws SQLException {
//						String SelfGenerated= rs.getString("Self_Generated_Attribute");
//						return new String(SelfGenerated);
//					}
//				};
//				List<String> columnNameCodeObjectName =  jdbcTemplate.query(sql1, rowMapper);
//						
//			// geting column name code from attributes_information table end
//
//
//			String sql = "SELECT "+columnCode+" FROM "+dbName+"."+tableName+" WHERE "+columnNameCodeObjectName.get(0)+" = '"+objectName+"' ";
//			
//			RowMapper<String> rowMapper1 = new RowMapper<String>() {
//				@Override
//				public String mapRow(ResultSet rs, int rowNum) throws SQLException {
//					String oldValue= rs.getString(columnCode);
//					return new String(oldValue);
//				}
//			};
//			return jdbcTemplate.query(sql, rowMapper1);
//			
//
//		}
		
//		@Override
//		public List<String> getStatusForElementObjectForMyPage(String dbName, String tableName, String objectName, String columnCode) {
//
//			// geting column name code from attributes_information table start
//				String sql1 = "SELECT Self_Generated_Attribute FROM "+dbName+".attributes_information WHERE Actual_Attribute='Name' AND Element_Name='"+tableName+"'";
//				RowMapper<String> rowMapper = new RowMapper<String>() {
//					@Override
//					public String mapRow(ResultSet rs, int rowNum) throws SQLException {
//						String SelfGenerated= rs.getString("Self_Generated_Attribute");
//						return new String(SelfGenerated);
//					}
//				};
//				List<String> columnNameCodeObjectName =  jdbcTemplate.query(sql1, rowMapper);
//						
//			// geting column name code from attributes_information table end
//
//			String sql = "SELECT status FROM "+dbName+"."+tableName+" WHERE "+columnNameCodeObjectName.get(0)+" = '"+objectName+"' ";
//			RowMapper<String> rowMapper1 = new RowMapper<String>() {
//				@Override
//				public String mapRow(ResultSet rs, int rowNum) throws SQLException {
//					String status= rs.getString("status");
//					return new String(status);
//				}
//			};
//
//			return jdbcTemplate.query(sql, rowMapper1);
//		}
		
		@Override
		public List<String> getSelfGeneratedColumnNameForChangeHistory(String dbName, String element) {

			String sql = "SELECT Self_Generated_Attribute FROM "+dbName+".attributes_information WHERE Group_Style='Tabular' AND Group_Caption = 'Change History' AND Element_Name='"+element+"'";
			List<String> SGV_OF_CHANGEHISTORY_AND_TABULAR = new ArrayList<String>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					String SelfGenerated= rs.getString("Self_Generated_Attribute");
					SGV_OF_CHANGEHISTORY_AND_TABULAR.add(SelfGenerated);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return SGV_OF_CHANGEHISTORY_AND_TABULAR;
			
			
//			RowMapper<String> rowMapper = new RowMapper<String>() {
//				
//				@Override
//				public String mapRow(ResultSet rs, int rowNum) throws SQLException {
//					String SelfGenerated= rs.getString("Self_Generated_Attribute");
//					
//					return new String(SelfGenerated);
//				}
//			};
//			//System.out.println(sql);
//			return jdbcTemplate.query(sql, rowMapper);
		}



		@Override
		public List<String> selfGeneratedValueOfNameColumn(String dbName, String tableName) {

			// geting column name code from attributes_information table start
			
			String sql = "SELECT Self_Generated_Attribute FROM "+dbName+".attributes_information WHERE Actual_Attribute='Name' AND Element_Name='"+tableName+"'";
			
			
			List<String> data = new ArrayList<String>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					String SelfGenerated= rs.getString("Self_Generated_Attribute");
					data.add(SelfGenerated);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return data;
			
			
//			RowMapper<String> rowMapper = new RowMapper<String>() {
//				@Override
//				public String mapRow(ResultSet rs, int rowNum) throws SQLException {
//					String SelfGenerated= rs.getString("Self_Generated_Attribute");
//					return new String(SelfGenerated);
//				}
//			};
//			List<String> columnNameCode =  jdbcTemplate.query(sql, rowMapper);
//			
//			// geting column name code from attributes_information table end
//			
//			return columnNameCode;
			
		}



		@Override
		public List<String> getElementEntries(String dbName, String tableName, String NameSGV) {

			
			// Geting all object name name code from attributes_information table start
			String sql = "SELECT "+NameSGV+" FROM "+dbName+"."+tableName+" WHERE status = 1";
			List<String> data = new ArrayList<String>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					String objectName = rs.getString(NameSGV);
					data.add(objectName);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return data;
			
			
			
			
//			RowMapper<String> rowMapper1 = new RowMapper<String>() {
//				
//				@Override
//				public String mapRow(ResultSet rs, int rowNum) throws SQLException {
//					String objectName = rs.getString(NameSGV);
//					return new String(objectName);
//				}
//			};
//			
//			List<String> objectName = jdbcTemplate.query(sql, rowMapper1);
//			
//			// Geting all object name name code from attributes_information table start
//			
//			return objectName;
			
		}



		@Override
		public List<String> getDataForMyPage(String dbName, String tableName, String objectName, String columnCode, String NameSGV) {

			String sql = "SELECT "+columnCode+" FROM "+dbName+"."+tableName+" WHERE "+NameSGV+" = '"+objectName+"' ";
			//System.out.println("sql: "+sql);
			
			
			List<String> data = new ArrayList<String>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					String oldValue= rs.getString(columnCode);
					data.add(oldValue);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return data;
			
			
			
			
//			RowMapper<String> rowMapper1 = new RowMapper<String>() {
//				@Override
//				public String mapRow(ResultSet rs, int rowNum) throws SQLException {
//					String oldValue= rs.getString(columnCode);
//					return new String(oldValue);
//				}
//			};
//			return jdbcTemplate.query(sql, rowMapper1);
			

		}



		@Override
		public List<String> getStatusForElementObjectForMyPage(String dbName, String tableName, String objectName, String columnCode, String NameSGV) {

			String sql = "SELECT status FROM "+dbName+"."+tableName+" WHERE "+NameSGV+" = '"+objectName+"' ";
			
			
			List<String> data = new ArrayList<String>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					String status= rs.getString("status");
					data.add(status);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return data;
			
//			RowMapper<String> rowMapper1 = new RowMapper<String>() {
//				@Override
//				public String mapRow(ResultSet rs, int rowNum) throws SQLException {
//					String status= rs.getString("status");
//					return new String(status);
//				}
//			};
//
//			return jdbcTemplate.query(sql, rowMapper1);
		}
        
		@Override
		public List<String> getIdForElementObject(String dbName, String tableName, String objectName) {

			// geting column name code from attributes_information table start
				String sql1 = "SELECT Self_Generated_Attribute FROM "+dbName+".attributes_information WHERE Actual_Attribute='Name' AND Element_Name='"+tableName+"'";
				List<String> columns = new ArrayList<String>();
				try {
					Statement stmt = conn.createStatement();
					ResultSet rs = stmt.executeQuery(sql1);
					while (rs.next()) {
						String SelfGenerated= rs.getString("Self_Generated_Attribute");
						columns.add(SelfGenerated);
					}
				} catch (SQLException e) {
					e.printStackTrace();
				}
			// geting column name code from attributes_information table end

			String sql = "SELECT id FROM "+dbName+"."+tableName+" WHERE "+columns.get(0)+" = '"+objectName+"' ";
			List<String> columns1 = new ArrayList<String>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					String id= rs.getString("id");
					columns1.add(id);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return columns1;			
		}
		
		@Override
		public int delRoadmapRowData(String roadmapid) {
			// TODO Auto-generated method stub
			String sql = "UPDATE graphs.roadmap SET status = '0' WHERE id = '"+roadmapid+"' ";
			//String sql = "DELETE FROM graphs.files WHERE id= '"+graphID+"' ";
			try {
				Statement stmt = conn.createStatement();
				return stmt.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return 0;
			}
		}

		@Override
		public List<timeLineGraph> getRoadmapRowData(String username, String company_name) {
			String sql = "SELECT * FROM graphs.roadmap WHERE company_name =\'"+company_name+"\' && status = '0'";
			//String sql = "SELECT id,modelName,parent_id FROM graphs.files WHERE username =\'"+username+"\' && status = '0'";

//
			List<timeLineGraph> fullnames = new ArrayList<timeLineGraph>();
					try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
			
					int id = rs.getInt("id");
					String roadmapName = rs.getString("RoadMap_Name");
					String elementName = rs.getString("Element_Name");
					String startDate = rs.getString("Start_Date");
					String endDate = rs.getString("End_Date");
					String legend = rs.getString("Legend");
					String companyName = rs.getString("company_name");
					int parentId = rs.getInt("parentID");
					timeLineGraph rm = new timeLineGraph(id,roadmapName,elementName,startDate,endDate,legend,companyName,parentId);
					fullnames.add(rm);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return fullnames;			
		}

		@Override
		public List<String> getRowWithRoadCondition(String dbName, String tableName, String attributeName,
				String conditionAttribute, int conditionValue) {
			String sql ="Select "+attributeName+" from " +dbName+ "."+tableName+" where "+conditionAttribute+" = '"+conditionValue+"'";
			List<String> columns = new ArrayList<String>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
						String attVal = null;
						try {
							attVal = rs.getString(attributeName);
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							attVal = "";
						}
					columns.add(attVal);
					}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return columns;			
		}

		@Override
		public List<timeLineGraph> restoreRoadmapFolder(String roadmapID, String username, String company_name) {
			//System.out.println("companyName.get(0)"+companyName.get(0));
			
			String sql = "UPDATE graphs.folders SET status = '1' WHERE id = '"+roadmapID+"' ";
			String changeFileStatus = "UPDATE graphs.roadmap SET status = '1' WHERE id = '"+roadmapID+"' ";
			try {
				Statement stmt = conn.createStatement();
				stmt.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}			
			try {
				Statement stmt = conn.createStatement();
				stmt.executeUpdate(changeFileStatus);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			sql = "SELECT id,RoadMap_Name,company_name, parentID FROM graphs.roadmap WHERE company_name =\'"+company_name+"\' && id = \'"+roadmapID+"\' && status = '1'";	
			List<timeLineGraph> fullnames = new ArrayList<timeLineGraph>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					
					int id = rs.getInt("id");
					String roadmapName = rs.getString("RoadMap_Name");
					String company_name1 = rs.getString("company_name");
					int parentID = rs.getInt("parentID");
					timeLineGraph rm = new timeLineGraph(id, roadmapName, company_name1, parentID);
					fullnames.add(rm);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return fullnames;			
			
		}

		@Override
		public int deleteRoadmapPermanently(int roadmapID, String username) {

			// TODO Auto-generated method stub
			String checkAdmin = "SELECT role FROM EEATool.user_roles WHERE username= '"+username+"' ";	
			
//			
			List<String> columns = new ArrayList<String>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(checkAdmin);
				while (rs.next()) {
					String attVal = "";
					try {
						attVal = rs.getString("role");
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						attVal = "";
					}
					columns.add(attVal);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}

			
			if(columns.get(0).equals("ROLE_ADMIN")) {	
				String sql1 = "DELETE FROM graphs.roadmap WHERE id= '"+roadmapID+"'"; 
				try {
					Statement stmt = conn.createStatement();
					return stmt.executeUpdate(sql1);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					return 0;
				}
				
			}
			else {
				 String sql3 = "DELETE FROM graphs.roadmap WHERE id= '"+roadmapID+"' AND owner_of_the_object = '"+username+"'"; 
				 try {
						Statement stmt = conn.createStatement();
						return stmt.executeUpdate(sql3);
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
						return 0;
					}
			}
		}

		@Override
		public List<timeLineGraph> getRoadMapFromFolder(String username, String parent_id, String status, String company_name) {
//			// TODO Auto-generated method stub
//			String getCompanyName = "SELECT company_name FROM EEATool.users WHERE username= '"+username+"' ";
////			System.out.println("getCompanyName"+getCompanyName);
//			RowMapper<String> rowMapper = new RowMapper<String>() {
//				@Override
//				public String mapRow(ResultSet rs, int rowNum){
//					String attVal = "";
//					try {
//						attVal = rs.getString("company_name");
//					} catch (SQLException e) {
//						// TODO Auto-generated catch block
//						attVal = "";
//					}
//					return new String(attVal);
//				}
//			};
//			List<String> companyName = jdbcTemplate.query(getCompanyName, rowMapper);
			//System.out.println("companyName.get(0)"+companyName.get(0));


			String sql = "SELECT id, RoadMap_Name, company_name, parentID FROM graphs.roadmap "
					+ "WHERE company_name =\'"+company_name+"\' && parentID = \'"+parent_id+"\' && status = '"+status+"'";
//			System.out.println(sql);
			
//			
			List<timeLineGraph> fullnames = new ArrayList<timeLineGraph>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					
					int id = rs.getInt("id");
					String RoadMap_Name = rs.getString("RoadMap_Name");
					String company_name1 = rs.getString("company_name");
					int parentID = rs.getInt("parentID");
					timeLineGraph rm = new timeLineGraph(id,RoadMap_Name,company_name1,parentID);
					fullnames.add(rm);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return fullnames;
//			
			
//			RowMapper<timeLineGraph> rowMapper1 = new RowMapper<timeLineGraph>() {
//				@Override
//				public timeLineGraph mapRow(ResultSet rs, int rowNum) throws SQLException {
//					int id = rs.getInt("id");
//					String RoadMap_Name = rs.getString("RoadMap_Name");
//					String company_name = rs.getString("company_name");
//					int parentID = rs.getInt("parentID");
//					return new timeLineGraph(id,RoadMap_Name,company_name,parentID);
//				}
//			};
//			return jdbcTemplate.query(sql, rowMapper1);
		}
		
		@Override
		public int deleteUserFromNamedLicenseTable(String user_id) {
			String sql = "DELETE FROM EEATool.named_licence_users WHERE user_id = '"+user_id+"'";
			try {
				Statement stmt = conn.createStatement();
				return stmt.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return 0;
			}
		}
		
		@Override
		public int deleteUserFromConcurrentLicenseTables(String user_id,String tableName) {
			String sql = "DELETE FROM EEATool."+tableName+" WHERE user_id = '"+user_id+"'";
			try {
				Statement stmt = conn.createStatement();
				return stmt.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return 0;
			}
		}
		
		@Override
		public int updateObjectUpdatedDate(String dbName,String tableName,String time,String id) {
			String sql = "UPDATE "+dbName+"."+tableName+" SET last_time_updated = '"+time+"' WHERE id="+id;
			//String sql = "UPDATE graphs.folders SET status = '1' WHERE id = '"+roadmapID+"' ";
			try {
				Statement stmt = conn.createStatement();
				return stmt.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return 0;
			}
		}
		
		@Override
		public int deleteUserFromUsersAndUserRoles(String username) {
			String sql = "DELETE FROM EEATool.user_roles WHERE username = '"+username+"'";
			try {
				Statement stmt = conn.createStatement();
				stmt.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			sql = "DELETE FROM EEATool.users WHERE username = '"+username+"' ";
			try {
				Statement stmt = conn.createStatement();
				return stmt.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return 0;
			}
		}

		@Override
		public List<RelationsModel> getRelatiionsForNavigation (String dbName,String elementName, String objectName,String fwdORbwd) {
			String sql = "";
			if(fwdORbwd.equals("fwd")){
				sql = "SELECT Source,Destination,Source_Attribute_Value,Destination_Attribute_Value,Relationship_Type FROM "+dbName+".relationships WHERE Source = '"+elementName+"' AND Destination_Attribute_Value = '"+objectName+"'";
			}else {
				sql = "SELECT Source,Destination,Source_Attribute_Value,Destination_Attribute_Value,Relationship_Type FROM "+dbName+".relationships WHERE Destination = '"+elementName+"' AND Source_Attribute_Value = '"+objectName+"'";
			}
//			
			List<RelationsModel> fullnames = new ArrayList<RelationsModel>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					
					String sourceRelElement= rs.getString("Source");
					String targetRelElement= rs.getString("Destination");
					String sourceAttValue= rs.getString("Source_Attribute_Value");
					String targetAttValue= rs.getString("Destination_Attribute_Value");
					String relationshipType= rs.getString("Relationship_Type");
					RelationsModel rm = new RelationsModel(sourceRelElement,targetRelElement,sourceAttValue,targetAttValue, relationshipType);
					fullnames.add(rm);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return fullnames;			
		}
		
		@Override
		public List<RelationsModel> getAllRelationsForMatrix (String dbName,String sourceElementName, String targetElementName,String relationship,boolean allRelations ) {
			String sql = "";
			if(allRelations==true) {
				sql = "SELECT Source,Destination,Source_Attribute_Name,Destination_Attribute_Name,Source_Attribute_Value,Destination_Attribute_Value,Relationship_Type FROM "+dbName+".relationships WHERE (Source = '"+sourceElementName+"' AND Destination = '"+targetElementName+"') || (Destination = '"+sourceElementName+"' AND Source = '"+targetElementName+"')";
			}else {
				System.out.println("else");
				sql = "SELECT Source,Destination,Source_Attribute_Name,Destination_Attribute_Name,Source_Attribute_Value,Destination_Attribute_Value,Relationship_Type FROM "+dbName+".relationships WHERE ((Source = '"+sourceElementName+"' AND Destination = '"+targetElementName+"') || (Destination = '"+sourceElementName+"' AND Source = '"+targetElementName+"')) AND Relationship_Type = '"+relationship+"'";
			}
			System.out.println("sql: "+sql);
			List<RelationsModel> fullnames = new ArrayList<RelationsModel>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					
					String sourceRelElement= rs.getString("Source");
					String targetRelElement= rs.getString("Destination");
					String sourceAttName = rs.getString("Source_Attribute_Name");
					String targetAttName = rs.getString("Destination_Attribute_Name");
					String sourceAttValue= rs.getString("Source_Attribute_Value");
					String targetAttValue= rs.getString("Destination_Attribute_Value");
					String relationshipType= rs.getString("Relationship_Type");
					RelationsModel rm = new RelationsModel(sourceRelElement,targetRelElement,sourceAttName,targetAttName,sourceAttValue,targetAttValue, relationshipType);
					fullnames.add(rm);
//					RelationsModel(sourceRelElement,targetRelElement,sourceAttName,targetAttName,sourceAttValue,targetAttValue, relationshipType);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return fullnames;
		}
		
		@Override
		public int updateSingleValue(String dbName, String tableName, String attribute,String value, String id) {
			String sql = "UPDATE "+dbName+"."+tableName+" SET "+attribute+" ='"+value+"' WHERE id= '"+id+"' ";
			System.out.println(sql);
			try {
				Statement stmt = conn.createStatement();
				return stmt.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return 0;
			}
		}
		
		@Override
		public List<String> getOldPassword(String dbName, String tableName,String username, String attName) {
			String sql = "SELECT "+attName+" FROM "+dbName+"."+tableName +" WHERE username = '"+username+"'";
//			
			List<String> columns = new ArrayList<String>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					String atrName = rs.getString(attName);
					columns.add(atrName);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return columns;			
		}

////HUSSAIN IMPEX START****
		
		@Override
		public List<String> getAllSelfGeneratedAttVal(String dbName, String elementName) {
			// TODO Auto-generated method stub
			String sql = "Select DISTINCT Self_Generated_Attribute from "+dbName+".attributes_information where Element_Name = '"+elementName+"' AND "
					+ " (Attribute_Type = 'Primary' OR Attribute_Type = 'System')"
					+ "ORDER BY id ASC ";
			
			List<String> data = new ArrayList<String>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					String selfGeneratedAttribute= rs.getString("Self_Generated_Attribute");
					data.add(selfGeneratedAttribute);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return data;
		}
		
		
		
		@Override
		public List<RelationsModel> getRelationshipTableForImpex(String dbName, String tableName, String elementName) {
			String sql = "SELECT id, Source, Destination, Source_Attribute_Name, Destination_Attribute_Name, Source_Attribute_Value, Destination_Attribute_Value, Relationship_Type, Bidirection_Relationship_Pair FROM "+dbName+".relationships WHERE (Source = '"+tableName+"' OR Destination = '"+tableName+"')  ORDER BY Source_Attribute_Name,Destination_Attribute_Name, Bidirection_Relationship_Pair";

			List<RelationsModel> relationshipTable = new ArrayList<RelationsModel>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					
					int id= rs.getInt("id");
					String Source= rs.getString("Source");
					String Destination= rs.getString("Destination");
					String SourceAttributeName = rs.getString("Source_Attribute_Name");
					String DestinationAttributeName = rs.getString("Destination_Attribute_Name");
					String SourceAttributeValue= rs.getString("Source_Attribute_Value");
					String DestinationAttributeValue= rs.getString("Destination_Attribute_Value");
					String RelationshipType= rs.getString("Relationship_Type");
					String BiDirectionRelationshipPair= rs.getString("Bidirection_Relationship_Pair");
					
					RelationsModel rm = new RelationsModel(id, Source, Destination, SourceAttributeName, DestinationAttributeName, SourceAttributeValue, DestinationAttributeValue, RelationshipType, BiDirectionRelationshipPair);
					relationshipTable.add(rm);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return relationshipTable;
		}
		
		@Override
		public int impexInsertElements(String dbName, String tableName, List<String> columnNames, List<ArrayList<String>> columnValues, String username) {

			if(!columnNames.get(columnNames.size()-1).equals("owner_of_the_object")) {
				columnNames.add("owner_of_the_object");
			}
			
			String columnNamesString = columnNames.toString();
			columnNamesString = columnNamesString.replaceAll("\\[", "\\(");
			columnNamesString = columnNamesString.replaceAll("\\]", "\\)");
			 
			
			
			String columnValuesString = columnValues.toString();
			columnValuesString = columnValuesString.substring( 1, columnValuesString.length() - 1 );
			columnValuesString = columnValuesString.replaceAll("\\[", "\\(");
			columnValuesString = columnValuesString.replaceAll("\\]", "\\)");
			
			String sql = "INSERT INTO "+dbName+"."+tableName+" "+columnNamesString+" VALUES "+columnValuesString+" ";
			
			try {
				Statement stmt = conn.createStatement();
				return stmt.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return 0;
			}
			
		}
		
		
		
		@Override
		public int impexUpdateElements(String dbName, String tableName, List<String> columnNames, List<ArrayList<String>> columnValues, String username) {
			
			int noOfUpdateQuery = columnValues.size();
			String[] sqlArray = new String[noOfUpdateQuery];
			
			for(int p=0; p<columnValues.size(); p++) {

				List<String> currentRow = columnValues.get(p);
				
				int currentRowLength = currentRow.size();

				String queryString =  "";
				queryString += "UPDATE "+dbName+"."+tableName+" SET ";
				
				
				for(int q=1; q<currentRowLength; q++) {
					queryString += " "+columnNames.get(q)+" = "+currentRow.get(q)+" ";

					if(q != currentRowLength-1) {
						queryString += ",";
					}
				}
				
				queryString+= "WHERE "+columnNames.get(0)+" = "+currentRow.get(0)+"" ;

				sqlArray[p] = queryString;
			}

			int[] updateCounts = jdbcTemplate.batchUpdate(sqlArray);

			return 1;
		}
		
		@Override
		public int impexInsertRelationships(String dbName, List<ArrayList<String>> columnValues) {
			String columnValuesString = columnValues.toString();
			columnValuesString = columnValuesString.substring( 1, columnValuesString.length() - 1 );
			columnValuesString = columnValuesString.replaceAll("\\[", "\\(");
			columnValuesString = columnValuesString.replaceAll("\\]", "\\)");
			String sql = "INSERT INTO "+dbName+".relationships (Source, Destination, Source_Attribute_Name, Destination_Attribute_Name, Source_Attribute_Value, Destination_Attribute_Value, Relationship_Type, Bidirection_Relationship_Pair) VALUES "+columnValuesString+" ";
			
			
			try {
				Statement stmt = conn.createStatement();
				return stmt.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return 0;
			}
			
			
			
			// jdbcTemplate.update(sql);
			
			// return 1;
		}
		
		
		@Override
		public int impexDeleteRelationships(String dbName, ArrayList<String> ids) {
			
			String idsArrayReplaceBrackets = ids.toString();
			
			idsArrayReplaceBrackets = idsArrayReplaceBrackets.replaceAll("\\[", "\\(");
			idsArrayReplaceBrackets = idsArrayReplaceBrackets.replaceAll("\\]", "\\)");
			
			String sql = "DELETE FROM "+dbName+".relationships WHERE id IN "+idsArrayReplaceBrackets+" ";

			
			try {
				Statement stmt = conn.createStatement();
				return stmt.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return 0;
			}
			
			
			// return jdbcTemplate.update(sql);
		}
		
		
		
		//// HUSSAIN IMPEX END****

//		Get database backup starts here
		@Override
		public List<String> getBackupOfDatabases(String company_name,String username, String fileNameWithDate, String folderPath) {
			List<String> error = new ArrayList<String>();
//			online
			String sql = "INSERT INTO EEATool.backup_databases (backupDate, company_name, username) VALUES ('"+fileNameWithDate+"','"+company_name+"','"+username+"')";
//			String sql = "INSERT INTO eeatool.backup_databases (backupDate, company_name, username) VALUES ('"+fileNameWithDate+"','"+company_name+"','"+username+"')";	
			System.out.println("sql"+sql);
			try {
				Statement stmt = conn.createStatement();
				stmt.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
//				e.printStackTrace();
				error.add("error");
				return error;
			}			
//			Local
//			String[] backupDatabases = {"eeatool", "graphs", "mim_metamodel"};
//			Online
			String[] backupDatabases = {"EEATool", "graphs", "mim_metamodel"};
			for(int i = 0 ; i <= backupDatabases.length-1 ; i++) {
				String dbName = backupDatabases[i];
//				String sql = "SELECT DISTINCT TABLE_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA='"+backupDatabases[i]+"'";
				String sql1 = "SHOW TABLES FROM "+dbName;
				List<String> tableName = new ArrayList<String>();
				try {
					Statement stmt = conn.createStatement();
					ResultSet rs = stmt.executeQuery(sql1);
					while (rs.next()) {
						String getBackupOfDatabases = rs.getString("Tables_in_"+dbName);
						tableName.add(getBackupOfDatabases.toString());
					}
				} catch (SQLException e) {
					e.printStackTrace();
					error.add("error");
					return error;
				}
				// List<String> tableName = jdbcTemplate.query(sql1, rowMapper);
				for(int j = 0 ; j <= tableName.size()-1 ; j++) {
//					Local
//					String backupOfDatabase = "SELECT * INTO OUTFILE 'C:\\\\Users\\\\Ali\\\\eclipse-workspace\\\\Project\\\\backup_data\\\\"+fileNameWithDate+"_"+tableName.get(j)+".sql' from "+backupDatabases[i]+"."+tableName.get(j)+"";
//					String backupOfDatabase = "SELECT * INTO OUTFILE '"+folderPath.replace("\\","\\\\")+"\\\\"+fileNameWithDate+"_"+tableName.get(j)+".sql' from "+backupDatabases[i]+"."+tableName.get(j)+"";
//					Online
					String backupOfDatabase = "SELECT * INTO OUTFILE 'backup_eaxee_database/"+fileNameWithDate+"_"+tableName.get(j)+".sql' from "+backupDatabases[i]+"."+tableName.get(j)+"";
//					System.out.println("backupOfDatabase"+backupOfDatabase);
					try {
						Statement stmt = conn.createStatement();
						stmt.execute(backupOfDatabase);
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
//					jdbcTemplate.execute(backupOfDatabase);
				}
//				return tableName;				
			}
			return null;
		}
//		Get database backup ends here

//		Database Restore Work starts here
		@Override
		public int restoreSpecificData(String joinDateAndTime, String folderPath) {
			List<String> error = new ArrayList<String>();
			// TODO Auto-generated method stub
			String[] backupDatabases = {"graphs", "mim_metamodel"};
//			String[] backupDatabases = {"EEATool", "graphs", "mim_metamodel"};
			for(int i = 0 ; i <= backupDatabases.length-1 ; i++) {
				String dbName = backupDatabases[i];
//				String sql = "SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE = 'BASE TABLE' AND TABLE_SCHEMA='"+backupDatabases[i]+"'";
				String sql = "SHOW TABLES FROM "+dbName;
				List<String> tableName = new ArrayList<String>();
				try {
					Statement stmt = conn.createStatement();
					ResultSet rs = stmt.executeQuery(sql);
					while (rs.next()) {
						String getBackupOfDatabases= rs.getString("Tables_in_"+dbName);
						tableName.add(getBackupOfDatabases);
					}
				} catch (SQLException e) {
					e.printStackTrace();
					error.add("error");
				}
				for(int j = 0 ; j <= tableName.size()-1 ; j++) {
					String truncateTable = "TRUNCATE TABLE "+backupDatabases[i]+"."+tableName.get(j)+"";
//					jdbcTemplate.execute(truncateTable);
					System.out.println("truncateTable"+truncateTable);
					try {
						Statement stmt = conn.createStatement();
						stmt.execute(truncateTable);
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}						
				}
				for(int j = 0 ; j <= tableName.size()-1 ; j++) {
//					Online
					String restoreOfDatabase = "LOAD DATA INFILE 'backup_eaxee_database/"+joinDateAndTime+"_"+tableName.get(j)+".sql' INTO TABLE "+backupDatabases[i]+"."+tableName.get(j)+"";
//					Local
//					String restoreOfDatabase = "LOAD DATA INFILE '"+folderPath.replace("\\","/")+"/"+joinDateAndTime+"_"+tableName.get(j)+".sql' INTO TABLE "+backupDatabases[i]+"."+tableName.get(j)+"";
					System.out.println("restoreOfDatabase"+restoreOfDatabase);
					try {
						Statement stmt = conn.createStatement();
						stmt.execute(restoreOfDatabase);
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}					
//					jdbcTemplate.execute(restoreOfDatabase);
				}
			}
			return 0;
		}

		@Override
		public List<String> getFolderNameFromDatabase(String company_name, String username) {
//			Online
			String sql = "SELECT DISTINCT id, backupDate FROM EEATool.backup_databases WHERE company_name = '"+company_name+"' ORDER BY id ASC";
//			Local
//			String sql = "SELECT DISTINCT * FROM eeatool.backup_databases WHERE company_name = '"+company_name+"' ORDER BY id ASC";
			List<String> backupDate = new ArrayList<String>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					String attrName = rs.getString("backupDate");
					backupDate.add(attrName);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return backupDate;
		}
		
//		Clear Works start here
		@Override
		public List<String> truncateObjectClear(String dbName)
		{
			System.out.println("dbName"+dbName);
			String getTableNames = "SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE = 'BASE TABLE' AND TABLE_SCHEMA='mim_metamodel'";
			System.out.println("sql:"+getTableNames);	
			try {
				
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(getTableNames);
				while (rs.next()) {
					String truncate = "";
					String attVal = rs.getString("TABLE_NAME");
					if (!attVal.equals("attributes_information"))
					{
						truncate = "TRUNCATE TABLE mim_metamodel."+ attVal;
						try {
							Statement stmt1 = conn.createStatement();
							stmt1.executeUpdate(truncate);
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					}
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			String getTableNamesGraph = "SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE = 'BASE TABLE' AND TABLE_SCHEMA='graphs'";
			System.out.println("sql:"+getTableNamesGraph);	
			try {
				
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(getTableNamesGraph);
				while (rs.next()) {
					String truncate = "";
					String attVal = rs.getString("TABLE_NAME");
					if (!attVal.equals("folders"))
					{
						truncate = "TRUNCATE TABLE graphs."+ attVal;
						try {
							Statement stmt1 = conn.createStatement();
							stmt1.executeUpdate(truncate);
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					}
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			String deleteQuery = "DELETE FROM graphs.folders WHERE parent_id!='0'";
			try {
				Statement stmt = conn.createStatement();
				stmt.executeUpdate(deleteQuery);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return null;
			}	
			
			String getTableNamesAttachment = "SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE = 'BASE TABLE' AND TABLE_SCHEMA='attachments'";
			System.out.println("sql:"+getTableNamesAttachment);	
			try {
				
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(getTableNamesAttachment);
				while (rs.next()) {
					String truncate = "";
					String attVal = rs.getString("TABLE_NAME");
					if (!attVal.equals("folders"))
					{
						truncate = "TRUNCATE TABLE attachments."+ attVal;
						try {
							Statement stmt1 = conn.createStatement();
							stmt1.executeUpdate(truncate);
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					}
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			String deleteAttachmentQuery = "DELETE FROM attachments.folders WHERE parent_id!='0'";
			try {
				Statement stmt = conn.createStatement();
				stmt.executeUpdate(deleteAttachmentQuery);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return null;
			}	
			
			return null;
		}	
		
		@Override
		public List<String> truncateModelClear(String dbName)
		{
			String getTableNames = "SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE = 'BASE TABLE' AND TABLE_SCHEMA='graphs'";
			System.out.println("sql:"+getTableNames);	
			try {
				
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(getTableNames);
				while (rs.next()) {
					String truncate = "";
					String attVal = rs.getString("TABLE_NAME");
					if (!attVal.equals("folders") && !attVal.equals("organizational_tabs") && !attVal.equals("chart_details"))
					{
						truncate = "TRUNCATE TABLE graphs."+ attVal;
						try {
							Statement stmt1 = conn.createStatement();
							stmt1.executeUpdate(truncate);
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					}
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			String deleteQuery = "DELETE FROM graphs.folders WHERE parent_id!='0'";
			try {
				Statement stmt = conn.createStatement();
				stmt.executeUpdate(deleteQuery);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return null;
			}			
			return null;
		}		
		
		@Override
		public List<String> truncatedashboardslear(String dbName)
		{
			String getTableNames = "SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE = 'BASE TABLE' AND TABLE_SCHEMA='graphs'";
			System.out.println("sql:"+getTableNames);	
			try {
				
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(getTableNames);
				while (rs.next()) {
					String truncate = "";
					String attVal = rs.getString("TABLE_NAME");
					if (attVal.equals("organizational_tabs") || attVal.equals("chart_details"))
					{
						truncate = "TRUNCATE TABLE graphs."+ attVal;
						try {
							Statement stmt1 = conn.createStatement();
							stmt1.executeUpdate(truncate);
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					}
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return null;
		}	
		
//		Clear Works end here
		@Override
		public int savenavigationjson(String json_graph, String username, String navigationname, String navigationID) {
//			System.out.println("\n\nCOMING HERE\n\n");
	        String sql = "UPDATE graphs.navigation_files SET graph_json = '"+json_graph+"' WHERE id = '"+navigationID+"'";
	        System.out.println("sql: "+sql);
			//String sql = "INSERT INTO "+"graphs"+".json_graph"+" ("+"username, graphname, Graph_json"+") VALUES ('"+username+"', '"+graphname+"', '"+json_graph+"') ";
	        try {
				Statement stmt = conn.createStatement();
				return stmt.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return 0;
			}
		}
		
		
		
		///checkkk
		
		@Override
		public int checkUpdateQuery() {
			// TODO Auto-generated method stub
			String sql = "UPDATE EEATool.users SET email = 'checkingMail' WHERE id = '1640' ";
			//String sql = "DELETE FROM graphs.files WHERE id= '"+graphID+"' ";
//			System.out.println(sql+"\n");
			jdbcTemplate.update(sql);
			return 0;
		}
		
		@Override
		public List<String> checkQuery() {
			String sql ="SELECT * FROM mim_metamodel.relationships";
//			String sql ="SELECT * FROM relationships";
			try {
				RowMapper<String> rowMapper = new RowMapper<String>() {
					@Override
					public String mapRow(ResultSet rs, int rowNum){
						String attVal = null;
						try {
							attVal = rs.getString("id");
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							attVal = "";
						}
//						System.out.println(attVal);
						return new String(attVal);
					}
				};
				//System.out.println(sql);
				return jdbcTemplate.query(sql, rowMapper);
				
			}catch (EmptyResultDataAccessException e) {
//				System.out.println("null");
				 return null;
			}
		}
		
		@Override
		public List<String> checkWhereQuery() {
			String sql ="SELECT id,Source,Destination,Source_P_Key,Destination_P_Key,Source_Attribute_Name,Destination_Attribute_Name,Source_Attribute_Value,Destination_Attribute_Value,Relationship_Type,Bidirection_Relationship_Pair,status,owner_of_the_object,last_time_updated FROM mim_metamodel.relationships";
//			String sql ="SELECT * FROM relationships";
			try {
				RowMapper<String> rowMapper = new RowMapper<String>() {
					@Override
					public String mapRow(ResultSet rs, int rowNum){
						String attVal = null;
						try {
							attVal = rs.getString("id");
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							attVal = "";
						}
//						System.out.println(attVal);
						return new String(attVal);
					}
				};
				//System.out.println(sql);
				return jdbcTemplate.query(sql, rowMapper);
				
			}catch (EmptyResultDataAccessException e) {
//				System.out.println("null");
				 return null;
			}
		}
		
		//////////////// ALI GET COMPLETE TREE OPTIMIZATION START
		
		@Override
		public HashMap<String, String> getSelfGeneratedForAllAttributes(String dbName, List<String> elementNamesList, String attributeValue) {
			String elementNames = elementNamesList.toString();
			elementNames = elementNames.replaceAll("\\[", "\\(");
			elementNames = elementNames.replaceAll("\\]", "\\)");
			
			
			String sql ="Select Element_Name,Self_Generated_Attribute from " +dbName+ ".attributes_information where Element_Name IN "+elementNames+" AND Actual_Attribute = '"+attributeValue+"'";
			
			HashMap<String, String> allData = new HashMap<String,String>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					String elementName = rs.getString("Element_Name");
					String rowValue = rs.getString("Self_Generated_Attribute");
					allData.put(elementName, rowValue);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return allData;
		}
		
		@Override
		public HashMap<String, List<String>> getRowsWithTypes(String dbName, String tableName, String nameAttributeSGV,String typeAttributeSGV) {
			//tableName = tableName.toLowerCase();
			 String sql = "SELECT "+nameAttributeSGV+","+typeAttributeSGV+" FROM "+dbName+"."+tableName+" WHERE status = '1'";
			 HashMap<String, List<String>> allData = new HashMap<String,List<String>>();
				try {
					Statement stmt = conn.createStatement();
					ResultSet rs = stmt.executeQuery(sql);
					while (rs.next()) {
						String nameAttributeValue = rs.getString(nameAttributeSGV);
						String typeAttributeValue = rs.getString(typeAttributeSGV);
						if(typeAttributeValue.equals("Null")) {
							typeAttributeValue = "Other";
						}
						List<String> rows = new ArrayList<String>();
						
						if(allData.get(typeAttributeValue) !=null) {
							rows = allData.get(typeAttributeValue);
						}
						rows.add(nameAttributeValue);
						allData.put(typeAttributeValue, rows);
					}
				} catch (SQLException e) {
					e.printStackTrace();
				}
				return allData;
		}
		
		/////////////// ALI GET COMPLETE TREE OPTIMIZATION END ////////
		
		
		@Override
		public HashMap<String, List<String>> getRowsWithTypesForMypage(String dbName, String tableName, String nameAttributeSGV, String typeAttributeSGV, String username) {
			//tableName = tableName.toLowerCase();
			 String sql = "SELECT "+nameAttributeSGV+","+typeAttributeSGV+" FROM "+dbName+"."+tableName+" WHERE status = '1' AND owner_of_the_object ='"+username+"' ";
			 
			 System.out.println("put: "+sql);
			 
			 HashMap<String, List<String>> allData = new HashMap<String,List<String>>();
				try {
					Statement stmt = conn.createStatement();
					ResultSet rs = stmt.executeQuery(sql);
					while (rs.next()) {
						String nameAttributeValue = rs.getString(nameAttributeSGV);
						String typeAttributeValue = rs.getString(typeAttributeSGV);
						if(typeAttributeValue.equals("Null")) {
							typeAttributeValue = "Other";
						}
						List<String> rows = new ArrayList<String>();
						
						if(allData.get(typeAttributeValue) !=null) {
							rows = allData.get(typeAttributeValue);
						}
						rows.add(nameAttributeValue);
						allData.put(typeAttributeValue, rows);
					}
				} catch (SQLException e) {
					e.printStackTrace();
				}
				return allData;
		}

		@Override
		public int renameDiagram(String lastdiagramName , String newdiagramName) {
//			System.out.println("\n\nCOMING HERE\n\n");
			
	        String sql = "UPDATE graphs.files SET modelName = '"+newdiagramName+"' WHERE modelName = '"+lastdiagramName+"'";
			//String sql = "INSERT INTO "+"graphs"+".json_graph"+" ("+"username, graphname, Graph_json"+") VALUES ('"+username+"', '"+graphname+"', '"+json_graph+"') ";
	        try {
				Statement stmt = conn.createStatement();
				return stmt.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return 0;
			}
		}
		
		
		@Override
		public List<graphFiles> getFilteredDiagram(String diagramName) {
			String sql = "SELECT id, modelName ,parent_id, filtered ,filtered_details FROM graphs.files WHERE modelName =\'"+diagramName+"\' ";
			List<graphFiles> fullnames = new ArrayList<graphFiles>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					
					String graph = rs.getString("modelName");
					String id = rs.getString("id");
					String parent_id1 = rs.getString("parent_id");
					String filtered = rs.getString("filtered");
					String filtered_details = rs.getString("filtered_details");
					graphFiles rm = new graphFiles(id, graph, parent_id1, filtered, filtered_details);
					fullnames.add(rm);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return fullnames;
		}
		
		@Override
		public int renameCatalog(String lastcatalogName , String newcatalogName) {
//			System.out.println("\n\nCOMING HERE\n\n");
			
	        String sql = "UPDATE graphs.catalog_files SET catalog_name = '"+newcatalogName+"' WHERE catalog_name = '"+lastcatalogName+"'";
			//String sql = "INSERT INTO "+"graphs"+".json_graph"+" ("+"username, graphname, Graph_json"+") VALUES ('"+username+"', '"+graphname+"', '"+json_graph+"') ";
	        try {
				Statement stmt = conn.createStatement();
				return stmt.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return 0;
			}
		}

		@Override
		public List<String> renameMatrix(String lastmatrixName , String newmatrixName) {
	        String sql = "UPDATE graphs.matrix_files SET matrix_name = '"+newmatrixName+"' WHERE matrix_name = '"+lastmatrixName+"'";
	        try {
				Statement stmt = conn.createStatement();
				stmt.executeUpdate(sql);
				System.out.println("sql"+sql);

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				List<String> temp = new ArrayList<String>();
				//return temp;
			}
			String getElementData = "SELECT matrix_element1, matrix_element2, matrix_relation FROM graphs.matrix_files WHERE matrix_name = '"+newmatrixName+"'";
			
			List<String> backupDate = new ArrayList<String>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(getElementData);
				while (rs.next()) {
					String matrix_element1 = rs.getString("matrix_element1");
					String matrix_element2 = rs.getString("matrix_element2");
					String matrix_relation = rs.getString("matrix_relation");
					backupDate.add(matrix_element1);
					backupDate.add(matrix_element2);
					backupDate.add(matrix_relation);
				}
				return backupDate;
			} catch (SQLException e) {
				e.printStackTrace();
				List<String> temp = new ArrayList<String>();
				return temp;					
			}	        
		}	
		
		@Override
		public int renameNavigation(String lastNavigationName , String newNavigationName) {
	        String sql = "UPDATE graphs.navigation_files SET navigationName = '"+newNavigationName+"' WHERE navigationName = '"+lastNavigationName+"'";
	        try {
				Statement stmt = conn.createStatement();
				return stmt.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return 0;
			}
		}
		@Override
		public int renameRoadmap(String lastRoadmapName , String newRoadmapName) {
	        String sql = "UPDATE graphs.roadmap SET RoadMap_Name = '"+newRoadmapName+"' WHERE RoadMap_Name = '"+lastRoadmapName+"'";
	        try {
				Statement stmt = conn.createStatement();
				return stmt.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return 0;
			}
		}	
		
		@Override
		public String validateAttachmentFolderName(String folderName, String username) {
			String sql ="Select id from attachments.folders where username = '"+username+"' AND folder_name = '"+folderName+"'";
			System.out.println("sql" +sql);
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
						String attVal = "";
				while (rs.next()) {
						try {
							attVal = rs.getString("id");
						} catch (SQLException e) {
							attVal = "";
						}
					}
				
				return attVal.toString();
				
			} catch (SQLException e) {
				// e.printStackTrace();
				
				 return null;
			}
		}		
		
		@Override
		public String createNewAttachmentFolderName(String id, String folderName, String username, String company_name) {
			// TODO Auto-generated method stub
			
			String sql = "CREATE TABLE IF NOT EXISTS attachments.folders(id int NOT NULL AUTO_INCREMENT, username TEXT NULL, company_name VARCHAR(255) NULL, folder_name TEXT NULL,  parent_id VARCHAR(255) NULL, status TEXT NULL,Primary Key(id))";
			jdbcTemplate.update(sql);
			String sql1 = "INSERT INTO attachments.folders(username, company_name,folder_name,parent_id, status, owner_of_the_object) VALUES('"+username+"', '"+company_name+"','"+folderName+"' ,'"+id+"', '1', '"+username+"')";
			String sql2 = "SELECT id FROM attachments.folders WHERE username = '"+username+"' && folder_name = '"+folderName+"'";
			
//			System.out.println(sql+"\n");
			try {
				Statement stmt = conn.createStatement();
				stmt.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				Statement stmt = conn.createStatement();
				stmt.executeUpdate(sql1);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
//			jdbcTemplate.update(sql);
//			jdbcTemplate.update(sql1);
			
//			
			List<String> columns = new ArrayList<String>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql2);
				while (rs.next()) {
					String folderID = rs.getString("id");
					columns.add(folderID);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return columns.get(0);		
		}	
		
		@Override
		public String validateAttachmentName(String attachmentName, String company_name) {
			String sql ="Select id from attachments.files where company_name = '"+company_name+"' AND attachmentName = '"+attachmentName+"'";
			try {
					Statement stmt = conn.createStatement();
					ResultSet rs = stmt.executeQuery(sql);
						String attVal = "";
					while (rs.next()) {
						try {
							attVal = rs.getString("id");
						} catch (SQLException e) {
							attVal = "";
						}
					}
				
					return attVal.toString();
					
				} catch (SQLException e) {
					// e.printStackTrace();
				 return null;
			}
		}
		
		@Override
		public int createNewAttachmentFile(String foreign_key, String company_name, String username, String attachmentName,String graph_json) {
			// TODO Auto-generated method stub
			String sql = "CREATE TABLE IF NOT EXISTS attachments.files(id int NOT NULL AUTO_INCREMENT, username VARCHAR(255) NULL, attachmentName TEXT NULL, graph_json VARCHAR(255) NULL,parent_id int NULL,status TEXT NULL, Primary Key(id), FOREIGN KEY (parent_id) REFERENCES attachments.folders(id))";
			try {
				Statement stmt = conn.createStatement();
				stmt.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			String sql1 = "INSERT INTO attachments.files(company_name,username,  attachmentName,graph_json,parent_id, status, owner_of_the_object) VALUES('"+company_name+"','"+username+"','"+attachmentName+"', '"+graph_json+"','"+foreign_key+"', '1', '"+username+"')";
//			System.out.println(sql+"\n");
			try {
				Statement stmt = conn.createStatement();
				return stmt.executeUpdate(sql1);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return 0;
			}
		}	
		
		@Override
		public String getAttachmentIDFromFolder(String username,String parent_id, String attachmentName) {
			String sql = "SELECT id FROM attachments.files WHERE username =\'"+username+"\' && parent_id = \'"+parent_id+"\' && attachmentName = \'"+attachmentName+"\'";
//			String sql = "SELECT Graph_json FROM "+dbName+".json_graph WHERE username =\'"+username+"\' && graphname = \'"+graphname+"\'";
//			System.out.println(sql);
			
//			
			List<String> columns = new ArrayList<String>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					String graph = rs.getString("id");
					columns.add(graph);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return columns.get(0);		
		}	
		
		@Override
		public int deleteAttachmentFolder(int id) {
			// TODO Auto-generated method stub
			String sql = "UPDATE attachments.folders SET status = '0' WHERE id = '"+id+"' ";
//			String changeCatalogStatus = "UPDATE attachments.catalog_files SET status = '0' WHERE parent_id = '"+id+"' ";
//			String changeMatrixStatus = "UPDATE attachments.matrix_files SET status = '0' WHERE parentID = '"+id+"' ";
			String changeFilesStatus = "UPDATE attachments.files SET status = '0' WHERE parent_id = '"+id+"' ";
//			String changenavigationStatus = "UPDATE attachments.navigation_files SET status = '0' WHERE parent_id = '"+id+"' ";
			//String sql = "DELETE FROM graphs.files WHERE id= '"+graphID+"' ";
			//System.out.println(sql+"\n");
			try {
				Statement stmt = conn.createStatement();
				stmt.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
//			try {
//				Statement stmt = conn.createStatement();
//				stmt.executeUpdate(changeCatalogStatus);
//			} catch (SQLException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}		
//			try {
//				Statement stmt = conn.createStatement();
//				stmt.executeUpdate(changeMatrixStatus);
//			} catch (SQLException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}		
//			try {
//				Statement stmt = conn.createStatement();
//				stmt.executeUpdate(changenavigationStatus);
//			} catch (SQLException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}			
			try {
				Statement stmt = conn.createStatement();
				return stmt.executeUpdate(changeFilesStatus);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return 0;
			}		
		}	
		
		@Override
		public List<graphFiles> getAttachmentRowData(String username, String company_name) {
			String sql = "SELECT id,attachmentName,parent_id FROM attachments.files WHERE company_name =\'"+company_name+"\' && status = '0'";
			//String sql = "SELECT id,modelName,parent_id FROM graphs.files WHERE username =\'"+username+"\' && status = '0'";
//			System.out.println(sql);
			
//			
			List<graphFiles> fullnames = new ArrayList<graphFiles>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					
					String graph = rs.getString("attachmentName");
					String id = rs.getString("id");
					String parent_id = rs.getString("parent_id");
					graphFiles rm = new graphFiles(id,graph,parent_id);
					fullnames.add(rm);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return fullnames;		
		}		
		
		@Override
		public List<graphFolders> getAttachmentRemovedFolders(String username, String company_name) {
			String sql ="Select * from attachments.folders where status = '0' AND company_name = '"+company_name+"'";
			//String sql ="Select * from graphs.folders where status = '0' AND username = '"+username+"'";
			//System.out.println(sql);
				
	//
			List<graphFolders> fullnames = new ArrayList<graphFolders>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					
					String id= rs.getString("id");
					String folder_name= rs.getString("folder_name");
					String parent_id= rs.getString("parent_id");
					graphFolders rm = new graphFolders(id,folder_name,parent_id);
					fullnames.add(rm);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return fullnames;		
		}	
		
		@Override
		public List<String> getAttachmentRowWithCondition(String dbName, String tableName, String attributeName, String conditionAttribute, String conditionValue) {
			String sql ="Select "+attributeName+" from " +dbName+ "."+tableName+" where "+conditionAttribute+" = '"+conditionValue+"'";
			List<String> columns = new ArrayList<String>();
			System.out.println("sqlasdasdas:::"+sql);
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
						String attVal = null;
						try {
							attVal = rs.getString(attributeName);
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							attVal = "";
						}
					columns.add(attVal);
					}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return columns;		
		}	
		
		@Override
		public int delAttachmentRowData(String graphID) {
			// TODO Auto-generated method stub
			String sql = "UPDATE attachments.files SET status = '0' WHERE id = '"+graphID+"' ";
			//String sql = "DELETE FROM graphs.files WHERE id= '"+graphID+"' ";
//			System.out.println(sql+"\n");
			try {
				Statement stmt = conn.createStatement();
				return stmt.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return 0;
			}
		}		
		
		@Override
		public List<graphFiles> restoreAttachmentFolder(String graphID,String username, String company_name) {
			// TODO Auto-generated method stub
			String sql = "UPDATE attachments.folders SET status = '1' WHERE id = '"+graphID+"' ";
//			System.out.println("sqlUpdate"+sql);
			String changeFileStatus = "UPDATE attachments.files SET status = '1' WHERE parent_id = '"+graphID+"' ";
			try {
				Statement stmt = conn.createStatement();
				stmt.executeUpdate(sql);
			} catch (SQLException e) {
						// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				Statement stmt = conn.createStatement();
				stmt.executeUpdate(changeFileStatus);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
//			System.out.println(sql+"\n");
			
			sql = "SELECT id,attachmentName FROM attachments.files WHERE company_name =\'"+company_name+"\' && parent_id = \'"+graphID+"\' && status = '1'";
			//sql = "SELECT id,modelName FROM graphs.files WHERE username =\'"+username+"\' && parent_id = \'"+graphID+"\' && status = '1'";
//			System.out.println(sql);
//			
			List<graphFiles> fullnames = new ArrayList<graphFiles>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					String graph = rs.getString("attachmentName");
					String id = rs.getString("id");
					graphFiles rm = new graphFiles(id,graph);
					fullnames.add(rm);
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
			e.printStackTrace();
			}
			return fullnames;
		}		
		
		@Override
		public int restoreAttachmentData(String graphID) {
			// TODO Auto-generated method stub
			String sql = "UPDATE attachments.files SET status = '1' WHERE id = '"+graphID+"' ";
			//String sql = "DELETE FROM graphs.files WHERE id= '"+graphID+"' ";
//			System.out.println(sql+"\n");
			try {
				Statement stmt = conn.createStatement();
				return stmt.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return 0;
			}
		}
		@Override
		public int deleteAttachmentFolderPermanently(int id, String username) {
			// TODO Auto-generated method stub
			String checkAdmin = "SELECT role FROM EEATool.user_roles WHERE username= '"+username+"' ";		
//			
			List<String> columns = new ArrayList<String>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(checkAdmin);
				while (rs.next()) {
					String attVal = "";
					try {
						attVal = rs.getString("role");
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						attVal = "";
					}
					columns.add(attVal);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			if(columns.get(0).equals("ROLE_ADMIN")) {
				String sql = "DELETE FROM attachments.folders WHERE id= '"+id+"'";
				int deleteFolder = 0;
				try {
					Statement stmt = conn.createStatement();
					deleteFolder = stmt.executeUpdate(sql);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				if(deleteFolder == 1) {
					String sql1 = "DELETE FROM attachments.files WHERE parent_id= '"+id+"'"; 
					try {
						Statement stmt = conn.createStatement();
						stmt.executeUpdate(sql1);
						return 1;
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
						return 0;
					}
				}
				else {
					return 0;
				}
			}
			else {
				 String sql2 = "DELETE FROM attachments.folders WHERE id= '"+id+"' AND owner_of_the_object = '"+username+"'"; 
				 int deleteFolder = 0;
				 try {
						Statement stmt = conn.createStatement();
						deleteFolder = stmt.executeUpdate(sql2);
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}			 
				 if(deleteFolder == 1) {
					 String sql3 = "DELETE FROM attachments.files WHERE parent_id= '"+id+"'"; 
					 try {
							Statement stmt = conn.createStatement();
							stmt.executeUpdate(sql3);
							return 1;
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
							return 0;
						}			 
				 }
				 else {
					 return 0; 
				 }
			}
		}		
		
		@Override
		public int deleteAttachmentPermanently(int id, String username) {
			
			// TODO Auto-generated method stub
			String checkAdmin = "SELECT role FROM EEATool.user_roles WHERE username= '"+username+"' ";	
//			
			List<String> columns = new ArrayList<String>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(checkAdmin);
				while (rs.next()) {
					String attVal = "";
					try {
						attVal = rs.getString("role");
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						attVal = "";
					}
					columns.add(attVal);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			if(columns.get(0).equals("ROLE_ADMIN")) {	
				String sql1 = "DELETE FROM attachments.files WHERE id= '"+id+"'"; 
				try {
					Statement stmt = conn.createStatement();
					return stmt.executeUpdate(sql1);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					return 0;
				}
				
			}
			else {
				 String sql3 = "DELETE FROM attachments.files WHERE id= '"+id+"' AND owner_of_the_object = '"+username+"'"; 
				 try {
						Statement stmt = conn.createStatement();
						return stmt.executeUpdate(sql3);
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
						return 0;
					}
			}
		}	
		@Override
		public List<String> checkAttachmentStatus(String username, String company_name) {
			String sql = "SELECT attachmentName FROM attachments.files WHERE company_name =\'"+company_name+"\' && status = '1'";
			//String sql = "SELECT id,modelName,parent_id FROM graphs.files WHERE username =\'"+username+"\' && status = '0'";
//			System.out.println(sql);
			
//			
			List<String> fullnames = new ArrayList<String>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					
					String graph = rs.getString("attachmentName");
//					String id = rs.getString("id");
//					String parent_id = rs.getString("parent_id");
					String rm = new String(graph);
					fullnames.add(rm);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return fullnames;		
		}	

		@Override
		public String validateCatalogScriptName(String catalog_script_name, String company_name) {
			String sql ="Select id from graphs.catalog_scripts where company_name = '"+company_name+"' AND scriptName = '"+catalog_script_name+"'";

			try {
					Statement stmt = conn.createStatement();
					ResultSet rs = stmt.executeQuery(sql);
						String attVal = "";
					while (rs.next()) {
						try {
							attVal = rs.getString("id");
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							attVal = "";
						}
					}
					return attVal.toString();
				} catch (SQLException e) {
					// e.printStackTrace();
				 return null;
			}
		}
		
		@Override
		public int createOrEditCatalogScripts(String action, String catalog_name,String scriptName,String scriptColumns,String company_name ) {
			String sql = "";
			if(action.equals("create")) {
				sql = "INSERT INTO graphs.catalog_scripts (catalog_name,scriptName,scriptColumns,company_name) VALUES ('"+catalog_name+"','"+scriptName+"','"+scriptColumns+"','"+company_name+"')";
			}else if(action.equals("edit")){
				sql = "UPDATE graphs.catalog_scripts SET scriptColumns = '"+scriptColumns+"' WHERE scriptName = '"+scriptName+"'AND company_name='"+company_name+"'";
			}
	        try {
				Statement stmt = conn.createStatement();
				return stmt.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return 0;
			}
		}
		
		@Override
		public String getCatalogScriptColumns(String catalog_script_name, String company_name) {
			String sql ="Select scriptColumns from graphs.catalog_scripts where company_name = '"+company_name+"' AND scriptName = '"+catalog_script_name+"'";
			try {
					Statement stmt = conn.createStatement();
					ResultSet rs = stmt.executeQuery(sql);
						String attVal = "";
					while (rs.next()) {
						try {
							attVal = rs.getString("scriptColumns");
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							attVal = "";
						}
					}
					return attVal.toString();
				} catch (SQLException e) {
					// e.printStackTrace();
				 return null;
			}
		}
		
		@Override
		public List<String> getCatalogScripts(String catalogID, String company_name) {
			String sql ="Select scriptName from graphs.catalog_scripts where company_name = '"+company_name+"' AND catalog_name = (Select catalog_name from graphs.catalog_files where id='"+catalogID+"')";
			List<String> scriptNames = new ArrayList<String>();
			try {
					Statement stmt = conn.createStatement();
					ResultSet rs = stmt.executeQuery(sql);
						String attVal = "";
					while (rs.next()) {
						try {
							attVal = rs.getString("scriptName");
							scriptNames.add(attVal);
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							attVal = "";
						}
					}
					return scriptNames;
				} catch (SQLException e) {
					// e.printStackTrace();
				 return null;
			}
		}
		
		@Override
		public int deleteCatalogScripts(String scriptName,String company_name ) {
			String sql = "DELETE FROM graphs.catalog_scripts WHERE scriptName = '"+scriptName+"' AND company_name='"+company_name+"'";
	        try {
				Statement stmt = conn.createStatement();
				return stmt.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return 0;
			}
		}		
		
		@Override
		public List<String> truncateAttachmentClear(String dbName)
		{
			String getTableNames = "SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE = 'BASE TABLE' AND TABLE_SCHEMA='attachments'";
			System.out.println("sql:"+getTableNames);	
			try {
				
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(getTableNames);
				while (rs.next()) {
					String truncate = "";
					String attVal = rs.getString("TABLE_NAME");
					if (!attVal.equals("folders"))
					{
						truncate = "TRUNCATE TABLE attachments."+ attVal;
						try {
							Statement stmt1 = conn.createStatement();
							stmt1.executeUpdate(truncate);
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					}
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			String deleteQuery = "DELETE FROM attachments.folders WHERE parent_id!='0'";
			try {
				Statement stmt = conn.createStatement();
				stmt.executeUpdate(deleteQuery);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return null;
			}			
			return null;
		}			
		@Override
		public void saveChartName(String chartContainerId, String getChartName, String username) {
			String sql = "UPDATE graphs.chart_details SET tab_name='"+getChartName+"' WHERE div_id= '"+chartContainerId+"'";
			try {
				Statement stmt = conn.createStatement();
				stmt.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}	
		
		@Override
		public void changeTabName(String oldLabel, String newLabel, String username) {
			String sql = "UPDATE graphs.organizational_tabs SET tab_name='"+newLabel+"' WHERE tab_name= '"+oldLabel+"'";
			System.out.println("sql"+sql);
			try {
				Statement stmt = conn.createStatement();
				stmt.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		@Override
		public HashMap<String, List<String>> filterDiagramRelationships(String dbName, String userSelectedElementName, List<String> userSelectedObjects, List<String> userSelectedObjectsColor, List<String> openedDiagramElementName,  List<String> openedDiagramObjectName ) {

			HashMap<String, List<String>> diagramFilterDictionary = new HashMap<String, List<String>>();
			
			for(int i=0; i<userSelectedObjects.size(); i++) {
				String userSelectedElement = userSelectedElementName;
				String userSelectedObject = userSelectedObjects.get(i);
				String userSelectedObjectColor = userSelectedObjectsColor.get(i);
				
				for(int j=0; j<openedDiagramObjectName.size(); j++) {
					String openedDiagramElement = openedDiagramElementName.get(j).replace("\n", " ");
					String openedDiagramObject = openedDiagramObjectName.get(j).replace("\n", " ");
					System.out.println("");
					System.out.println("------------------");
					System.out.println("openedDiagramObject: "+openedDiagramObject);
					System.out.println("------------------");
					
					
					String sql = "SELECT Relationship_Type FROM  "+dbName+".relationships WHERE Source = '"+userSelectedElement+"' AND Destination = '"+openedDiagramElement+"' AND Source_Attribute_Value = '"+openedDiagramObject+"' AND Destination_Attribute_Value = '"+userSelectedObject+"' ";
					System.out.println("sql: "+sql);
					try {
						Statement stmt = conn.createStatement();
						ResultSet rs = stmt.executeQuery(sql);
						while (rs.next()) {
							try {
								String relationship_Type = rs.getString("Relationship_Type");
								System.out.println("relationship_Type: "+relationship_Type);
								
								List<String> getObject = diagramFilterDictionary.get(openedDiagramObject);
								if (getObject == null) {
									List<String> tempObject = new ArrayList<String>();
									tempObject.add(userSelectedObjectColor);
									diagramFilterDictionary.put(openedDiagramObject, tempObject);
								}else {
									List<String> tempObject = diagramFilterDictionary.get(openedDiagramObject);
									
									System.out.println("contains: "+tempObject.contains(userSelectedObjectColor));
									if(!tempObject.contains(userSelectedObjectColor)) {
										tempObject.add(userSelectedObjectColor);
										diagramFilterDictionary.put(openedDiagramObject, tempObject);
									}
								}
								
							} catch (SQLException e) {
								// TODO Auto-generated catch block
								System.out.println(e);
							}
						}
						
					}catch (SQLException e) {
						 e.printStackTrace();
					}
				}
			}
			System.out.println("");
			
			for(int i=0; i<userSelectedObjects.size(); i++) {
				String userSelectedElement = userSelectedElementName;
				String userSelectedObject = userSelectedObjects.get(i).replace("\n", " ");
				String userSelectedObjectColor = userSelectedObjectsColor.get(i).replace("\n", " ");
				
				for(int j=0; j<openedDiagramObjectName.size(); j++) {
					String openedDiagramElement = openedDiagramElementName.get(j);
					String openedDiagramObject = openedDiagramObjectName.get(j);
					
//					String sql = "SELECT Relationship_Type FROM  "+dbName+".relationships WHERE Source = '"+userSelectedElement+"' AND Destination = '"+openedDiagramElement+"' AND Source_Attribute_Value = '"+userSelectedObject+"' AND Destination_Attribute_Value = '"+openedDiagramObject+"' ";
					String sql = "SELECT Relationship_Type FROM  "+dbName+".relationships WHERE Source = '"+openedDiagramElement+"' AND Destination = '"+userSelectedElement+"' AND Source_Attribute_Value = '"+userSelectedObject+"' AND Destination_Attribute_Value = '"+openedDiagramObject+"' ";
					System.out.println("sql1: "+sql);
					try {
						Statement stmt = conn.createStatement();
						ResultSet rs = stmt.executeQuery(sql);
						while (rs.next()) {
							try {
								String relationship_Type = rs.getString("Relationship_Type");
								System.out.println("relationship_Type1: "+relationship_Type);
								
								List<String> getObject = diagramFilterDictionary.get(openedDiagramObject);
								if (getObject == null) {
									List<String> tempObject = new ArrayList<String>();
									tempObject.add(userSelectedObjectColor);
									diagramFilterDictionary.put(openedDiagramObject, tempObject);
								}else {
									List<String> tempObject = diagramFilterDictionary.get(openedDiagramObject);
									if(!tempObject.contains(userSelectedObjectColor)) {
										tempObject.add(userSelectedObjectColor);
										diagramFilterDictionary.put(openedDiagramObject, tempObject);
									}
								}
								
								
							} catch (SQLException e) {
								// TODO Auto-generated catch block
								System.out.println(e);
							}
						}
						
					}catch (SQLException e) {
						 e.printStackTrace();
					}
					
				}
			}
			return diagramFilterDictionary;
		}

		
		@Override
		public HashMap<String, String> filterDiagramRelationshipsWithAttributes(String dbName, String userSelectedElementName, String SelfGeneratedValueOfAttributeType, List<String> userSelectedAttributes, List<String> userSelectedAttributesColor, List<String> openedDiagramElementName,  List<String> openedDiagramObjectName ) {

			HashMap<String, String> diagramFilterDictionary = new HashMap<String, String>();
			
			for(int i=0; i<openedDiagramElementName.size(); i++) {
				
				String diagramObjectName = openedDiagramObjectName.get(i);
				
				if( openedDiagramElementName.get(i).equals(userSelectedElementName) ) {
					
					String sql = "SELECT "+SelfGeneratedValueOfAttributeType+" FROM  "+dbName+"."+userSelectedElementName+" WHERE ATT_01 = '"+diagramObjectName+"' ";
					
					try {
						Statement stmt = conn.createStatement();
						ResultSet rs = stmt.executeQuery(sql);
						while (rs.next()) {
							try {
								String AttributeValue = rs.getString(SelfGeneratedValueOfAttributeType);
								
								int indexOfAttribute = userSelectedAttributes.indexOf(AttributeValue);
								System.out.println("indexOfAttribute: "+indexOfAttribute);
								
								if(indexOfAttribute != -1) {
									String color = userSelectedAttributesColor.get(indexOfAttribute);
									diagramFilterDictionary.put(diagramObjectName, color);
								}
								
								
								
							} catch (SQLException e) {
								// TODO Auto-generated catch block
								System.out.println(e);
							}
						}
						
					}catch (SQLException e) {
						 e.printStackTrace();
					}

					
				}
			}
			return diagramFilterDictionary;
		}
		public int createTableForBusinessProcessModel(String dbName, String username, String company_name) {
			String createFolderTable = "CREATE TABLE IF NOT EXISTS graphs.business_process_folders (id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY, username mediumtext NULL, company_name VARCHAR(255) NULL, folder_name mediumtext NULL, parent_id VARCHAR(255) NULL, status mediumtext NULL, owner_of_the_object VARCHAR(255) NULL, last_time_updated TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP)";
//			String insertRootFolder = "INSERT INTO graphs.business_process_folders (username, company_name, folder_name, parent_id, status, owner_of_the_object) VALUES('"+username+"', '"+company_name+"', '"+company_name+"', 0, 1, '"+username+"')";
			String insertRootFolder = "INSERT INTO graphs.business_process_folders (username, company_name, folder_name, parent_id, status, owner_of_the_object) SELECT * FROM (SELECT '"+username+"' As username, '"+company_name+"' As company_name, '"+company_name+"' As folder_name, 0, 1, '"+username+"') AS tmp WHERE NOT EXISTS (SELECT username,company_name, folder_name parent_id FROM graphs.business_process_folders WHERE parent_id = 0 ) LIMIT 1";			
			String createFileTable = "CREATE TABLE IF NOT EXISTS graphs.business_process_files (id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY, username VARCHAR(255) NULL, company_name VARCHAR(255) NULL, fileName TEXT, filePath VARCHAR(255) NULL, parent_id int(11) NULL, status mediumtext NULL, filtered VARCHAR(255) NULL, filtered_details Text, owner_of_the_object VARCHAR(255) NULL, last_time_updated TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP)";
			try {
				Statement stmt = conn.createStatement();
				stmt.executeUpdate(createFolderTable);
				stmt.executeUpdate(createFileTable);
				return stmt.executeUpdate(insertRootFolder);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return 0;
			}
		}
		
//		businessProcess work starts here
		@Override
		public List<graphFolders> getBusinessProcessFolders(String foreignKey, String username, String status, String company_name) {
			String sql ="Select * from graphs.business_process_folders where parent_id = '"+foreignKey+"' && company_name = '"+company_name+"' && status = '"+status+"'";
			List<graphFolders> fullnames = new ArrayList<graphFolders>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					
					String id= rs.getString("id");
					String folder_name= rs.getString("folder_name");
					String parent_id= rs.getString("parent_id");
					graphFolders rm = new graphFolders(id,folder_name,parent_id);
					fullnames.add(rm);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return fullnames;
		}
		
		@Override
		public List<graphFiles> getBusinessProcessNamesFromFolder(String username,String parent_id,String status, String company_name) {
			String sql = "SELECT id,fileName,parent_id FROM graphs.business_process_files WHERE company_name =\'"+company_name+"\' && parent_id = \'"+parent_id+"\' && status = '"+status+"'";
			List<graphFiles> fullnames = new ArrayList<graphFiles>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					
					String graph = rs.getString("fileName");
					String id = rs.getString("id");
					String parent_id1 = rs.getString("parent_id");
					graphFiles rm = new graphFiles(id,graph,parent_id1);
					fullnames.add(rm);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return fullnames;
		}
		@Override
		public int createNewBusinessProcessFolderName(String id, String folderName, String username, String company_name) {
			String sql1 = "INSERT INTO graphs.business_process_folders (username, company_name, folder_name, parent_id, status, owner_of_the_object) SELECT * FROM (SELECT '"+username+"' As username, '"+company_name+"' As company_name, '"+folderName+"' As folder_name, 1 As parent_id, 1, '"+username+"') AS tmp WHERE NOT EXISTS (SELECT username,company_name, folder_name parent_id FROM graphs.business_process_folders WHERE folder_name = '"+folderName+"' ) LIMIT 1";
			String sql2 = "SELECT id FROM graphs.business_process_folders WHERE username = '"+username+"' && folder_name = '"+folderName+"'";
			int rs = 0;
			try {
				Statement stmt = conn.createStatement();
				rs = stmt.executeUpdate(sql1);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return rs;
		}	
		
		@Override
		public int createNewBusinessProcessFile(String foreign_key, String company_name, String username, String businessProcessName,String filePath) {
			System.out.println("Inside createNewBusinessProcessFile enterprisesDAOImpl...");
			String sql1 = "INSERT INTO graphs.business_process_files(username,company_name,fileName,filePath,parent_id, status, filtered, owner_of_the_object) SELECT * FROM (SELECT '"+username+"' As username, '"+company_name+"' As company_name, '"+businessProcessName+"' As fileName, '"+filePath+"' As graph_json, '"+foreign_key+"' As parent_id, 1, 'false','"+username+"') AS tmp WHERE NOT EXISTS (SELECT username,company_name, fileName, graph_json, parent_id FROM graphs.business_process_files WHERE fileName = '"+businessProcessName+"' ) LIMIT 1";
			System.out.println(sql1+"\n");
			try {
				Statement stmt = conn.createStatement();
				return stmt.executeUpdate(sql1);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return 0;
			}
		}
		@Override
		public String getBusinessProcessIDFromFolder(String username, String id, String businessProcessName) {
			String sql = "SELECT id FROM graphs.business_process_files WHERE username ='"+username+"' && parent_id = '"+id+"' && fileName = '"+businessProcessName+"'";
			List<String> columns = new ArrayList<String>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					String graph = rs.getString("id");
					columns.add(graph);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return columns.get(0);	
		}
		@Override
		public List<graphFiles> getBusinessProcessRowData(String username, String company_name) {
			String sql = "SELECT id,fileName,parent_id FROM graphs.business_process_files WHERE company_name ='"+company_name+"' && status = '0'";
			List<graphFiles> fullnames = new ArrayList<graphFiles>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					String graph = rs.getString("fileName");
					String id = rs.getString("id");
					String parent_id = rs.getString("parent_id");
					graphFiles rm = new graphFiles(id,graph,parent_id);
					fullnames.add(rm);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return fullnames;		
		}
		@Override
		public List<graphFolders> getBusinessProcessRemovedFolders(String username, String company_name) {
			String sql ="Select * from graphs.business_process_folders where status = '0' AND company_name = '"+company_name+"'";
			List<graphFolders> fullnames = new ArrayList<graphFolders>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					String id= rs.getString("id");
					String folder_name= rs.getString("folder_name");
					String parent_id= rs.getString("parent_id");
					graphFolders rm = new graphFolders(id,folder_name,parent_id);
					fullnames.add(rm);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return fullnames;		
		}
		@Override
		public int deleteBusinessProcessFolder(int id) {
			// TODO Auto-generated method stub
			String sql = "UPDATE graphs.business_process_folders SET status = '0' WHERE id = '"+id+"' ";
			String changeFilesStatus = "UPDATE graphs.business_process_files SET status = '0' WHERE parent_id = '"+id+"' ";
			try {
				Statement stmt = conn.createStatement();
				stmt.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}		
			try {
				Statement stmt = conn.createStatement();
				return stmt.executeUpdate(changeFilesStatus);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return 0;
			}		
		}
		@Override
		public List<graphFiles> restoreBusinessProcessFolder(String graphID,String username, String company_name) {
			// TODO Auto-generated method stub
			String sql = "UPDATE graphs.business_process_folders SET status = '1' WHERE id = '"+graphID+"' ";
			String changeFileStatus = "UPDATE graphs.business_process_files SET status = '1' WHERE parent_id = '"+graphID+"' ";
			try {
				Statement stmt = conn.createStatement();
				stmt.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				Statement stmt = conn.createStatement();
				stmt.executeUpdate(changeFileStatus);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			sql = "SELECT id,fileName FROM graphs.business_process_files WHERE company_name ='"+company_name+"' && parent_id = '"+graphID+"' && status = '1'";
			List<graphFiles> fullnames = new ArrayList<graphFiles>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					String graph = rs.getString("fileName");
					String id = rs.getString("id");
					graphFiles rm = new graphFiles(id,graph);
					fullnames.add(rm);
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
			e.printStackTrace();
			}
			return fullnames;
		}
		@Override
		public int deleteBusinessProcessFolderPermanently(int id, String username) {
			// TODO Auto-generated method stub
			String checkAdmin = "SELECT role FROM EEATool.user_roles WHERE username= '"+username+"' ";		
			List<String> columns = new ArrayList<String>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(checkAdmin);
				while (rs.next()) {
					String attVal = "";
					try {
						attVal = rs.getString("role");
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						attVal = "";
					}
					columns.add(attVal);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			if(columns.get(0).equals("ROLE_ADMIN")) {
				String sql = "DELETE FROM graphs.business_process_folders WHERE id= '"+id+"'";
				int deleteFolder = 0;
				try {
					Statement stmt = conn.createStatement();
					deleteFolder = stmt.executeUpdate(sql);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				if(deleteFolder == 1) {
					String sql1 = "DELETE FROM graphs.business_process_files WHERE parent_id= '"+id+"'"; 
					try {
						Statement stmt = conn.createStatement();
						stmt.executeUpdate(sql1);
						return 1;
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
						return 0;
					}
				}
				else {
					return 0;
				}
			}
			else {
				 String sql2 = "DELETE FROM graphs.business_process_folders WHERE id= '"+id+"' AND owner_of_the_object = '"+username+"'"; 
				 int deleteFolder = 0;
				 try {
						Statement stmt = conn.createStatement();
						deleteFolder = stmt.executeUpdate(sql2);
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}			 
				 if(deleteFolder == 1) {
					 String sql3 = "DELETE FROM graphs.business_process_files WHERE parent_id= '"+id+"'"; 
					 try {
							Statement stmt = conn.createStatement();
							stmt.executeUpdate(sql3);
							return 1;
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
							return 0;
						}			 
				 }
				 else {
					 return 0; 
				 }
			}
		}
		@Override
		public int delBusinessProcessRowData(String graphID) {
			// TODO Auto-generated method stub
			String sql = "UPDATE graphs.business_process_files SET status = '0' WHERE id = '"+graphID+"' ";
			try {
				Statement stmt = conn.createStatement();
				return stmt.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return 0;
			}
		}
		@Override
		public int restoreBusinessProcessData(String graphID) {
			// TODO Auto-generated method stub
			String sql = "UPDATE graphs.business_process_files SET status = '1' WHERE id = '"+graphID+"' ";
			try {
				Statement stmt = conn.createStatement();
				return stmt.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return 0;
			}
		}	
		@Override
		public int deleteBusinessProcessPermanently(int id, String username) {
			
			// TODO Auto-generated method stub
			String checkAdmin = "SELECT role FROM EEATool.user_roles WHERE username= '"+username+"' ";	
//			
			List<String> columns = new ArrayList<String>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(checkAdmin);
				while (rs.next()) {
					String attVal = "";
					try {
						attVal = rs.getString("role");
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						attVal = "";
					}
					columns.add(attVal);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			if(columns.get(0).equals("ROLE_ADMIN")) {	
				String sql1 = "DELETE FROM graphs.business_process_files WHERE id= '"+id+"'"; 
				try {
					Statement stmt = conn.createStatement();
					return stmt.executeUpdate(sql1);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					return 0;
				}
			}
			else {
				 String sql3 = "DELETE FROM graphs.business_process_files WHERE id= '"+id+"' AND owner_of_the_object = '"+username+"'"; 
				 try {
						Statement stmt = conn.createStatement();
						return stmt.executeUpdate(sql3);
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
						return 0;
					}
			}
		}
		@Override
		public List<String> checkAllFileStatus(String graphID, String tableName) {
			String checkAllFileStatus = "SELECT status FROM graphs."+tableName+" WHERE id = '"+graphID+"'";
			List<String> columns = new ArrayList<String>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(checkAllFileStatus);
				while (rs.next()) {
					String attVal = "";
					try {
						attVal = rs.getString("status");
					} catch (SQLException e) {
						attVal = "";
					}
					columns.add(attVal);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return columns;

		}	
		@Override
		public List<String> getAllGraphLastDate(String dbName, String graphID, String tableName) {
			String graphLastDate = "SELECT last_time_updated FROM graphs."+tableName+" WHERE id = '"+graphID+"'";
			List<String> columns = new ArrayList<String>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(graphLastDate);
				while (rs.next()) {
					String attVal = "";
					try {
						attVal = rs.getString("last_time_updated");
					} catch (SQLException e) {
						attVal = "";
					}
					columns.add(attVal);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return columns;
		}	
		@Override
		public String getAllGraph(String dbName, String username, String tableName,String graphID,String graphname,String company_name) {
			String sql = "SELECT filePath FROM "+dbName+"."+tableName+" WHERE company_name =\'"+company_name+"\' && id = \'"+graphID+"\' && status = '1' ";
			List<String> columns = new ArrayList<String>();
			try {
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					String graph = rs.getString("filePath");
					columns.add(graph);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return columns.get(0);
		}		
		@Override
		public int saveBusinessProcessJson(String LogFileName , String username, String graphname, String graphID) {
	        String sql = "UPDATE graphs.business_process_files SET filePath = '"+LogFileName+"' WHERE id = '"+graphID+"'";
	        System.out.println("update sql"+sql);
	        try {
				Statement stmt = conn.createStatement();
				return stmt.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return 0;
			}
		}
		@Override
		public int updateBusinessProcessUpdatedDate(String dbName,String tableName,String time,String id) {
			String sql = "UPDATE "+dbName+"."+tableName+" SET last_time_updated = '"+time+"' WHERE id="+id;
			try {
				Statement stmt = conn.createStatement();
				return stmt.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return 0;
			}
		}		
}
		
