package net.lt.eaze.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.Duration;
import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Properties;
import java.util.Set;
import java.util.TreeMap;

import java.util.logging.FileHandler;
import java.util.logging.Logger;
import java.lang.Object;
import java.math.BigDecimal;
import java.util.logging.Formatter;
import java.util.logging.SimpleFormatter;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JPanel;

import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.naming.AuthenticationException;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;
import javax.xml.bind.Unmarshaller;

import static javax.swing.JOptionPane.showMessageDialog;

import java.io.File;
import java.io.FileInputStream;
//import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
//import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.core.io.InputStreamResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.session.SessionRegistry;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.support.ServletContextResource;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.NoHandlerFoundException;

import com.lowagie.text.DocumentException;
import com.sun.xml.bind.v2.schemagen.xmlschema.AttributeType;

//import jdk.nashorn.internal.ir.RuntimeNode.Request;

import org.apache.commons.codec.DecoderException;
import org.apache.commons.codec.binary.Hex;
import org.apache.commons.io.FileSystemUtils;
import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.RandomStringUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.poi.common.usermodel.HyperlinkType;
import org.apache.poi.hssf.usermodel.HSSFDateUtil;
import org.apache.poi.hssf.util.HSSFColor;
import org.apache.poi.openxml4j.util.ZipSecureFile;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.CreationHelper;
import org.apache.poi.ss.usermodel.DataFormat;
import org.apache.poi.ss.usermodel.DataFormatter;
import org.apache.poi.ss.usermodel.FillPatternType;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.IndexedColors;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.VerticalAlignment;
import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.poi.ss.util.CellRangeAddressList;
import org.apache.poi.util.SystemOutLogger;
import org.apache.poi.xssf.usermodel.DefaultIndexedColorMap;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFCellStyle;
import org.apache.poi.xssf.usermodel.XSSFColor;
import org.apache.poi.xssf.usermodel.XSSFDataValidation;
import org.apache.poi.xssf.usermodel.XSSFDataValidationConstraint;
import org.apache.poi.xssf.usermodel.XSSFDataValidationHelper;
import org.apache.poi.xssf.usermodel.XSSFFont;
import org.apache.poi.xssf.usermodel.XSSFHyperlink;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.apache.xmlbeans.impl.schema.SoapEncSchemaTypeSystem;
import org.apache.poi.xssf.usermodel.XSSFRow;

import net.lt.eaze.catalog.Catalog;
import net.lt.eaze.catalog.catalogPDF_Generator;
import net.lt.eaze.catalog.tbody;
import net.lt.eaze.catalog.thead;
import net.lt.eaze.catalog.tr;
import net.lt.eaze.config.encryption_decryption;
import net.lt.eaze.model.ModelElement;
import net.lt.eaze.model.ModelRelationship;
import net.lt.eaze.charts.clusteredChart;
import net.lt.eaze.dao.EnterpriseDAO;
import net.lt.eaze.dao.namedLicenseValidation;
import net.lt.eaze.matrix.downloadMatrix;
import net.lt.eaze.matrix.saveMatrix;
import net.lt.eaze.matrix.Matrix;
import net.lt.eaze.model.ModelElement;
import net.lt.eaze.model.ModelRelationship;
import net.lt.eaze.model.RelationsModel;
import net.lt.eaze.model.addRowsModel;
import net.lt.eaze.model.attrModel;
import net.lt.eaze.model.attributesInformation;
import net.lt.eaze.model.attributesInformationModel;
import net.lt.eaze.model.tblModel;
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
import net.lt.eaze.model.tableModel;
import net.lt.eaze.model.tblModel;
import net.lt.eaze.model.timeLineGraph;
import net.lt.eaze.model.xml.Attribute;
import net.lt.eaze.model.xml.Relation;
import net.lt.eaze.model.xml.Schema;
import net.lt.eaze.model.xml.Table;
import net.lt.eaze.model.xml.addAllowableValues;
import net.lt.eaze.model.xml.addRelationsFromXML;
import net.lt.eaze.matrix.Matrix;
import net.lt.eaze.model_metamodel2.Element;
import net.lt.eaze.model_metamodel2.Element_Attributes;
import net.lt.eaze.model_metamodel2.Metamodel_Variable;
import net.lt.eaze.model_metamodel2.Relationship_Attributes;
import net.lt.eaze.model_metamodel2.Relationship_Connector;
import net.lt.eaze.model_metamodel2.Relationship_Matrix;
import net.lt.eaze.model_metamodel2.Relationships;
import net.lt.eaze.repositoryManagement.pools;
import net.lt.eaze.userManagement.roleDetails;

import org.jgrapht.graph.DefaultDirectedGraph;
import org.joda.time.DateTime;
import org.joda.time.format.DateTimeFormat;
import org.python.core.PyObject;
import org.python.util.PythonInterpreter;

@Controller
public class MainController {
	// MessageFilePath starts here Local
		String remainingString= "Project\\src\\net\\lt\\eaze\\resources\\locale";
	
	// MessageFilePath starts here Online
//	String remainingString= "WEB-INF\\classes\\net\\lt\\eaze\\resources\\locale";
	// MessageFilePath ends here
	String dbName;
	String global; //global variable
	List<Table> tablesForLL = new ArrayList<Table>();
	List<Relation> relations = new ArrayList<Relation>();
//	List<Attribute> attributes = new ArrayList<Attribute>();
	int indexForLL = 0;

	@Autowired
	private EnterpriseDAO enterpriseDAO;
	private methods methods;
	
	@Autowired
    private ServletContext servletContext;

//	@RequestMapping(value = "/")
//	public ModelAndView home(ModelAndView model){
//		model.setViewName("explorer");
//		return model;
//	}
	
	@RequestMapping(value = "/checkQuery", method = RequestMethod.GET)
	public ModelAndView checkQuery(ModelAndView model) throws SQLException {
		
		
//		Instant inst1 = Instant.now();
//		enterpriseDAO.checkQuery();
//		Instant inst2 = Instant.now();       
//		System.out.println("Elapsed Time: "+ Duration.between(inst1, inst2).toString());
		System.out.println("Old Procedure");
		Instant inst_old1 = Instant.now();
		enterpriseDAO.checkUpdateQuery();
		Instant inst_old22 = Instant.now();       
		System.out.println("Elapsed  Update Time old procedure: "+ Duration.between(inst_old1, inst_old22).toString());
		
		Instant inst_old = Instant.now();
		enterpriseDAO.checkQuery();
		Instant inst_old2 = Instant.now();       
		System.out.println("Elapsed  Select Time old procedure: "+ Duration.between(inst_old, inst_old2).toString());
		
		Instant inst_old12 = Instant.now();
		enterpriseDAO.checkWhereQuery();
		Instant inst_old222 = Instant.now();       
		System.out.println("Elapsed  Select With Where Condition old procedure: "+ Duration.between(inst_old12, inst_old222).toString());
		
		
//		
		System.out.println("\nNew Procedure");
		Connection conn = DriverManager.getConnection("jdbc:mysql://159.223.192.8:3306/?useUnicode=yes&characterEncoding=UTF-8&useSSL=false", "checking", "checking123");
	         Statement stmt = conn.createStatement();
	         
	         ////////// update
	         Instant inst1 = Instant.now();
	         String sql = "UPDATE EEATool.users SET email = 'checkingMail' WHERE id = '1640' ";
	         stmt.executeUpdate(sql);
	         Instant inst2 = Instant.now();    
	         System.out.println("Elapsed Update Time: "+ Duration.between(inst1, inst2).toString());
	         ////////
	         
	         //////// insert
	         Instant inst11 = Instant.now();
	         ResultSet rs = stmt.executeQuery("SELECT * FROM mim_metamodel.relationships");
	         Instant inst22 = Instant.now();
	         System.out.println("Elapsed Select Time: "+ Duration.between(inst11, inst22).toString());
	         // Extract data from result set
	         
	         //////// insert
	         Instant inst111 = Instant.now();
	         ResultSet rs1 = stmt.executeQuery("SELECT id,Source,Destination,Source_P_Key,Destination_P_Key,Source_Attribute_Name,Destination_Attribute_Name,Source_Attribute_Value,Destination_Attribute_Value,Relationship_Type,Bidirection_Relationship_Pair,status,owner_of_the_object,last_time_updated FROM mim_metamodel.relationships");
	         Instant inst222 = Instant.now();
	         System.out.println("Elapsed Select Time With Where Condition: "+ Duration.between(inst111, inst222).toString());
	         // Extract data from result set
	         System.out.println("\n======================================\n");
		
		model.setViewName("checkQuery");
		return model;
	}

	net.lt.eaze.model_metamodel2.Schema unif = new net.lt.eaze.model_metamodel2.Schema();

	public boolean isUserLoggedIn() {
		return (SecurityContextHolder.getContext().getAuthentication().getPrincipal() instanceof UserDetails);
	}

	@RequestMapping(value = {"index" })
	public ModelAndView home(ModelAndView model, HttpSession session, HttpServletRequest httpServletRequest,String lang) throws JAXBException, FileNotFoundException {
		if (isUserLoggedIn()) {
			unif = (net.lt.eaze.model_metamodel2.Schema) session.getAttribute("unif");
			dbName = unif.getDbName();
			// role_details set in session attribute***
			Collection<? extends GrantedAuthority> userRole = null;
			String username = "";
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			if (!(auth instanceof AnonymousAuthenticationToken)) {
				UserDetails userDetail = (UserDetails) auth.getPrincipal();
				userDetail = (UserDetails) auth.getPrincipal();
				userRole = userDetail.getAuthorities();
				username = userDetail.getUsername();
			}
			String userRoleStr = userRole.toArray()[0].toString();
			
//			roleDetails role_details = enterpriseDAO.getRoleDetails(userRoleStr,username).get(0);
//			session.setAttribute("role_details", role_details);
			System.out.println("lang "+lang);
//			JAXBContext context = JAXBContext.newInstance(net.lt.eaze.model_metamodel2.Schema.class);
//			String path = session.getServletContext().getRealPath("/");
//			Unmarshaller um = context.createUnmarshaller();
//			unif = (net.lt.eaze.model_metamodel2.Schema) um.unmarshal(new FileReader(path + "/" + "amf1.xml"));
			Locale currentLocale = httpServletRequest.getLocale();
			
			String language_name = currentLocale.getLanguage();
//			System.out.println(currentLocale.getDisplayLanguage());
//			System.out.println(currentLocale.getDisplayCountry());
//			System.out.println("Language "+currentLocale.getLanguage());
//			System.out.println(currentLocale.getCountry());
//			try(PythonInterpreter pyInterp = new PythonInterpreter()) {
//				pyInterp.exec("print('Hello World')\n");
//				pyInterp.exec("x = 2+2");
//				PyObject x = pyInterp.get("x");
//				pyInterp.exec("print('x',x)\n");
//				System.out.println("x: " + x);
//			}
			
//			enterpriseDAO.createActiveUserTable(username, role_details.getCompany_name());
			
			if(lang == "ar") {
				System.out.println("Inside Arabic");
				model.setViewName("explorer_rtl");
			}
			else if(language_name == "en"){
			    List<net.lt.eaze.model.userprofile> getuserprofiledetails = enterpriseDAO.getuserprofiledetails(username);
			  	getuserprofiledetails.get(0).setUserRole("ROLE_USER");
			  	model.addObject("userProfileDetials", getuserprofiledetails.get(0));
				model.setViewName("explorer");
			}
			else {
				model.setViewName("explorer");
			}
			
			/// License Check on module click START
			methods methodObj = new methods();
			boolean isNamedAllowed = false;
			List<namedLicenseValidation> namedLicenseDetails = enterpriseDAO.getNamedLicenseDetails(username);
			if(namedLicenseDetails.size()>0) {
				if( methodObj.isLicenseNotExpired(namedLicenseDetails.get(0))==true ) { 
					String company_name = (String) session.getAttribute("company_name");
					roleDetails role_details = enterpriseDAO.getRoleDetails(namedLicenseDetails.get(0).getUser_role(),username,company_name).get(0);
					if(role_details.isEaPortal() == true) {
						isNamedAllowed = true;
						session.setAttribute("role_details", role_details);
					}
				}
			} 
			if(isNamedAllowed == true) {
				return model;
			}else {
				boolean isConcurrentAllowed = false;
				String company_name = (String) session.getAttribute("company_name");
				List<pools> pools = enterpriseDAO.getPoolNameAndRolesForLicenseCheck(company_name);
				String user_id = enterpriseDAO.getUserId(username).get(0);
				for(pools p:pools) {
					String poolName = p.getPool_name();
					String poolRole = p.getRole_type();
					String poolUsersTableName = "pool_"+poolName+"_users";
					String poolLicenseTableName = "pool_"+poolName+"_license";
					String poolActiveUsers = "pool_"+poolName+"_active_users";
					roleDetails role_details = enterpriseDAO.getRoleDetails(poolRole,username,company_name).get(0);
					if(role_details.isEaPortal() == true) {
						List<String> poolUsers = enterpriseDAO.checkIfUserExistInPool(poolUsersTableName,user_id);
						if(poolUsers.size()>0) {
							List<namedLicenseValidation> concurrentLicenseDetails = enterpriseDAO.getConcurrentLicenseDetails(poolActiveUsers,poolLicenseTableName);
							List<String> user_check = enterpriseDAO.checkIfUserAlreadyExistsInActiveUsersTable(poolActiveUsers,user_id);
							if(user_check.size()>0) {
								isConcurrentAllowed = true;
								break;
							}
							if(concurrentLicenseDetails.size()==0) {
								continue;
							}
							if( methodObj.isLicenseNotExpired(concurrentLicenseDetails.get(0))==true ) {
								System.out.println(poolActiveUsers+ concurrentLicenseDetails.get(0).getId()+ user_id);
								enterpriseDAO.insertValuesInActivePoolUsers(poolActiveUsers, concurrentLicenseDetails.get(0).getId(), user_id);
								isConcurrentAllowed = true;
								session.setAttribute("role_details", role_details);
								break;
							}
						}
					}
				}
				if (isConcurrentAllowed == true) {
					return model;
				} else {
					model.setViewName("redirect:/home");
					return model;
				}
			}
			/// License Check on module click END	
		} else {
			model.setViewName("login");
		}
		return model;
	}

	@RequestMapping(value = "organizationalPortal", method = RequestMethod.GET)
	public ModelAndView organizationalPortal(ModelAndView model, HttpSession session, HttpServletRequest httpServletRequest,String lang) throws JAXBException, IOException, FileNotFoundException {
		if (isUserLoggedIn()) {
			unif = (net.lt.eaze.model_metamodel2.Schema) session.getAttribute("unif");
			dbName = unif.getDbName();
//			dbName = unif.getDbName();
			String path = session.getServletContext().getRealPath("/");
			String[] splitString = path.split("\\.metadata");
			Locale locale = LocaleContextHolder.getLocale();
//			Locale locale = new Locale("en");
			
//			For Local
			String filePath = splitString[0] + remainingString;
			FileReader reader=new FileReader(filePath+"\\\\messages_"+locale+".properties");
			
//			For Online
//			FileReader reader=new FileReader(path+"\\\\messages_"+locale+".properties");
			
//			String path = session.getServletContext().getRealPath("/");
//			FileReader reader=new FileReader(path+"messages_ar.properties");  
		    Properties p=new Properties();  
		    p.load(reader);   
		    HashMap<String, String> messages_data=new HashMap<String, String>();
		    Set<Object> keys = p.keySet();
		    for(Object k:keys){
		        String key=(String) k;
		        String value=p.getProperty(key);
		        messages_data.put(key, value);
		    }
		    model.addObject("messages_data",messages_data);
			String username = "";
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			if (!(auth instanceof AnonymousAuthenticationToken)) {
				UserDetails userDetail = (UserDetails) auth.getPrincipal();
				System.out.println(userDetail);
				username = userDetail.getUsername();
			}
			List<net.lt.eaze.model.userprofile> getuserprofiledetails = enterpriseDAO.getuserprofiledetails(username);
			model.addObject("userProfileDetials", getuserprofiledetails.get(0));
			model.setViewName("organizationalPortal");
			/// License Check on module click START
			methods methodObj = new methods();
			boolean isNamedAllowed = false;
			List<namedLicenseValidation> namedLicenseDetails = enterpriseDAO.getNamedLicenseDetails(username);
			if(namedLicenseDetails.size()>0) {
				if( methodObj.isLicenseNotExpired(namedLicenseDetails.get(0))==true ) {
					String company_name = (String) session.getAttribute("company_name");
					roleDetails role_details = enterpriseDAO.getRoleDetails(namedLicenseDetails.get(0).getUser_role(),username,company_name).get(0);
					if(role_details.isOrganizationalPortal() == true) {
						isNamedAllowed = true;
						session.setAttribute("role_details", role_details);
					}
				}
			}
			if(isNamedAllowed == true) {
				return model;
			}else {
				boolean isConcurrentAllowed = false;
				String company_name = (String) session.getAttribute("company_name");
				List<pools> pools = enterpriseDAO.getPoolNameAndRolesForLicenseCheck(company_name);
				String user_id = enterpriseDAO.getUserId(username).get(0);
				for(pools poolObj:pools) {
					String poolName = poolObj.getPool_name();
					String poolRole = poolObj.getRole_type();
					String poolUsersTableName = "pool_"+poolName+"_users";
					String poolLicenseTableName = "pool_"+poolName+"_license";
					String poolActiveUsers = "pool_"+poolName+"_active_users";
					roleDetails role_details = enterpriseDAO.getRoleDetails(poolRole,username,company_name).get(0);
					if(role_details.isOrganizationalPortal() == true) {
						List<String> poolUsers = enterpriseDAO.checkIfUserExistInPool(poolUsersTableName,user_id);
						if(poolUsers.size()>0) {
							List<namedLicenseValidation> concurrentLicenseDetails = enterpriseDAO.getConcurrentLicenseDetails(poolActiveUsers,poolLicenseTableName);
							
							List<String> user_check = enterpriseDAO.checkIfUserAlreadyExistsInActiveUsersTable(poolActiveUsers,user_id);
							if(user_check.size()>0) {
								isConcurrentAllowed = true;
								break;
							}
							if(concurrentLicenseDetails.size()==0) {
								continue;
							}
							if( methodObj.isLicenseNotExpired(concurrentLicenseDetails.get(0))==true ) {
								System.out.println(poolActiveUsers+ concurrentLicenseDetails.get(0).getId()+ user_id);
								enterpriseDAO.insertValuesInActivePoolUsers(poolActiveUsers, concurrentLicenseDetails.get(0).getId(), user_id);
								isConcurrentAllowed = true;
								session.setAttribute("role_details", role_details);
								break;
							}
						}
					}
				}
				if(isConcurrentAllowed == true) {
					return model;
				}else {
					model.setViewName("redirect:/home");
					return model;
				}
			}
			/// License Check on module click END
		}
		else {
			model.setViewName("login");
		}
		return model;
	}
	
	@RequestMapping(value = "organizationalPortal_rtl", method = RequestMethod.GET)
	public ModelAndView organizationalPortal_rtl(ModelAndView model, HttpSession session, HttpServletRequest httpServletRequest,String lang) throws JAXBException, IOException {
		if (isUserLoggedIn()) {
			String path = session.getServletContext().getRealPath("/");
			String[] splitString = path.split("\\.metadata");
//			Locale locale = LocaleContextHolder.getLocale();	
			Locale locale = new Locale("ar");
			
//			For Local
			String filePath = splitString[0] + remainingString;
			FileReader reader=new FileReader(filePath+"\\\\messages_"+locale+".properties");
//			For Online
//			FileReader reader=new FileReader(path+"\\\\messages_"+locale+".properties");
			
//			String path = session.getServletContext().getRealPath("/");
//			FileReader reader=new FileReader(path+"messages_ar.properties");  
		    Properties p=new Properties();  
		    p.load(reader);   
		    HashMap<String, String> messages_data=new HashMap<String, String>();
		    Set<Object> keys = p.keySet();
		    for(Object k:keys){
		        String key=(String) k;
		        String value=p.getProperty(key);
		        messages_data.put(key, value);
		    }
		    System.out.println("messages_data"+messages_data);
		    model.addObject("messages_data",messages_data);
			model.setViewName("organizationalPortal_rtl");
			return model;			
		}
		else {
			model.setViewName("login");
		}
		return model;
	}	
	
	@RequestMapping(value = "/createDatabase", method = RequestMethod.GET)
	public ModelAndView newDatabase(ModelAndView model) {
		dbModel newDatabase = new dbModel();
		model.addObject("db", newDatabase);
		model.setViewName("createDatabase");
		return model;
	}

	@RequestMapping(value = "/back_button")
	public ModelAndView back(ModelAndView model) {
//		model.setViewName("index");	
//		return model;
		return new ModelAndView("redirect:/");
	}
	
	@RequestMapping(value = "/metamodelVariables", method = RequestMethod.GET)
	public ModelAndView newDatabase1(ModelAndView model) {
		dbModel newDatabase = new dbModel();
		model.addObject("db", newDatabase);
		model.setViewName("metamodelVariables");
		return model;
	}

	@RequestMapping(value = "/admin/back_button")
	public ModelAndView back1(ModelAndView model) {
//		model.setViewName("index");	
//		return model;
		return new ModelAndView("redirect:/");
	}

	@RequestMapping(value = "/newDB", method = RequestMethod.POST)
	public ModelAndView createDB(@ModelAttribute dbModel db) {
		enterpriseDAO.createDB(db);
		return new ModelAndView("redirect:/");
	}

	@RequestMapping(value = "/createTable", method = RequestMethod.GET)
	public ModelAndView newContact(ModelAndView model) {
		List<dbModel> dbList = enterpriseDAO.listDb();
		model.addObject("dbList", dbList);
		tableModel newTable = new tableModel();
		model.addObject("createTable", newTable);
		model.setViewName("createTable");
		return model;
	}

	@RequestMapping(value = "/newTable", method = RequestMethod.POST)
	public ModelAndView saveContact(@ModelAttribute tableModel createTable) {
		enterpriseDAO.createTable(createTable);
		return new ModelAndView("redirect:/");
	}

	@RequestMapping(value = "/findTables", method = RequestMethod.GET)
	public @ResponseBody List<tableModel> listTable(@RequestParam dbModel db_name) {
		List<tableModel> tableList = enterpriseDAO.listTable(db_name);
		return tableList;
	}

	@RequestMapping(value = "/createAttributes", method = RequestMethod.GET)
	public ModelAndView newAttr(ModelAndView model) {
		List<dbModel> dbList = enterpriseDAO.listDb();
		model.addObject("dbList", dbList);
		attrModel newAttr = new attrModel();
		model.addObject("newAttr", newAttr);
		model.setViewName("createAttributes");
		return model;
	}

	@RequestMapping(value = "/newAttr", method = RequestMethod.POST)
	public ModelAndView createAttribute(@ModelAttribute attrModel newAttr) throws SQLException {
		enterpriseDAO.createAttr(newAttr);
		return new ModelAndView("redirect:/");
	}

	@RequestMapping(value = "/findAttributes", method = RequestMethod.GET)
	public @ResponseBody List<String> listAttributes(@RequestParam String dbName, String tableName) {
		tableName = tableName.replaceAll("\\s+", "_");
		tableName = tableName.toLowerCase();
		List<String> attrList = enterpriseDAO.listAttributes(dbName, tableName);
		System.out.println(attrList);
		return attrList;
	}

	@RequestMapping(value = "/add_rows", method = RequestMethod.GET)
	public ModelAndView addRows(ModelAndView model) {
		List<dbModel> dbList = enterpriseDAO.listDb();
		model.addObject("dbList", dbList);
		addRowsModel newRow = new addRowsModel();
		model.addObject("newRow", newRow);
		model.setViewName("add_rows");
		return model;
	}

	@RequestMapping(value = "/newRow", method = RequestMethod.POST)
	public ModelAndView addRow(@ModelAttribute addRowsModel newRow) {
		enterpriseDAO.addRows(newRow);
		return new ModelAndView("redirect:/");
	}

	@RequestMapping(value = "/get_table_data", method = RequestMethod.GET)
	public @ResponseBody List<addRowsModel> listRows(@RequestParam String db_name, String tbl_name, String attr_name) {
//		System.out.println(dbName+""+tableName);
		List<addRowsModel> rowsList = enterpriseDAO.listRows(db_name, tbl_name, attr_name);
		return rowsList;
	}

	@RequestMapping(value = "/add_relations", method = RequestMethod.GET)
	public ModelAndView addRelations(ModelAndView model) {
		List<dbModel> dbList = enterpriseDAO.listDb();
		model.addObject("dbList", dbList);
		RelationsModel newRel = new RelationsModel();
		model.addObject("newRel", newRel);
		model.setViewName("addRelations");
		return model;
	}

	@RequestMapping(value = "/add_relations", method = RequestMethod.POST)
	public ModelAndView addRow(@ModelAttribute RelationsModel newRow) {
		enterpriseDAO.addRelations(newRow);
		return new ModelAndView("redirect:/");
	}

	@RequestMapping(value = "/xml")
	public ModelAndView XML(ModelAndView model) {
		model.setViewName("xml");
		return model;
	}

	@RequestMapping(value = "/from_xml")
	public ModelAndView fromXML(ModelAndView model) {
		List<dbModel> dbList = enterpriseDAO.listDb();
		model.addObject("dbList", dbList);
		model.setViewName("fromXML");
		return model;
	}

	@RequestMapping(value = "/existing_xml")
	public ModelAndView existing_XML(ModelAndView model) {
		model.setViewName("existing_xml");
		return model;
	}

	@RequestMapping("/fromXMLback")
	public String from_xml(@RequestParam String database_name, String table_name)
			throws JAXBException, FileNotFoundException {
		String XML_FILE = database_name + ".xml";
		Schema schema = new Schema();

		schema.setDbName(dbName);
		schema.setTables(tablesForLL);
		schema.setRelations(relations);

		// create JAXB context
		JAXBContext context = JAXBContext.newInstance(Schema.class);

		System.out.println("<!----------Generating the XML Output-------------->");

		// Marshalling [Generate XML from JAVA]
		// create Marshaller using JAXB context
		Marshaller m = context.createMarshaller();
		// To format the [to be]generated XML output
		m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, Boolean.TRUE);
		// Marshall it and write output to System.out or to a file
		m.marshal(schema, System.out);
		m.marshal(schema, new File(XML_FILE));

//		System.out.println("<!---------------Generating the Java objects from XML Input-------------->");
//		Unmarshaller um = context.createUnmarshaller();
//		// Unmarshall the provided XML into an object
//		Schema unif = (Schema) um.unmarshal(new FileReader(XML_FILE));
//		List<Table> tablesList = unif.getTables();
//		System.out.println("Database: "+unif.getDbName());
//		//System.out.println(unif.getTableName());
//		for (Table a : tablesList) {
//			System.out.println("Attribute : " + a);
//		}
		tablesForLL.clear();
		relations.clear();
//		attributes.clear();
		return "fromXML";
	}

	@RequestMapping(value = "/download_xml", method = RequestMethod.GET)
	public ResponseEntity<Object> downloadFile() throws IOException {
		String filename = dbName + ".xml";
		File file = new File(filename);
		InputStreamResource resource = new InputStreamResource(new FileInputStream(file));

		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Disposition", String.format("attachment; filename=\"%s\"", file.getName()));
		headers.add("Cache-Control", "no-cache, no-store, must-revalidate");
		headers.add("Pragma", "no-cache");
		headers.add("Expires", "0");

		ResponseEntity<Object> responseEntity = ResponseEntity.ok().headers(headers).contentLength(file.length())
				.contentType(MediaType.parseMediaType("application/txt")).body(resource);

		return responseEntity;
	}
	
	@RequestMapping(value = "/Echo", method = RequestMethod.POST)
	public void downloadFile(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		String filename = request.getParameter("filename");
		String xml = request.getParameter("xml");

		if (filename == null)
		{
			filename = "export";
		}
		
		if (xml != null && xml.length() > 0)
		{
			String format = request.getParameter("format");

			if (format == null)
			{
				format = "xml";
			}

			if (!filename.toLowerCase().endsWith("." + format))
			{
				filename += "." + format;
			}
			
			// Decoding is optional (no plain text values allowed)
			if (xml != null && xml.startsWith("%3C"))
			{
				xml = URLDecoder.decode(xml, "UTF-8");
			}

			response.setContentType("text/plain");
			response.setHeader("Content-Disposition",
					"attachment; filename=\"" + filename
							+ "\"; filename*=UTF-8''" + filename);
			response.setStatus(HttpServletResponse.SC_OK);

			OutputStream out = response.getOutputStream();
			out.write(xml.getBytes("UTF-8"));
			out.flush();
			out.close();
		}
		else
		{
			response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
		}
	}

	@RequestMapping(value = "/add_values_in_linkedList", method = RequestMethod.GET)
	public @ResponseBody List<Table> values_forXML(@RequestParam String database_name, String categoryName,
			String tableName, String tableDefinition, String attrName, String attribute_type, String attribute_length) {

//		System.out.println(database_name);
//		System.out.println(categoryName);
//		System.out.println(tableName);
//		System.out.println(attrName);
//		System.out.println(attribute_type);
//		System.out.println(attribute_length);
		Table table = new Table();
		Attribute a1 = new Attribute();
		List<Attribute> attributes = new ArrayList<Attribute>();
		int i = -1;

		if (database_name != "" && tableName != "") {
			if (dbName == null) {
				dbName = database_name;
			}

			for (Table object : tablesForLL) {
				String temp1 = object.getTableName();

				if (tableName.equals(temp1)) {
					i = tablesForLL.indexOf(object);
					attributes = object.getAttributes();
					if (tableDefinition == null && object.getDefinition() != null) {
						tableDefinition = object.getDefinition();
					}
				}
			}
			if (!(attrName.equals(""))) {
				a1.setAttributeName(attrName);
				a1.setAttributeType(attribute_type);
//				a1.setAttributeLength(attribute_length);
			}
			attributes.add(a1);
			table.setAttributes(attributes);
			table.setTableName(tableName);
			table.setCategoryName(categoryName);
			table.setDefinition(tableDefinition);
			if (i == -1) {
				tablesForLL.add(table);
			} else {
				tablesForLL.set(i, table);
			}
		}
		System.out.println("\n This: " + tablesForLL + "\n\n");

		return tablesForLL;
	}

	@RequestMapping(value = "/getElementsFromXML", method = RequestMethod.GET)
	public @ResponseBody List<String> getElementsFromXML(HttpSession session) {
		unif = (net.lt.eaze.model_metamodel2.Schema) session.getAttribute("unif");
		System.out.println("unif: "+unif.getElements());
		List<Element> elements = unif.getElements();
		List<String> catalogElements = new ArrayList<String>();
		for(Element e1: elements) {
			catalogElements.add(e1.getElementName());
		}
		return catalogElements;
	}
	
	@RequestMapping(value = "/getAttributesFromDB", method = RequestMethod.GET)
	public @ResponseBody List<String> getAttributesFromDB(@RequestParam String elementName) {
		dbName = unif.getDbName();
		List<String> attributes = enterpriseDAO.getAttributesFromDB(dbName,elementName.replaceAll("\\s+", "_"));
		return attributes;
	}
	
	@RequestMapping(value = "/getSameAttributesName", method = RequestMethod.GET)
	public @ResponseBody List<String> getSameAttributesName(@RequestParam String getElementName, String getAttribute) {
		List<String> attributes = enterpriseDAO.getSameAttributesName(dbName,getElementName.replaceAll("\\s+", "_"),getAttribute);
		return attributes;
	}
	
	@RequestMapping(value = "/generateChartTable", method = RequestMethod.GET)
	public @ResponseBody HashMap<String, ArrayList<String>>  generateChartTable(@RequestParam String elementName, String attributeValue) {
		elementName = elementName.replaceAll("\\s+", "_");
		String name = enterpriseDAO.getSelfGeneratedForGivenAttribute(dbName, elementName,"Name").get(0);
		System.out.println("attributeValue: "+attributeValue);
		String selfGeneratedAttributeValue = enterpriseDAO.getSelfGeneratedForGivenAttribute(dbName, elementName,attributeValue).get(0);
		List<String> nameRow = enterpriseDAO.getRowsForChart(dbName,elementName,name,selfGeneratedAttributeValue);
		List<String> attributeRow = enterpriseDAO.getRowsForChart(dbName,elementName,selfGeneratedAttributeValue,selfGeneratedAttributeValue);
		
		HashMap<String, ArrayList<String>> allData = new HashMap<String, ArrayList<String>>();
		allData.put("nameRow", (ArrayList<String>) nameRow);
		allData.put("attributeRow", (ArrayList<String>) attributeRow);
		return allData;
	}
	
	@RequestMapping(value = "/generateMultipleChartTable", method = RequestMethod.GET)
	public @ResponseBody clusteredChart  generateMultipleChartTable(@RequestParam String elementName, @RequestParam(value = "attributeValue[]") List<String> attributeValue) {
		System.out.println("elementNameController "+elementName);
		System.out.println("attributeValueController "+attributeValue);
		clusteredChart clustered_chart = new clusteredChart();
		
		elementName = elementName.replaceAll("\\s+", "_");
		String name = enterpriseDAO.getSelfGeneratedForGivenAttribute(dbName, elementName,"Name").get(0);
		List<String> nameRow = new ArrayList<String>();
//		List<String> attributeRow = new ArrayList<String>();
		List<ArrayList<String>> attributeRow = new ArrayList<ArrayList<String>>();
		
		for(String av:attributeValue) {
			String selfGeneratedAttributeValue = enterpriseDAO.getSelfGeneratedForGivenAttribute(dbName, elementName,av).get(0);
			nameRow = enterpriseDAO.getRowsForMulitpleChart(dbName,elementName,name,selfGeneratedAttributeValue);
			List<String> attributeRow1 = enterpriseDAO.getRowsForMulitpleChart(dbName,elementName,selfGeneratedAttributeValue,selfGeneratedAttributeValue);
			attributeRow.add((ArrayList<String>) attributeRow1);
		}
//		HashMap<String, ArrayList<String>> allData = new HashMap<String, ArrayList<String>>();
//		allData.put("nameRow", (ArrayList<String>) nameRow);
//		allData.put("attributeRow", (ArrayList<String>) attributeRow);
		
		clustered_chart.setNameRow(nameRow);
		clustered_chart.setAttributeValues(attributeRow);
		System.out.println("clustered_chart: "+clustered_chart);
		return clustered_chart;
	}
	
	@RequestMapping(value = "/generateAverageMultipleChartTable", method = RequestMethod.GET)
	public @ResponseBody clusteredChart  generateAverageMultipleChartTable(@RequestParam String elementName, @RequestParam(value = "attributeValue[]") List<String> attributeValue) {
		System.out.println("elementNameController "+elementName);
		System.out.println("attributeValueController "+attributeValue);
		clusteredChart clustered_chart = new clusteredChart();
		
		elementName = elementName.replaceAll("\\s+", "_");
		String name = enterpriseDAO.getSelfGeneratedForGivenAttribute(dbName, elementName,"Name").get(0);
		List<String> nameRow = new ArrayList<String>();
//		List<String> attributeRow = new ArrayList<String>();
		List<ArrayList<String>> attributeRow = new ArrayList<ArrayList<String>>();
		
		for(String av:attributeValue) {
			String selfGeneratedAttributeValue = enterpriseDAO.getSelfGeneratedForGivenAttribute(dbName, elementName,av).get(0);
			nameRow = enterpriseDAO.getRowsForAverageMulitpleChart(dbName,elementName,name,selfGeneratedAttributeValue);
			List<String> attributeRow1 = enterpriseDAO.getRowsForAverageMulitpleChart(dbName,elementName,selfGeneratedAttributeValue,selfGeneratedAttributeValue);
			attributeRow.add((ArrayList<String>) attributeRow1);
		}
//		HashMap<String, ArrayList<String>> allData = new HashMap<String, ArrayList<String>>();
//		allData.put("nameRow", (ArrayList<String>) nameRow);
//		allData.put("attributeRow", (ArrayList<String>) attributeRow);
		
		clustered_chart.setNameRow(nameRow);
		clustered_chart.setAttributeValues(attributeRow);
		
		return clustered_chart;
	}
	
	@RequestMapping(value = "/getElementsForPalete", method = RequestMethod.GET)
	public @ResponseBody List<String> getElementsForPalete() {
		List<Element> elements = unif.getElements();
		List<String> paleteElements = new ArrayList<String>();
		int elementsLength = elements.size();
		for(int i=0;i<elementsLength;i++) {
			Element e1 = elements.get(i);
			if(i>0) {
				Element previous_e1 = elements.get(i-1);
				if(!previous_e1.getElementLayer().equals(e1.getElementLayer())) {
					paleteElements.add("break");
					paleteElements.add(e1.getElementName());
				}else {
					paleteElements.add(e1.getElementName());
				}
			}else {
				paleteElements.add(e1.getElementName());
			}
		}
		System.out.println(paleteElements.size());
		return paleteElements;
	}
	
	
	@RequestMapping(value = "/add_values_in_relationList", method = RequestMethod.GET)
	public @ResponseBody String values_forXML1(@RequestParam String from_tbl_name, String to_tbl_name,
			String relation) {
		Relation r = new Relation();
		r.setTable1(from_tbl_name);
		r.setTable2(to_tbl_name);
		r.setRelation(relation);
		relations.add(r);
		return "";
	}

	@RequestMapping(value = "/add_from_xml", method = RequestMethod.POST, consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
	public ModelAndView addFromXML(@RequestParam("file") MultipartFile file) throws IOException, JAXBException {
		ModelAndView model = new ModelAndView();
		JAXBContext context = JAXBContext.newInstance(Schema.class);
		Unmarshaller um = context.createUnmarshaller();
		Schema unif = (Schema) um.unmarshal(new FileReader(file.getOriginalFilename()));

		relations = unif.getRelations();
		tablesForLL = unif.getTables();
		dbName = unif.getDbName();

		System.out.println(relations);
		System.out.println(tablesForLL);
		System.out.println(dbName);

		model.addObject("dbName", dbName);
		model.addObject("tables", tablesForLL);
		// model.addObject("relations",relations);
		model.setViewName("fromXML");

		return model;
	}

	// ADDING DATA FROM XML TO DATABASE
	@RequestMapping(value = "/upload", method = RequestMethod.POST, consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
	public ModelAndView fileUpload(@RequestParam("file") MultipartFile file) throws IOException, JAXBException {
		File convertFile = new File(file.getOriginalFilename());
		convertFile.createNewFile();

		FileOutputStream fout = new FileOutputStream(convertFile);

		fout.write(file.getBytes());

		JAXBContext context = JAXBContext.newInstance(Schema.class);
		Unmarshaller um = context.createUnmarshaller();
		Schema unif = (Schema) um.unmarshal(new FileReader(file.getOriginalFilename()));

		List<Table> tablesList = unif.getTables();
		List<Relation> relationsList = unif.getRelations();
		dbName = unif.getDbName();
		System.out.println("Database: " + dbName);
		dbModel db = new dbModel();
		db.setDbName(dbName);
		enterpriseDAO.createDB(db);
		int tablesCreated = 0;
		for (Table a : tablesList) {
			tableModel createTable = new tableModel();
			a.setTableName(a.getTableName().replaceAll("\\s+", "_"));
			a.setTableName(a.getTableName().replaceAll("\\/+", "_"));
			createTable.setDbName(dbName);
//			createTable.setTableName("Allowable_Values");
//			enterpriseDAO.createTable(createTable);
			createTable.setTableName(a.getTableName());
			int abc = enterpriseDAO.createTable(createTable);
			tablesCreated += abc;
			System.out.println("Table: " + a.getTableName());
			if (a.getAttributes() != null) {
				for (Attribute b : a.getAttributes()) {
					attrModel newAttr = new attrModel();
					newAttr.setDbName(dbName);
					System.out.println("Att Name " + b.getAttributeName());
					System.out.println("Att Type " + b.getAttributeType());
					if (b.getAttributeName().equals("ID")) {
						b.setAttributeName("Attribute_ID");
					}
					if (b.getAttributeType().equals("List")) {
						System.out.println("\n\nHERE\n\n");
						addAllowableValues av = new addAllowableValues();
						av.setDbName(dbName);
						av.setTableName(a.getTableName());
						av.setAttributeName(b.getAttributeName());
						av.setAllowableValues(b.getAllowableValues());
						enterpriseDAO.addAllowableValues(av);
					}
					if (b.getAttributeType().equals("List") || b.getAttributeType().equals("RichText")
							|| b.getAttributeType().equals("Rich Text")) {
						b.setAttributeType("Text");
						System.out.println("\n\nCHECKING\n\n");
					}

					else if (b.getAttributeType().equals("Number") || b.getAttributeType().equals("Money")) {
						newAttr.setLength("11");
						b.setAttributeType("int");
					}
					b.setAttributeName(b.getAttributeName().replaceAll("\\s+", "_"));
					b.setAttributeName(b.getAttributeName().replaceAll("\\/+", "_"));
					newAttr.setTableName(a.getTableName());
					newAttr.setAttrName(b.getAttributeName());
					newAttr.setType(b.getAttributeType());
					// newAttr.setLength(b.getAttributeLength());
					try {
						enterpriseDAO.createAttr(newAttr);
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
			}
			System.out.println("\n");
		}
		System.out.println(relationsList);
		addRelationsFromXML ar = new addRelationsFromXML();
		ar.setDbName(dbName);

//		enterpriseDAO.addRelationsFromXML_Method(ar);
		int relationsCounter = 0;
		int generalEntitiesRel = 0;
		int itEntitiesRel = 0;
		int otherRel = 0;

		for (Relation c : relationsList) {
			String fT = "";
			String tT = "";

			fT = c.getTable1().replaceAll("\\s+", "_");
			ar.setFromTable(fT);
//			ar.setToTable(c.getTable2().replaceAll("\\s+","_"));
			ar.setRelation(c.getRelation().replaceAll("\\s+", "_"));
			System.out.println(c.getTable1_layer());
			boolean fromTbl = false;
			boolean toTbl = false;
			if (c.getTable1_layer().equals("General Entities")) {
				System.out.println("if");
				System.out.println("111");
				for (Table r : tablesList) {
					if (!(r.getCategoryName().equals("General Entities"))) {
						System.out.println("\n\nTABLE: " + r.getTableName());
						System.out.println("if then if");
						tT = r.getTableName().replaceAll("\\s+", "_");
						ar.setToTable(tT);
						for (Table a : tablesList) {
							String bT = a.getTableName().replaceAll("\\s+", "_");
							if (fT.equalsIgnoreCase(bT)) {
								System.out.println("\nFIRST IF TRUE\n");
								ar.setFromTableShortName(a.getTableShortName().replaceAll("\\s+", "_"));
								fromTbl = true;
							}
							if (tT.equalsIgnoreCase(bT)) {
								System.out.println("\nSECOND IF TRUE\n");
								ar.setToTableShortName(a.getTableShortName().replaceAll("\\s+", "_"));
								toTbl = true;
							}
						}
						if (fromTbl == true && toTbl == true) {
							generalEntitiesRel++;
							relationsCounter++;
							enterpriseDAO.addRelationsFromXML_Method1(ar, relationsCounter);
						}
					}
				}
			} else if (c.getTable1_layer().equals("Information Security")) {
				for (Table r : tablesList) {
					if ((r.getCategoryName().equals("Technology"))) {
						System.out.println("else if then if");
						tT = r.getTableName().replaceAll("\\s+", "_");
						ar.setToTable(tT);
						for (Table a : tablesList) {
							String bT = a.getTableName().replaceAll("\\s+", "_");
							if (fT.equalsIgnoreCase(bT)) {
								System.out.println("\nFIRST IF TRUE\n");
								ar.setFromTableShortName(a.getTableShortName().replaceAll("\\s+", "_"));
								fromTbl = true;
							}
							if (tT.equalsIgnoreCase(bT)) {
								System.out.println("\nSECOND IF TRUE\n");
								ar.setToTableShortName(a.getTableShortName().replaceAll("\\s+", "_"));
								toTbl = true;
							}
						}
						if (fromTbl == true && toTbl == true) {
							itEntitiesRel++;
							relationsCounter++;
							enterpriseDAO.addRelationsFromXML_Method1(ar, relationsCounter);
						}
					}
				}

			} else {
				tT = c.getTable2().replaceAll("\\s+", "_");
				ar.setToTable(tT);
				for (Table a : tablesList) {
					String bT = a.getTableName().replaceAll("\\s+", "_");
					if (fT.equalsIgnoreCase(bT)) {
						System.out.println("\nFIRST IF TRUE\n");
						ar.setFromTableShortName(a.getTableShortName().replaceAll("\\s+", "_"));
						fromTbl = true;
					}
					if (tT.equalsIgnoreCase(bT)) {
						System.out.println("\nSECOND IF TRUE\n");
						ar.setToTableShortName(a.getTableShortName().replaceAll("\\s+", "_"));
						toTbl = true;
					}
				}
				if (fromTbl == true && toTbl == true) {
					relationsCounter++;
					otherRel++;
					enterpriseDAO.addRelationsFromXML_Method1(ar, relationsCounter);
				}
			}
//			boolean fromTbl = false;
//			boolean toTbl = false;
//			ar.setToTable(tT);

//			if(fromTbl == true && toTbl == true) {
//			enterpriseDAO.addRelationsFromXML_Method1(ar, relationsCounter);
			relationsCounter++;
//			}
//			enterpriseDAO.addRelationsFromXML_Method1(ar);
//			}
		}
		System.out.println("Tables Created: " + tablesCreated);
		System.out.println("All Relations Created: " + relationsCounter);
		System.out.println("General Entities Relations: " + generalEntitiesRel);
		System.out.println("IT Entities Relations: " + itEntitiesRel);
		System.out.println("Other Relations" + otherRel);

		return new ModelAndView("redirect:/");
	}

	String language = "ar";
	@RequestMapping(value = "/fromExcel", method = RequestMethod.GET)
	public ModelAndView fromExcel(String currentLang,ModelAndView model, HttpSession session) throws JAXBException, FileNotFoundException{
		if (!isUserLoggedIn()) {
			model.setViewName("login");
			return model;
		}
		String username = "";
		int x = 1;
		List<String> getuserDetails = null;
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			username = userDetail.getUsername();
			getuserDetails = enterpriseDAO.getUserDetails(username);
			JAXBContext context = JAXBContext.newInstance(net.lt.eaze.model_metamodel2.Schema.class);
			String path = session.getServletContext().getRealPath("/");
			Unmarshaller um = context.createUnmarshaller();
			unif = (net.lt.eaze.model_metamodel2.Schema) um
					.unmarshal(new FileReader(path + "/" + ""+getuserDetails.get(0)+".xml"));
			dbName = unif.getDbName();
		}
		
		System.out.println("Backend currentLang: "+currentLang);
		String path = session.getServletContext().getRealPath("/");
		String[] splitString = path.split("\\.metadata");
		Locale locale = LocaleContextHolder.getLocale();
		
//		For Local
		String filePath = splitString[0] + remainingString;
		FileReader reader=new FileReader(filePath+"\\\\messages_"+locale+".properties");
		
//		For Online
//		FileReader reader=new FileReader(path+"\\\\messages_"+locale+".properties");		
//		if(currentLang == null){
//			Locale locale = new Locale("ar");
//			System.out.println("locale: "+locale);
////			For Local
//			String filePath = splitString[0] + remainingString;
//			System.out.println("filePath: "+filePath);
//			FileReader reader=new FileReader(filePath+"\\\\messages_"+locale+".properties");				
//		}
//		else if(currentLang.equals("Ar")) {
//			System.out.println("Inside Ar...");
//			Locale locale = new Locale(language);
//			System.out.println("locale: "+locale);
////			For Local
//			String filePath = splitString[0] + remainingString;
//			System.out.println("filePath: "+filePath);
//			FileReader reader=new FileReader(filePath+"\\\\messages_"+locale+".properties");			
//		}		
//		else {
//			System.out.println("Inside en...");
//			Locale locale = new Locale(language);
//			System.out.println("locale: "+locale);
////			For Local
//			String filePath = splitString[0] + remainingString;
//			System.out.println("filePath: "+filePath);
//			FileReader reader=new FileReader(filePath+"\\\\messages_"+locale+".properties");			
//		}

		
		List<dbModel> dbList = enterpriseDAO.listDb();
		model.addObject("dbList", dbList);
		model.addObject("userDBName", getuserDetails.get(0));
		model.addObject("x", x);
		
		List<net.lt.eaze.model.userprofile> getuserprofiledetails = enterpriseDAO.getuserprofiledetails(username);
		getuserprofiledetails.get(0).setUserRole("ROLE_USER");
		model.addObject("userProfileDetials", getuserprofiledetails.get(0));
		
		model.setViewName("fromExcel");
		
		/// License Check on module click START

		methods methodObj = new methods();
		boolean isNamedAllowed = false;
		List<namedLicenseValidation> namedLicenseDetails = enterpriseDAO.getNamedLicenseDetails(username);
		if (namedLicenseDetails.size() > 0) {
			if (methodObj.isLicenseNotExpired(namedLicenseDetails.get(0)) == true) {
				String company_name = (String) session.getAttribute("company_name");
				roleDetails role_details = enterpriseDAO.getRoleDetails(namedLicenseDetails.get(0).getUser_role(), username,company_name).get(0);
				if (role_details.isImport_export() == true) {
					isNamedAllowed = true;
					session.setAttribute("role_details", role_details);
				}
			}
		}

		if (isNamedAllowed == true) {
			return model;
		} else {
			boolean isConcurrentAllowed = false;
			String company_name = (String) session.getAttribute("company_name");
			List<pools> pools = enterpriseDAO.getPoolNameAndRolesForLicenseCheck(company_name);
			String user_id = enterpriseDAO.getUserId(username).get(0);
			for (pools p : pools) {
				String poolName = p.getPool_name();
				String poolRole = p.getRole_type();
				String poolUsersTableName = "pool_" + poolName + "_users";
				String poolLicenseTableName = "pool_" + poolName + "_license";
				String poolActiveUsers = "pool_" + poolName + "_active_users";
				roleDetails role_details = enterpriseDAO.getRoleDetails(poolRole, username,company_name).get(0);
				if (role_details.isImport_export() == true) {

					List<String> poolUsers = enterpriseDAO.checkIfUserExistInPool(poolUsersTableName, user_id);
					System.out.println(poolName + poolUsers + "1");
					if (poolUsers.size() > 0) {
						System.out.println(poolName + poolUsers + "2");
						List<namedLicenseValidation> concurrentLicenseDetails = enterpriseDAO
								.getConcurrentLicenseDetails(poolActiveUsers, poolLicenseTableName);
						List<String> user_check = enterpriseDAO.checkIfUserAlreadyExistsInActiveUsersTable(poolActiveUsers,user_id);
						if (user_check.size() > 0) {
							isConcurrentAllowed = true;
							break;
						}
						if (concurrentLicenseDetails.size() == 0) {
							continue;
						}
						if (methodObj.isLicenseNotExpired(concurrentLicenseDetails.get(0)) == true) {
							System.out.println(poolActiveUsers + concurrentLicenseDetails.get(0).getId() + user_id);
							enterpriseDAO.insertValuesInActivePoolUsers(poolActiveUsers,
									concurrentLicenseDetails.get(0).getId(), user_id);
							isConcurrentAllowed = true;
							session.setAttribute("role_details", role_details);
							break;
						}

					}
				}
			}
			if (isConcurrentAllowed == true) {
				return model;
			} else {
				model.setViewName("redirect:/home");
				return model;
			}
		}
		/// License Check on module click END
	}
	public static String escapeMetaCharacters(String inputString, String type){
		
		// System.out.println("inputString: "+inputString);
		String inp = inputString;
		String returnString = "";
		switch(type) {
		  case "url":
			  inp = inp.replaceAll("\\s+(?=[><!@$%^&)(,}?{=+':`\\~/;])|(?<=[><!@$%^&)(,}?{=+':`\\~/;])\\s*", "");
			  // System.out.println("removeSpaces: "+inp); 
			  returnString = inp.replaceAll("[^a-zA-Z0-9:/;. -]", ""); // replace except this pattern
			 //  System.out.println("returnString: "+returnString);
		    break;
		  case "text":
			  inp = inp.replaceAll("\\s+(?=[><!@�$%^&)(,}?{=+':`\\~/;])|(?<=[><!@�$%^&)(,}?{=+':`\\~/;])\\s*", "");
			  inp = inp.replace("�", "-");
			  // System.out.println("removeSpaces: "+inp);
			  // returnString = inp.replaceAll("[^a-zA-Z0-9-;. ]", "_");
			  returnString = inp.replaceAll("[><!@$%^&)(,}?{=+':`\\\\~/]","_");
			  // System.out.println("returnString: "+returnString);
			  break;
		  default:
		    
			 break;
		}
			
	    return returnString;
	}
        
        
	public static String getAccurateDateFormatvalue(String date){
		
		String returnString = "";
		
		ArrayList<String> mainDateformat = new ArrayList<String>() {{
		    add("dd-MM-yyyy");
		    add("yyyy-MM-dd");
		    add("dd-MMMM-yyyy");
		    add("yyyy-MMMM-dd");
		    
		    add("dd/MM/yyyy");
		    add("yyyy/MM/dd");
		    add("dd/MMMM/yyyy");
		    add("yyyy/MMMM/dd");
		    
		}};
		
		
		DateFormat formatter1 = new SimpleDateFormat("yyyy-MM-dd");
		
		for(int i=0; i<mainDateformat.size(); i++) {
			try {
				DateFormat parser = new SimpleDateFormat(mainDateformat.get(i));
				Date convertedDate = parser.parse(date);
				returnString = formatter1.format(convertedDate);
				// print("try"+i+": "+returnString);
				return returnString;
			} catch (ParseException e) {
				// print("catch "+i);
				
				returnString = "1900-01-01";
			}
			
		}
	    
	    return returnString;
	}
	
	
	
	public String getExcelCellValueAndReturnNumberIfAttributeNumberExceptChangeHistory(XSSFCell currentCell){
		String Number = "";
		DataFormatter fmt = new DataFormatter();
		String fmtNumberC = fmt.formatCellValue(currentCell).toString().trim();
		
		if(fmtNumberC.length() > 0) {
			Number = new BigDecimal(fmtNumberC).toPlainString();
			
		}else {
			Number = fmtNumberC ;
			
		}
		return Number;
	}
	
	
	
	

	
	@RequestMapping(value="/fileUploadThroughAjax", method = RequestMethod.POST)
	public @ResponseBody String fileUpload(MultipartHttpServletRequest request, HttpSession session, ModelAndView model, HttpServletResponse response) {
		
		long TimeForTotalImportStart = System.currentTimeMillis();
				
		Iterator<String> inputFile =  request.getFileNames();
		String dbName = unif.getDbName();
				
		String DisplayMsg = ""; // using for write msgs in a text file
		
		boolean willDatabaseShouldBeEmpty = false;
		
		
		// getting user name start //
		String username = "";
		Collection<? extends GrantedAuthority> userRole = null;
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
		
			userDetail = (UserDetails) auth.getPrincipal();
			username = userDetail.getUsername();
			userRole = userDetail.getAuthorities();
		}
		// getting user name end //
		
		String path = session.getServletContext().getRealPath("/");
		MultipartFile file = null;
		
		// initialzing log file start
		 String LogFileName = path+"_"+dbName+"_"+username+"_import.txt";
		 initializeTextLogFile(LogFileName);
		// initialzing log file end		    
		 
							
		 // iterate of file but there is only one file imported
		while(inputFile.hasNext()){
			file = request.getFile(inputFile.next());
			String originalFileName = file.getOriginalFilename(); // getting uploaded file name
		
		
			String originalFileNameExtension = originalFileName.substring(originalFileName.lastIndexOf(".")); // getting extension of uploaded file i.e (xlsx)
		
			if(originalFileNameExtension.equals(".xlsx")) {
						  	   
				// saving uploaded file to server start
				File inputFileSavePath = new File(path + "/" + originalFileName);
				try {
					inputFileSavePath.createNewFile();
					FileOutputStream fout = new FileOutputStream(inputFileSavePath);
					fout.write(file.getBytes());
				} catch (IOException e) {
					// TODO Auto-generated catch block
					return "Error while saving file, please upload again";
					//	e.printStackTrace();
				}
				// saving uploaded file to server end				
		
				// Reading xml file of metamodel start
				JAXBContext context;
				Unmarshaller um;
				net.lt.eaze.model_metamodel2.Schema unif = null;
				try {
					context = JAXBContext.newInstance(net.lt.eaze.model_metamodel2.Schema.class);
					um = context.createUnmarshaller();
					unif = (net.lt.eaze.model_metamodel2.Schema) um.unmarshal(new FileReader(path + "/" + dbName + ".xml"));
				} catch (FileNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					return "xml file not found";
				} catch (JAXBException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					return "xml file not found";
				}
								
				// Reading xml file of metamodel end
								
				List<Element_Attributes> elementAttributesList = unif.getElement_attributes(); // extracting elementAttributes data from xml
				List<Element> elements = unif.getElements(); // extracting elements data from xml
								
				// Reading user uploaded excel file start
				XSSFWorkbook wb = null;
				try {
					ZipSecureFile.setMinInflateRatio(0);
					wb = new XSSFWorkbook(new FileInputStream(path + "/" + file.getOriginalFilename()));
				} catch (FileNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					return "User data file not found, please Upload again";
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					return "User data file not found, please Upload again";
								}
				// Reading user uploaded excel file end
								
				int sheetsCount = wb.getNumberOfSheets(); // no. of sheets present in user uploaded excel file
							
				
							
		        boolean ifHeaderNotMatched = false; // signal for header matching with xml
		        //	for (int i = 1; i < 2; i++) {
		        
		        clearTextFile(LogFileName);
				
		        // Validation Starts Here
		        DisplayMsg = "* Validation Starts. \n\n";
				readAndUpdateTextFile(LogFileName, DisplayMsg);
				// System.out.println("sheetsCount: "+sheetsCount);
				
				
				
				if(sheetsCount != elements.size()+1) {
					DisplayMsg = "* Invalid file uploaded. \n\n";
					readAndUpdateTextFile(LogFileName, DisplayMsg);
					return "Invalid file uploaded";
				}
				
				for (int i = 1; i < sheetsCount; i++) {
							
		        	List<String> actualAttributesForElement = new ArrayList<String>();
		
		        	XSSFSheet sheet = wb.getSheetAt(i);
		        	String sheetName = wb.getSheetName(i);
					 	   				
						 	   				
		        	if(elements.get(i-1).getElementName().equals(sheetName)) { // comparing sheet name with metamodel element name
						 				
		            	// Getting actual attribute means (name [text], shortName [text] ....) for matching with xml header start
					    for (Element_Attributes attribute: elementAttributesList) {
				        	if( attribute.getConceptName().equals(sheetName) ){
				        		actualAttributesForElement.add(attribute.getAttrributeName()+"\n["+attribute.getAttributeFormat()+"]");
				        	}
				        }
					    // Getting actual attribute means (name [text], shortName [text] ....) for matching with xml header end
										
					    //	int currentSheetRowsLength = sheet.getLastRowNum(); // how many rows present in current sheet
						XSSFRow headerRow = sheet.getRow(1); // get only header row
						int headerRowLength = headerRow.getLastCellNum(); // getting header row cell count
											
										
						// Comparing user uploaded excel header with metamodel generated xml start
										
						for(int j=0; j<headerRowLength; j++) {
							XSSFCell userExcelHeader = headerRow.getCell(j);
							if(actualAttributesForElement.size() == headerRowLength) { // matching columns length with metamodel generated xml
								if( !(userExcelHeader.toString().equals( actualAttributesForElement.get(j))) ) {
									DisplayMsg = "*ErrorMessage: <"+userExcelHeader.toString().replace("\n", " ")+"> Column Name is not same with metamodel in sheet "+sheetName+". \n\n";
									readAndUpdateTextFile(LogFileName, DisplayMsg);
									ifHeaderNotMatched = true;
									
								}
							}else {
								DisplayMsg = "* ErrorMessage: No. of columns of sheet "+sheetName+" does not matched with the metamodel. \n\n";
								readAndUpdateTextFile(LogFileName, DisplayMsg);
								ifHeaderNotMatched = true;
								// return "Header Not Matched";
							}
						}
						// Comparing user uploaded excel header with metamodel generated xml end
											
											
					}else {
						DisplayMsg = "* sheet name <"+sheetName+"> is not correct. \n\n";
						readAndUpdateTextFile(LogFileName, DisplayMsg);
						try {wb.close();} catch (IOException e) {e.printStackTrace();}
						return "sheet name incorrect";
					}
											
				}
			
				// Validation Ends Here
			
				//	System.out.println(LogFileName);
				if(ifHeaderNotMatched == false) { // means all headers are matched and there is green signal for do further work
			
					DisplayMsg = "* Validation successfully completed. \n\n";
					readAndUpdateTextFile(LogFileName, DisplayMsg);
					
					DisplayMsg = "* Loading... \n\n";
					readAndUpdateTextFile(LogFileName, DisplayMsg);
												
														
					// PASS 2 STARTS HERE
		
					// Empty all database tables start
					if(willDatabaseShouldBeEmpty) {
						enterpriseDAO.listTruncTbl(dbName);
					}
					// Empty all database tables end
													
					// ------------------------------------------------------------------------------------------------------------------------
					Map<String, List<ArrayList<String>>> allElementsObjects 	= new HashMap<String, List<ArrayList<String>>>();
					Map<String, List<String>> namesColumnsDataOfAllElements 	= new HashMap<String, List<String>>();
					Map<String, List<String>> namesColumnsDataOfAllElementsForRelationship 	= new HashMap<String, List<String>>();
					Map<String, List<String>> relationshipTypeObjectHashMap 	= new HashMap<String, List<String>>();
					Map<String, List<String>> selfGeneratedValuesOfAllElements 	= new HashMap<String, List<String>>();
																								
					Map<String, List<RelationsModel>> allElementsRelationships 					= new HashMap<String, List<RelationsModel>>();
					Map<String, List<attributesInformation>> allElementsAttributesInformation	= new HashMap<String, List<attributesInformation>>();
						
					for (int i = 1; i < sheetsCount; i++) {
						
						String NameTOSGV = "";
						
						List<String> getNamesColumnByTableName 		= new ArrayList<String>();
						ArrayList<String> elementAttributeNameToSGV = new ArrayList<String>();
						
						// XSSFSheet sheet 	= wb.getSheetAt(i);
		            	String sheetName 	= wb.getSheetName(i);
		            	String tableName 	= sheetName.replaceAll("\\s", "_");
		            	
		            	
		            	List<RelationsModel> RelationshipTable 			 = enterpriseDAO.getRelationshipTableForImpex(dbName, tableName, tableName);
		            	List<attributesInformation> attributeInformation = enterpriseDAO.getAllAttribute(dbName, tableName);
		            	
		            	allElementsAttributesInformation.put(tableName, attributeInformation);
		            	allElementsRelationships.put(tableName, RelationshipTable);
		            	
		            	
						for (attributesInformation attribute: attributeInformation) {
							if( attribute.getActualAttribute().equals("Name") ){
			        			NameTOSGV = attribute.getSelfGeneratedAttribute(); // getting 'selfGeneratedValue' of 'Name' attribute
			        		}
				        	if(attribute.getAttributeType().equals("System") || attribute.getAttributeType().equals("Primary")){
				        		elementAttributeNameToSGV.add(attribute.getSelfGeneratedAttribute()); //  getting 'selfGeneratedValue' of Every 'system' and 'Primary' attribute type
				        	}
				        }
						
						selfGeneratedValuesOfAllElements.put(tableName, elementAttributeNameToSGV);
						
						List<ArrayList<String>> completeTableOfCurrentElementName 	= enterpriseDAO.getCompleteTableColumnsBySGVArray(dbName, tableName, elementAttributeNameToSGV);
		            	
						allElementsObjects.put(tableName, completeTableOfCurrentElementName);
						
						//creating map of only name column
		
		    			String[] splitNameSGV = NameTOSGV.split("_");
		        		int indexOfNameSGV = Integer.parseInt(splitNameSGV[1].replaceFirst("^0+(?!$)", ""))-1;
						// System.out.println("completeTableOfCurrentElementName: "+completeTableOfCurrentElementName);
		
						for(int m=0; m<completeTableOfCurrentElementName.size(); m++) {
							getNamesColumnByTableName.add(completeTableOfCurrentElementName.get(m).get(indexOfNameSGV).toString().trim());
						}
						// System.out.println("tableName: "+tableName);
						// System.out.println("getNamesColumnByTableName: "+getNamesColumnByTableName);
						namesColumnsDataOfAllElements.put(tableName, getNamesColumnByTableName);
					}
					
					
					
					
					Map<String, List<String>> allRelationshipObjectNames 	= new HashMap<String, List<String>>();
					
					
					List<Relationships> relationshipsXML = unif.getRelations(); // extracting elementAttributes data from xml
					
					ArrayList<String> relationhsipsArray = new ArrayList<String>();
					
					for (Relationships relationtion: relationshipsXML) {
						String NameTOSGV = "";
						String tableName = relationtion.getRelationshipName(); // table name for relationships i.e associations
						
						ArrayList<String> elementAttributeNameToSGV = new ArrayList<String>();
						
						relationhsipsArray.add(tableName);
						
						List<attributesInformation> attributeInformation = enterpriseDAO.getAllAttribute(dbName, tableName);
						allElementsAttributesInformation.put(tableName, attributeInformation);
						
						
						for (attributesInformation attribute: attributeInformation) {
							
				        	if( attribute.getActualAttribute().equals("Name") ){
			        			NameTOSGV = attribute.getSelfGeneratedAttribute(); // getting 'selfGeneratedValue' of 'Name' attribute
				        	}
				        	if(attribute.getAttributeType().equals("System") || attribute.getAttributeType().equals("Primary")){
				        		elementAttributeNameToSGV.add(attribute.getSelfGeneratedAttribute()); //  getting 'selfGeneratedValue' of Every 'system' and 'Primary' attribute type
							}
						}
														
						selfGeneratedValuesOfAllElements.put(tableName, elementAttributeNameToSGV);
																	
						// List<ArrayList<String>> completeTableOfCurrentRelationshipObjectName 	= enterpriseDAO.getCompleteTableColumnsBySGVArray(dbName, tableName, elementAttributeNameToSGV);
						List<String> objectNamesOfRelationshipObjects =  enterpriseDAO.getRows1(dbName, tableName, NameTOSGV);
						
						allRelationshipObjectNames.put(tableName, objectNamesOfRelationshipObjects);
						
						// allElementsObjects.put(tableName, completeTableOfCurrentRelationshipObjectName);
			        }
					
					
					
					
					
					// ------------------------------------------------------------------------------------------------------------------------
					
					
					
					
					
					for (int i = 1; i < sheetsCount; i++) { // sheet loop
					// for (int i = 1; i < 2; i++) { // sheet loop
		            	
		            	XSSFSheet sheet		= wb.getSheetAt(i);
		            	String sheetName 	= wb.getSheetName(i);
		            	String tableName 	= sheetName.replaceAll("\\s", "_");
		            	
		            	
		    			long TimeForSheetImportStart = System.currentTimeMillis();
		    			DisplayMsg = "* Import of "+tableName+" Object begins\n\n";
		    			readAndUpdateTextFile(LogFileName, DisplayMsg);
		            	
		            	
						
		            	List<attributesInformation> attributeInformation = allElementsAttributesInformation.get(tableName);
						
						ArrayList<String> elementAttributeNameToSGV = new ArrayList<String>();
		
						
						int tempCount = 1;
		            	int startingIndexForHistory = 0;
						int countForAttributeInformation = 1;
						for (attributesInformation attribute: attributeInformation) {
				        	
							if(attribute.getAttributeType().equals("System") || attribute.getAttributeType().equals("Primary")){
				        		
				        		elementAttributeNameToSGV.add(attribute.getSelfGeneratedAttribute()); //  getting 'selfGeneratedValue' of Every 'system' and 'Primary' attribute type
		    					
				        		if( !(attributeInformation.get(countForAttributeInformation-1).getGroupCaption().equals("Change History")) && !(attributeInformation.get(countForAttributeInformation-1).getGroupStyle().equals("Tabular")) && (attributeInformation.get(countForAttributeInformation).getGroupCaption().equals("Change History")) && (attributeInformation.get(countForAttributeInformation).getGroupStyle().equals("Tabular")) ) {
		    				
		    						startingIndexForHistory = tempCount;
		    					}
		    					tempCount++;
				        	}
				        	countForAttributeInformation++;
				        }
		
						List<ArrayList<String>> completeTableOfCurrentElementName = allElementsObjects.get(tableName);
		
						List<String> getNamesColumnByTableName = new ArrayList<>(namesColumnsDataOfAllElements.get(tableName));
																	
		            	int sheetColumnsLength = sheet.getRow(1).getLastCellNum();
		            	int totalNoOfRowsInCurrentSheet = sheet.getLastRowNum();
		
		            	List<ArrayList<String>> dataForInsertIntoDBArray = new ArrayList<ArrayList<String>>();
		            	List<ArrayList<String>> dataForUpdateIntoDBArray = new ArrayList<ArrayList<String>>();
		            	List<String> selfGeneratedValuesForCurrnetElement = new ArrayList<String>();
					
		            	for (int j = 2; j <= totalNoOfRowsInCurrentSheet; j++) { // row loop
		            		// System.out.println("j: "+j);
		            		XSSFRow currentRow = sheet.getRow(j);
		
		            		
		            		if(currentRow == null) {
		            			continue;
		            		}
		            		
		            		int currentRowLength = currentRow.getLastCellNum();
		            		int excelLineNo = j+1;
		            		int indexOfExcelToBeUpdateRow = -1;
															
		            		////////////// check first column whether it is empty or not start //////////////
		            		boolean insertFlag = false;
		            		boolean updateFlag = false;
																
		            		XSSFCell firstColumnText = currentRow.getCell(0);
																
		            		if(firstColumnText != null) {
		            			String firstColumnTextRemoveBeforeAndAfterSpaces = escapeMetaCharacters(firstColumnText.toString().trim(), "text");
		            			
		    					if(!firstColumnTextRemoveBeforeAndAfterSpaces.equals("")) {
		    						// System.out.println(getNamesColumnByTableName);
		    						// System.out.println("firstColumnTextRemoveBeforeAndAfterSpaces: "+firstColumnTextRemoveBeforeAndAfterSpaces);
		        					if(!getNamesColumnByTableName.contains(firstColumnTextRemoveBeforeAndAfterSpaces)) {
		        						insertFlag = true;
		        						 // System.out.println("need to insert");
		        					}
		    						else {
		        						updateFlag = true;
			            				 // System.out.println("need to update");
			            				// System.out.println("find: "+firstColumnTextRemoveBeforeAndAfterSpaces);
			            				indexOfExcelToBeUpdateRow = getNamesColumnByTableName.indexOf(firstColumnTextRemoveBeforeAndAfterSpaces);
			            				// System.out.println("indexOfExcelToBeUpdateRow-: "+indexOfExcelToBeUpdateRow);
													}
		    					}else {
					
		    						DisplayMsg = "* Warning Message:  Empty name column in sheet <"+sheetName+"> line no. "+excelLineNo+". \n\n";
		    						readAndUpdateTextFile(LogFileName, DisplayMsg);
		    						continue;
													}
			
		            		}else {
								DisplayMsg = "* Warning Message:  Empty name column in sheet <"+sheetName+"> line no. "+excelLineNo+". \n\n";
								readAndUpdateTextFile(LogFileName, DisplayMsg);
								continue;
		            		}
		
		            		////////////// check first column whether it is empty or not end //////////////
			
					
		            		// System.out.println("attributeInformationLength: "+attributeInformation.size()+" currentRowLength: "+sheetColumnsLength);
													
		            		ArrayList<String> tempInsertArray = new ArrayList<String>();
		            		ArrayList<String> tempUpdateArray = new ArrayList<String>();
													
		            		int countForSystemAndPrimary 	= 0;
		            		boolean ifAnyValueWillBeUpdate		= false;
		            		
		            		String tempChangeHistorySerial 		= "";
		            		String tempChangeHistoryUser 		= "";
		            		String tempChangeHistoryDate 		= "";
		            		String tempChangeHistoryTime 		= "";
		            		String tempChangeHistoryAttribute 	= "";
		            		String tempChangeHistoryOldValue 	= "";
		            		String tempChangeHistoryNewValue 	= "";
		            		String tempChangeHistoryAction 		= "";
		
		            		
		            		
		            		
		            		///////////////// checking complete row if there is any value updated by user start ////////////////////////
		            		
		            		// System.out.println("size: "+selfGeneratedValuesForCurrnetElement.size());
		            		if(indexOfExcelToBeUpdateRow != -1) {
		    					int cc = 0;
		    					// System.out.println("indexOfExcelToBeUpdateRow: "+indexOfExcelToBeUpdateRow);
		    					for (int p = 0; p < sheetColumnsLength; p++) {
		    						
		    						if(!attributeInformation.get(p).getAttributeType().equals("Relationship")) {
		    							
		    							if( !( attributeInformation.get(p).getGroupCaption().equalsIgnoreCase("Change History") && attributeInformation.get(p).getGroupStyle().equalsIgnoreCase("Tabular")  || attributeInformation.get(p).getAttributeFormat().equalsIgnoreCase("File") )  ) {
		    								
		    								XSSFCell tempcurrentCellData = currentRow.getCell(p);
		    								
		    								if(tempcurrentCellData != null) {
		    									
		    									// System.out.println("popop: "+completeTableOfCurrentElementName.get(indexOfExcelToBeUpdateRow).get(cc));
		    									// System.out.println("+++++++++=========");
		    									// print("indexOfExcelToBeUpdateRow: "+indexOfExcelToBeUpdateRow);
		    									// print("oldValue: "+completeTableOfCurrentElementName.get(indexOfExcelToBeUpdateRow).get(cc));
		    									String oldValue = "";
		    									String newValue = currentRow.getCell(p).toString().trim();
		    									try {
		    										oldValue = completeTableOfCurrentElementName.get(indexOfExcelToBeUpdateRow).get(cc).toString().trim();
													
												} catch (Exception e) {
													
													oldValue = newValue;
													// TODO: handle exception
												}
		    									
		    									// print("newValue: "+currentRow.getCell(p).toString().trim());
		    									
		    									if ( attributeInformation.get(p).getAttributeFormat().equals("Number") && !( attributeInformation.get(p).getGroupCaption().equals("Change History") && attributeInformation.get(p).getGroupStyle().equals("Tabular") ) ) {
		    										newValue = getExcelCellValueAndReturnNumberIfAttributeNumberExceptChangeHistory(currentRow.getCell(p));
		    									}
		    									else if(attributeInformation.get(p).getAttributeFormat().equals("Date")) {
		            								DateFormat parser = new SimpleDateFormat("dd-MM-yyyy");
		            								DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		            								Date convertedDate;
													try {
														convertedDate = parser.parse(newValue.toString());
														newValue = formatter.format(convertedDate);
														
													} catch (ParseException e) {
														// TODO Auto-generated catch block
														newValue = oldValue;
														// e.printStackTrace();
													}
		    										
		    									}
			            						else if( attributeInformation.get(p).getAttributeFormat().equals("Time") && !( attributeInformation.get(p).getGroupCaption().equals("Change History") && attributeInformation.get(p).getGroupStyle().equals("Tabular") ) ) {
			            							
			            							if(newValue.toString().trim().equals("")) {
			            								// LocalTime time 		= LocalTime.parse("00:00:00") ;
				            							// String timeInText 	= time.toString();
			            								
		            									DateFormat df = new SimpleDateFormat("hh:mm:ss");
														Date date;
														try {
															date = df.parse("00:00:00");
															final String timeString = new SimpleDateFormat("HH:mm:ss").format(date.getTime());
															newValue	= timeString;
														} catch (ParseException e) {
															// TODO Auto-generated catch block
															newValue	= "";
															// e.printStackTrace();
														}
				            							
			            							}else {
			            								
			            								try {
															DateFormat formatTime = new SimpleDateFormat("HH:mm:ss");
															Date date = currentRow.getCell(p).getDateCellValue();
															String currentCelltime = formatTime.format(date);
			            									
			            									// print("hussin not null");
			            									// print("sheetName: "+sheetName);
			            									// print("currentCelltime: "+currentCelltime);
			            									newValue = currentCelltime;
			            									
															
														} catch (Exception e) {
															// TODO: handle exception
															// print("hussin exception");
				            								// LocalTime time 		= LocalTime.parse("00:00:00") ;
					            							// String timeInText 	= time.toString();
					            							// newValue	= timeInText;
					            							
					            							
					            							
			            									DateFormat df = new SimpleDateFormat("hh:mm:ss");
															Date date;
															try {
																date = df.parse("00:00:00");
																final String timeString = new SimpleDateFormat("HH:mm:ss").format(date.getTime());
																newValue	= timeString;
															} catch (ParseException e1) {
																// TODO Auto-generated catch block
																newValue	= "";
																// e1.printStackTrace();
															}
		
															// DisplayMsg = "* Warning Message:  Time format is not valid in sheet <"+sheetName+"> line no. "+excelLineNo+" column no. "+(excelColumnNo)+". \nExpected Time Format is 'hh:mm:ss'.\n\n";
				                    						// readAndUpdateTextFile(LogFileName, DisplayMsg);
														}
			            								
			            							}
			            						}
		    									else {
		    										// System.out.println("attributeInformation.get(p).getAttributeFormat().equals(\"URL\": "+attributeInformation.get(p).getActualAttribute()+", "+newValue);
		    										
			        								if( attributeInformation.get(p).getActualAttribute().equals("Type") ) {
		        										// System.out.println("attributeInformation.get(p).getAttributeFormat().equals(\"URL\": "+attributeInformation.get(p).getActualAttribute()+", "+newValue);
		        										
		        										if( (newValue.equals("")) || (newValue == null) ) {
		        											// newValue= "Other";
		        											newValue= "Null";
		        										}
		        										
		        									}	        										
			        								else if( attributeInformation.get(p).getAttributeFormat().equals("URL") ) {
			        									
			        									 if (isValidURL(newValue)) {
			        										 newValue = escapeMetaCharacters(newValue, "url");
			        									 }else {
															 DisplayMsg = "* Warning Message:  Url format is not valid in sheet <"+sheetName+"> line no. "+excelLineNo+".\n\n";
				                    						 readAndUpdateTextFile(LogFileName, DisplayMsg);
			        										 newValue = "";
			        									 }
		    										}else {
		    											newValue = escapeMetaCharacters(newValue, "text");
		    										}
		    									}
		    									// print("oldValue: "+oldValue);
		    									// print("newValue: "+newValue);
		        								if(!oldValue.equals(newValue)) {
		        									
		        									if(!oldValue.equals("1900-01-01")) {
		        										ifAnyValueWillBeUpdate = true;
		        									}
		        								}
		        								
												  // System.out.println("oldValue: "+oldValue);
												  // System.out.println("newValue: "+newValue);
												 // System.out.println("+++++++++=========");
		    								}
		    							}
		    							cc++;
		    						}
		    					}
		            		}
		            		/////////////// checking complete row if there is any value updated by user end ////////////////////////
		            		
		            		int count = 0;
		            		for (int k = 0; k < sheetColumnsLength; k++) { // column loop
		
		            			if( j == 2 ) {
		            				
		            				if(attributeInformation.get(k).getAttributeType().equals("System") || attributeInformation.get(k).getAttributeType().equals("Primary")) {
		            					
		            					selfGeneratedValuesForCurrnetElement.add(attributeInformation.get(k).getSelfGeneratedAttribute());
		
									}
								}
										
		            			XSSFCell currentCellData = currentRow.getCell(k);
															
					
		            			// System.out.println("currentCellData: "+currentCellData);
		            			
		            				 
		        				// String regex = "(['\\<\\>\\+\\-!\\(\\){}\\[\\]^\"~*?:\\\\]|[&\\|]{2})";
		        				// String myStringToEscape = currentCellData.toString();
		        				// String myEscapedString = myStringToEscape.replaceAll(regex, "\\\\$1");
		        				// System.out.println("myEscapedString: "+myEscapedString);
		
		            			int excelColumnNo = k+1;
		
		            			if( !(attributeInformation.get(k).getAttributeType().equals("Relationship")) ) {
																		
		            				if(insertFlag == true) {
		            					// System.out.println(attributeInformation.get(k).getActualAttribute());
		            					// System.out.println(currentCellData);
		
		            					if( currentCellData == null ) {
		            						// System.out.println("inside null");
		            						if(attributeInformation.get(k).getAttributeFormat().equals("Date") && !(attributeInformation.get(k).getGroupCaption().equals("Change History") && attributeInformation.get(k).getGroupStyle().equals("Tabular") ) ) {
		            							tempInsertArray.add("'1900-01-01'");
															}
		            						else if( attributeInformation.get(k).getAttributeFormat().equals("Time") && !( attributeInformation.get(k).getGroupCaption().equals("Change History") && attributeInformation.get(k).getGroupStyle().equals("Tabular") )  ) {
		            							LocalTime time = LocalTime.parse("00:00:00") ;
		            							String timeInText = time.toString();
					
		    									DateFormat df = new SimpleDateFormat("hh:mm:ss");
												Date date;
												try {
													date = df.parse("00:00:00");
													final String timeString = new SimpleDateFormat("HH:mm:ss").format(date.getTime());
													tempInsertArray.add("'"+timeString+"'");
												} catch (ParseException e) {
													// TODO Auto-generated catch block
													tempInsertArray.add("'"+timeInText+"'");
													// e.printStackTrace();
												}
		            						}
		            						else if( attributeInformation.get(k).getAttributeFormat().equalsIgnoreCase("CheckBox") || attributeInformation.get(k).getAttributeFormat().equalsIgnoreCase("Radio") ) {
		
		        								DisplayMsg = "* Warning Message:  Empty checkbox/Radio value in sheet <"+sheetName+"> line no. "+excelLineNo+" column no. "+(excelColumnNo)+". \n\n";
		                						readAndUpdateTextFile(LogFileName, DisplayMsg);
		                						// System.out.println("checkBoxRowNo: "+excelLineNo+", value: "+currentCellData);
		                						tempInsertArray.add("''");
				
															}
		            						else if(attributeInformation.get(k).getGroupCaption().equals("Change History") && attributeInformation.get(k).getGroupStyle().equals("Tabular") ) {
					
		            							if(attributeInformation.get(k).getActualAttribute().equals("#")) {
		            								tempInsertArray.add("'1'");
		            							}else if(attributeInformation.get(k).getActualAttribute().equals("User")) {
		            								tempInsertArray.add("'"+username+"'");
		            							}else if(attributeInformation.get(k).getActualAttribute().equals("Date")) {
		            								
		            								LocalDate currentDate = LocalDate.now(); // Create a date object
		            								String tempValue = "" + currentDate + "";
		            								tempInsertArray.add("'"+tempValue+"'");
					
		            							}else if(attributeInformation.get(k).getActualAttribute().equals("Time")) {
		            								
		            								String currentTime = LocalTime.now().truncatedTo(ChronoUnit.SECONDS).format(DateTimeFormatter.ISO_LOCAL_TIME);
		            								String tempValue = "" + currentTime + "";
		            								tempInsertArray.add("'"+tempValue+"'");
		            								
		            							}else if(attributeInformation.get(k).getActualAttribute().equals("Attribute")) {
		            								tempInsertArray.add("' '");
		            							}else if(attributeInformation.get(k).getActualAttribute().equals("Old Value")) {
		            								tempInsertArray.add("' '");
		            							}else if(attributeInformation.get(k).getActualAttribute().equals("New Value")) {
		            								tempInsertArray.add("' '");
		            							}else if(attributeInformation.get(k).getActualAttribute().equals("Action")) {
		            								tempInsertArray.add("'Create'");
												}
															
											}
		            						else if( attributeInformation.get(k).getActualAttribute().equals("Type") ) {
												// tempInsertArray.add("'Other'");
												tempInsertArray.add("'Null'");
		            						}
		            						else {
		            							tempInsertArray.add("''");
											}
														
		            					}else {
			
		            						// if(!( attributeInformation.get(k).getGroupCaption().equals("Change History") && attributeInformation.get(k).getGroupStyle().equals("Tabular") )) {}
		            						
		            						if(attributeInformation.get(k).getAttributeFormat().equals("Date")  && !( attributeInformation.get(k).getGroupCaption().equals("Change History") && attributeInformation.get(k).getGroupStyle().equals("Tabular") )) {
															
		            							if(currentCellData.toString().equals("")) {
		            								tempInsertArray.add("'1900-01-01'");
															
		            							}else {
															
		            								// DateFormat dateFormater = new SimpleDateFormat("yyyy-MM-dd");
		            								// tempInsertArray.add(dateFormater.format("'"+currentCellData+"'"));
		            								
		            								String outputDate = getAccurateDateFormatvalue(currentCellData.toString());
														tempInsertArray.add("'"+outputDate+"'");
		            								
		//            								DateFormat parser = new SimpleDateFormat("dd-MM-yyyy");
		//            								DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		//            								Date convertedDate;
		//											try {
		//												convertedDate = parser.parse(currentCellData.toString());
		//												// System.out.println("dateParser: "+convertedDate);
		//												String outputDate = formatter.format(convertedDate);
		//												tempInsertArray.add("'"+outputDate+"'");
		//											} catch (ParseException e) {
		//												// TODO Auto-generated catch block
		//												tempInsertArray.add("'1900-01-01'");
		//												DisplayMsg = "* Warning Message:  Date format is not valid in sheet <"+sheetName+"> line no. "+excelLineNo+" column no. "+(excelColumnNo)+". \nExpected Date Format is 'dd-mm-yyyy'.\n\n";
		//	                    						readAndUpdateTextFile(LogFileName, DisplayMsg);
		//												// e.printStackTrace();
		//											}
		            								
		            							}
		            						}
		            						else if( attributeInformation.get(k).getAttributeFormat().equals("Time") && !( attributeInformation.get(k).getGroupCaption().equals("Change History") && attributeInformation.get(k).getGroupStyle().equals("Tabular") )  ) {
		            							
		            							if(currentCellData.toString().equals("")) {
		            								LocalTime time 		= LocalTime.parse("00:00:00") ;
			            							String timeInText 	= time.toString();
			            							
			            							
		        									DateFormat df = new SimpleDateFormat("hh:mm:ss");
													Date date;
													try {
														date = df.parse("00:00:00");
														final String timeString = new SimpleDateFormat("HH:mm:ss").format(date.getTime());
														tempInsertArray.add("'"+timeString+"'");
													} catch (ParseException e) {
														// TODO Auto-generated catch block
														tempInsertArray.add("'"+timeInText+"'");
														// e.printStackTrace();
													}
			            							
			            							
		            							}else {
		            								
		            								
		            								try {
														DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
														DateFormat formatTime = new SimpleDateFormat("HH:mm:ss");
														Date date = currentCellData.getDateCellValue();
														String currentCelltime =formatTime.format(date);
		            									
			            								tempInsertArray.add("'"+currentCelltime+"'");
														
													} catch (Exception e) {
														// TODO: handle exception
			            								LocalTime time 		= LocalTime.parse("00:00:00") ;
				            							String timeInText 	= time.toString();
				            							
				            							
		            									DateFormat df = new SimpleDateFormat("hh:mm:ss");
														Date date;
														try {
															date = df.parse("00:00:00");
															final String timeString = new SimpleDateFormat("HH:mm:ss").format(date.getTime());
															tempInsertArray.add("'"+timeString+"'");
														} catch (ParseException e2) {
															// TODO Auto-generated catch block
															tempInsertArray.add("'"+timeInText+"'");
															// e2.printStackTrace();
														}
				            							
				            							
				            							
				            							
														DisplayMsg = "* Warning Message:  Time format is not valid in sheet <"+sheetName+"> line no. "+excelLineNo+" column no. "+(excelColumnNo)+". \nExpected Time Format is 'hh:mm:ss'.\n\n";
			                    						readAndUpdateTextFile(LogFileName, DisplayMsg);
													}
		            							}
																}
		            						else if( attributeInformation.get(k).getAttributeFormat().equalsIgnoreCase("CheckBox") || attributeInformation.get(k).getAttributeFormat().equalsIgnoreCase("Radio") ) {
		            							String tempData = currentCellData.toString().trim();
			
		            							if (tempData.equalsIgnoreCase("TRUE")) {
		            								tempInsertArray.add("'TRUE'");
		            							}
		            							else if (tempData.equalsIgnoreCase("FALSE")) {
		            								tempInsertArray.add("'FALSE'");
		            							}
		            							else if( tempData.equalsIgnoreCase("") ) {
		            								DisplayMsg = "* Warning Message:  Empty checkbox/Radio value in sheet in sheet <"+sheetName+"> line no. "+excelLineNo+" column no. "+excelColumnNo+". \n\n";
		                    						readAndUpdateTextFile(LogFileName, DisplayMsg);
		                    						tempInsertArray.add("''");
		            							}
		            							else {
		            								DisplayMsg = "* Warning Message:  Wrong checkbox/Radio value i.e. <"+tempData+"> in sheet <"+sheetName+"> line no. "+excelLineNo+" column no. "+excelColumnNo+". \n\n";
		                    						readAndUpdateTextFile(LogFileName, DisplayMsg);
		                    						tempInsertArray.add("''");
		            							}
		            						}
		            						else if(attributeInformation.get(k).getGroupCaption().equals("Change History") && attributeInformation.get(k).getGroupStyle().equals("Tabular") ) {
		            							
		            							if(attributeInformation.get(k).getActualAttribute().equals("#")) {
		            								tempInsertArray.add("'1'");
		            							}else if(attributeInformation.get(k).getActualAttribute().equals("User")) {
		            								tempInsertArray.add("'"+username+"'");
		            							}else if(attributeInformation.get(k).getActualAttribute().equals("Date")) {
		            								
		            								LocalDate currentDate = LocalDate.now(); // Create a date object
		            								String tempValue = "" + currentDate + "";
		            								tempInsertArray.add("'"+tempValue+"'");
		            								
		            							}else if(attributeInformation.get(k).getActualAttribute().equals("Time")) {
		            								
		            								String currentTime = LocalTime.now().truncatedTo(ChronoUnit.SECONDS).format(DateTimeFormatter.ISO_LOCAL_TIME);
		            								String tempValue = "" + currentTime + "";
		            								tempInsertArray.add("'"+tempValue+"'");
		            								
		            							}else if(attributeInformation.get(k).getActualAttribute().equals("Attribute")) {
		            								tempInsertArray.add("' '");
		            							}else if(attributeInformation.get(k).getActualAttribute().equals("Old Value")) {
		            								tempInsertArray.add("' '");
		            							}else if(attributeInformation.get(k).getActualAttribute().equals("New Value")) {
		            								tempInsertArray.add("' '");
		            							}else if(attributeInformation.get(k).getActualAttribute().equals("Action")) {
		            								tempInsertArray.add("'Create'");
		            							}
		            							
		            						}
		            						else if ( attributeInformation.get(k).getAttributeFormat().equalsIgnoreCase("Number") && !( attributeInformation.get(k).getGroupCaption().equals("Change History") && attributeInformation.get(k).getGroupStyle().equals("Tabular") ) ) {
		            							String Number = getExcelCellValueAndReturnNumberIfAttributeNumberExceptChangeHistory(currentCellData);
		            							tempInsertArray.add("'"+Number+"'");
		            							// tempInsertArray.add("'"+currentCellData+"'");
											}else if( attributeInformation.get(k).getActualAttribute().equals("Type") ) {
												
												if( currentCellData.toString().equals("") ) {
													// tempInsertArray.add("'Other'");
													tempInsertArray.add("'Null'");
												}else {
													tempInsertArray.add("'"+currentCellData.toString()+"'");
												}
		            						}
		            						else {
		            							String escapeSpecialCharacter = "";
					 	 		  							
		            							if( attributeInformation.get(k).getAttributeFormat().equalsIgnoreCase("URL") ) {
		        									 if (isValidURL(currentCellData.toString())) {
		        										 escapeSpecialCharacter = escapeMetaCharacters(currentCellData.toString(), "url");
		        									 }else {
														 DisplayMsg = "* Warning Message: Url format is not valid in sheet <"+sheetName+"> line no. "+excelLineNo+".\n\n";
			                    						 readAndUpdateTextFile(LogFileName, DisplayMsg);
			                    						 escapeSpecialCharacter = "";
		        									 }
		            								
		            							}else {
		            								escapeSpecialCharacter = escapeMetaCharacters(currentCellData.toString(), "text");
		            							}
																
		            							tempInsertArray.add("'"+escapeSpecialCharacter+"'");
		            						}
		            					}
																
			
		            				}else if(updateFlag == true) {
																
		            					if( currentCellData == null ) {
		            						// System.out.println("inside null");
		
		            						if(attributeInformation.get(k).getAttributeFormat().equals("Date") && !(attributeInformation.get(k).getGroupCaption().equals("Change History") && attributeInformation.get(k).getGroupStyle().equals("Tabular") ) ) {
		            							tempUpdateArray.add("'1900-01-01'");
		            							// System.out.println("In null date update count: "+count++);
		            						}
		            						else if( attributeInformation.get(k).getAttributeFormat().equals("Time") && !( attributeInformation.get(k).getGroupCaption().equals("Change History") && attributeInformation.get(k).getGroupStyle().equals("Tabular") )  ) {
		            							LocalTime time = LocalTime.parse("00:00:00") ;
		            							String timeInText = time.toString();
		            							// print("hussin null");
		            							// print(timeInText);
		            							
		            							
		    									DateFormat df = new SimpleDateFormat("hh:mm:ss");
												Date date;
												try {
													date = df.parse("00:00:00");
													final String timeString = new SimpleDateFormat("HH:mm:ss").format(date.getTime());
													tempUpdateArray.add("'"+timeInText+"'");
												} catch (ParseException e2) {
													// TODO Auto-generated catch block
													tempUpdateArray.add("'"+timeInText+"'");
													// e2.printStackTrace();
												}
		            							
																	}
		            						else if( attributeInformation.get(k).getAttributeFormat().equalsIgnoreCase("CheckBox") || attributeInformation.get(k).getAttributeFormat().equalsIgnoreCase("Radio") ) {
																	
		            							// System.out.println("Checkbox");
		        								// System.out.println("3");
		
		        								DisplayMsg = "* Warning Message:  Empty checkbox/Radio value in sheet <"+sheetName+"> line no. "+excelLineNo+" column no. "+(excelColumnNo)+". \n\n";
		                						readAndUpdateTextFile(LogFileName, DisplayMsg);
		                						tempUpdateArray.add("''");
		                						// System.out.println("In null checkbox update count: "+count++);
											}
		            						else if( attributeInformation.get(k).getActualAttribute().equals("Type") ) {
		            							tempUpdateArray.add("'Null'");
		            						}
		            						else if(attributeInformation.get(k).getGroupCaption().equals("Change History") && attributeInformation.get(k).getGroupStyle().equals("Tabular") ) {
																
		            						}
		            						else {
		            							tempUpdateArray.add("''");
		            							// System.out.println("In null else count: "+count++);
		            						}
		
		            					}else {
		            						// System.out.println("###########################################");
		            						// System.out.println("inside not null");
		            						String tempPreviousValue 	= "";
		            						String tempCurrentValue 	= "";
		            						
		            						// print("1tempPreviousValue: "+tempPreviousValue);
		            						
		            						if( attributeInformation.get(k).getAttributeFormat().equals("Time") && !( attributeInformation.get(k).getGroupCaption().equals("Change History") && attributeInformation.get(k).getGroupStyle().equals("Tabular") ) ) {
		            							// gettting time value in below .i.e (if k>0)
		            						}
		            						else if(attributeInformation.get(k).getAttributeFormat().equals("Date")) {
		            							tempCurrentValue = currentCellData.toString().trim();
		            						}
		            						else if( attributeInformation.get(k).getAttributeFormat().equals("URL") ) {
		            							// tempCurrentValue 	= escapeMetaCharacters(currentCellData.toString().trim(), "url");
		            							
		            							
		            							if (isValidURL(currentCellData.toString())) {
		            								tempCurrentValue = escapeMetaCharacters(currentCellData.toString().trim(), "url");
		    									 }else {
													 DisplayMsg = "* Warning Message: Url format is not valid in sheet <"+sheetName+"> line no. "+excelLineNo+".\n\n";
		                    						 readAndUpdateTextFile(LogFileName, DisplayMsg);
		                    						 tempCurrentValue = "";
		    									 }
		            							
		            						}
		            						else if( attributeInformation.get(k).getActualAttribute().equals("Type") ) {
		            							if( currentCellData.toString().trim().equals("") ) {
		            								// tempCurrentValue = "Other";
		            								tempCurrentValue = "Null";
		            							}else {
		            								tempCurrentValue = escapeMetaCharacters(currentCellData.toString().trim(), "text");
		            							}
		
		            						}
		            						else {
		            							tempCurrentValue 	= escapeMetaCharacters(currentCellData.toString().trim(), "text");
		            						}
		            						
		            						try {
		            							tempPreviousValue 	= completeTableOfCurrentElementName.get(indexOfExcelToBeUpdateRow).get(countForSystemAndPrimary).toString().trim();
											} catch (Exception e) {
												// TODO: handle exception
												tempPreviousValue = tempCurrentValue;
											}
		            						
		
		            						//System.out.println("k: "+k);
		            						//System.out.println("tempPreviousValue: "+tempPreviousValue);
		            						//System.out.println("tempCurrentValue: "+tempCurrentValue);
		            						
		            						if(attributeInformation.get(k).getGroupCaption().equals("Change History") && attributeInformation.get(k).getGroupStyle().equals("Tabular") ) {
		            							
		            						}
		            						else if(k>0) {
		            							
		            							// System.out.println("completeTableOfCurrentElementName.get(indexOfExcelToBeUpdateRow): "+completeTableOfCurrentElementName.get(indexOfExcelToBeUpdateRow));
		            							// System.out.println("completeTableOfCurrentElementName.get: "+completeTableOfCurrentElementName.get(indexOfExcelToBeUpdateRow).get(countForSystemAndPrimary));
		            							// System.out.println("countForSystemAndPrimary: "+countForSystemAndPrimary);
		
		            							String concatWith = "##";
		            							
			            						if ( attributeInformation.get(k).getAttributeFormat().equals("Number") && !( attributeInformation.get(k).getGroupCaption().equals("Change History") && attributeInformation.get(k).getGroupStyle().equals("Tabular") ) ) {
			            							tempCurrentValue = getExcelCellValueAndReturnNumberIfAttributeNumberExceptChangeHistory(currentCellData);
			            						}
			            						else if ( attributeInformation.get(k).getAttributeFormat().equals("Date") &&  !( attributeInformation.get(k).getGroupCaption().equals("Change History") && attributeInformation.get(k).getGroupStyle().equals("Tabular") ) ){
			            							//tempCurrentValue = escapeMetaCharacters(tempCurrentValue);
														
			            							
			            							tempCurrentValue = getAccurateDateFormatvalue(tempCurrentValue);
			            							
		//            								DateFormat parser = new SimpleDateFormat("dd-MM-yyyy");
		//            								DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		//            								Date convertedDate;
		//											try {
		//												convertedDate = parser.parse(tempCurrentValue);
		//												tempCurrentValue = formatter.format(convertedDate);
		//												
		//												// System.out.println("1dtempPreviousValue: "+tempPreviousValue);
		//												// System.out.println("1dtempCurrentValue: "+tempCurrentValue);
		//												
		//											} catch (ParseException e) {
		//												// TODO Auto-generated catch block
		//												tempCurrentValue = "1900-01-01";
		//												// System.out.println("dtempPreviousValue: "+tempPreviousValue);
		//			            						// System.out.println("dtempCurrentValue: "+tempCurrentValue);
		//												// e.printStackTrace();
		//											}
			            						}
			            						else if( attributeInformation.get(k).getAttributeFormat().equals("Time") && !( attributeInformation.get(k).getGroupCaption().equals("Change History") && attributeInformation.get(k).getGroupStyle().equals("Tabular") ) ) {
			            							
			            							if(currentCellData.toString().trim().equals("")) {
			            								//print("here: "+currentCellData);
			            								
			            								if( !tempPreviousValue.toString().trim().equals("") ){
			            									// print("timenot null");
			            									SimpleDateFormat dt = new SimpleDateFormat("hh:mm:ss");
			            									//Date date = sdf.parse("00:00:00");
			            									
			            									
			            									try {
				            									DateFormat df = new SimpleDateFormat("hh:mm:ss");
																Date date = df.parse("00:00:00");
																final String timeString = new SimpleDateFormat("HH:mm:ss").format(date.getTime());
																
																tempCurrentValue = timeString;
																
															} catch (ParseException e) {
																// TODO Auto-generated catch block
																// e.printStackTrace();
															}
			            									
			            									
			            									
			            									
		//	            									DateFormat formatTime = new SimpleDateFormat("HH:mm:ss");
		//													Date date = "00:00:00";
		//													String currentCelltime =formatTime.format(date);
			            									
			            									
			            									
			            									// LocalTime time 		= LocalTime.parse("00:00:00") ;
			            									// String timeInText 	= time.toString();
			            									//tempCurrentValue	= timeInText;
			            								}else {
			            									tempCurrentValue 	= "";
			            								}
			            								
			            								
			            								
			            							}else {
			            								
			            								try {
															DateFormat formatTime = new SimpleDateFormat("HH:mm:ss");
															Date date = currentCellData.getDateCellValue();
															String currentCelltime =formatTime.format(date);
			            									
			            									// print("hussin not null");
			            									// print("sheetName: "+sheetName);
			            									// print("currentCelltime: "+currentCelltime);
			            									tempCurrentValue = currentCelltime;
			            									
															
														} catch (Exception e) {
															// TODO: handle exception
				            								LocalTime time 		= LocalTime.parse("00:00:00") ;
					            							String timeInText 	= time.toString();
					            							
					            							
					            							
					            							
			            									DateFormat df = new SimpleDateFormat("hh:mm:ss");
															Date date;
															try {
																date = df.parse("00:00:00");
																final String timeString = new SimpleDateFormat("HH:mm:ss").format(date.getTime());
																tempCurrentValue	= timeString;
															} catch (ParseException e2) {
																// TODO Auto-generated catch block
																tempCurrentValue	= timeInText;
																// e2.printStackTrace();
															}
					            							
															DisplayMsg = "* Warning Message:  Time format is not valid in sheet <"+sheetName+"> line no. "+excelLineNo+" column no. "+(excelColumnNo)+". \nExpected Time Format is 'hh:mm:ss'.\n\n";
				                    						readAndUpdateTextFile(LogFileName, DisplayMsg);
														}
			            								
			            							}
			            						}
			            						
			            						
			            						
			            						// System.out.println("Database row no.: "+indexOfExcelToBeUpdateRow);
			            						// System.out.println("countForSystemAndPrimary: "+countForSystemAndPrimary);
			            						// System.out.println("previousValue: "+tempPreviousValue);
			            						// System.out.println("CurrentValue: "+tempCurrentValue);
			            						 
		
			            						
			            						if(!tempPreviousValue.equals(tempCurrentValue)) {
			            							// System.out.println("not equal");
			            							// ifAnyValueWillBeUpdate = true;
			            							// System.out.println("1");
			            							if( !(tempPreviousValue.equals("1900-01-01")) ) {
			            								if(tempChangeHistorySerial.equals("") ) {
			            									
			            									String tempPreviousSerial 			= completeTableOfCurrentElementName.get(indexOfExcelToBeUpdateRow).get(startingIndexForHistory);
			            									String[] tempPreviousSerialSplit 	= tempPreviousSerial.split(concatWith);
			            									
			            									int tempSerialNewValue 	= (tempPreviousSerialSplit.length)+1;
			            									tempChangeHistorySerial = tempPreviousSerial + concatWith + tempSerialNewValue;
			            								}else {
			            									String[] tempPreviousSerialSplit = tempChangeHistorySerial.split(concatWith);
			            									int tempSerialNewValue = (tempPreviousSerialSplit.length)+1;
			            									tempChangeHistorySerial = tempChangeHistorySerial + concatWith + tempSerialNewValue;
			            								}
		
				            							
			            								if(tempChangeHistoryUser.equals("") ) {
			            									String tempPreviousUser = completeTableOfCurrentElementName.get(indexOfExcelToBeUpdateRow).get(startingIndexForHistory+1);
			            									tempChangeHistoryUser 	= tempPreviousUser + concatWith + username;
			            								}else {
			            									tempChangeHistoryUser = tempChangeHistoryUser + concatWith + username;
			            								}
		
																
		            								LocalDate currentDate = LocalDate.now(); // Create a date object
			            								if(tempChangeHistoryDate.equals("") ) {
			            									String tempPreviousDate = completeTableOfCurrentElementName.get(indexOfExcelToBeUpdateRow).get(startingIndexForHistory+2);
			            									tempChangeHistoryDate 	= tempPreviousDate + concatWith + currentDate.toString();
			            								}else {
			            									tempChangeHistoryDate = tempChangeHistoryDate + concatWith + currentDate.toString();
			            								}
															
														
		            								String currentTime = LocalTime.now().truncatedTo(ChronoUnit.SECONDS).format(DateTimeFormatter.ISO_LOCAL_TIME);
			            								if(tempChangeHistoryTime.equals("") ) {
			            									String tempPreviousTime = completeTableOfCurrentElementName.get(indexOfExcelToBeUpdateRow).get(startingIndexForHistory+3);
			            									tempChangeHistoryTime 	= tempPreviousTime + concatWith + currentTime.toString();
			            								}else {
			            									tempChangeHistoryTime = tempChangeHistoryTime + concatWith + currentTime.toString();
			            								}
		            								
				            							
				            							// for attribute
				            							String attributeSGV = elementAttributeNameToSGV.get(countForSystemAndPrimary);
				            							String[] splitELE 	= attributeSGV.split("_");
				            			        		int index = ( Integer.parseInt(splitELE[1].replaceFirst("^0+(?!$)", "")) ) - 1;
				            			        		
			            								if(tempChangeHistoryAttribute.equals("") ) {
			            									String tempPreviousAttribute = completeTableOfCurrentElementName.get(indexOfExcelToBeUpdateRow).get(startingIndexForHistory+4).trim();
			            									
			            									if( tempPreviousAttribute.equals("") ) {
			            										tempChangeHistoryAttribute = " " + concatWith + attributeInformation.get(index).getActualAttribute();
			            									}else {
			            										tempChangeHistoryAttribute = tempPreviousAttribute + concatWith + attributeInformation.get(index).getActualAttribute();
				 	 									}
																
			            								}else {
			            									
			            									if(attributeInformation.get(index).getActualAttribute().equals("")) {
			            										tempChangeHistoryAttribute = tempChangeHistoryAttribute + concatWith + " ";
			            									}else {
			            										tempChangeHistoryAttribute = tempChangeHistoryAttribute + concatWith + attributeInformation.get(index).getActualAttribute();
			            									}
			            								}
			
			            								// System.out.println("tempChangeHistoryAttribute: "+tempChangeHistoryAttribute);
				            							
			            								if(tempChangeHistoryOldValue.equals("") ) {
			            									
			            									String tempPreviousOldValueFromDatabase = completeTableOfCurrentElementName.get(indexOfExcelToBeUpdateRow).get(startingIndexForHistory+5).trim();
			            									
			            									if(tempPreviousOldValueFromDatabase.equals("")) {
			            										tempChangeHistoryOldValue = " " + concatWith + tempPreviousValue;
			            									}else {
			            										tempChangeHistoryOldValue = tempPreviousOldValueFromDatabase + concatWith + tempPreviousValue;
			            									}
			            									//if(tempPreviousValue.equals("")) {
			            										//tempChangeHistoryOldValue = tempPreviousOldValueFromDatabase + concatWith + " ";
			            									//}
			            								}else {
			            									
			            									if(tempPreviousValue.equals("")) {
			            										tempChangeHistoryOldValue = tempChangeHistoryOldValue + concatWith + " ";
			            									}else {
			            										tempChangeHistoryOldValue = tempChangeHistoryOldValue + concatWith + tempPreviousValue;
			            									}
			            								}
																	
				            							// System.out.println("tempChangeHistoryOldValue: "+tempChangeHistoryOldValue);
														
			            								if(tempChangeHistoryNewValue.equals("") ) {
			            									String tempPreviousNewValue = completeTableOfCurrentElementName.get(indexOfExcelToBeUpdateRow).get(startingIndexForHistory+6);
			            									tempChangeHistoryNewValue = tempPreviousNewValue + concatWith + tempCurrentValue;
			            									
			            									if(tempPreviousNewValue.equals("") || tempPreviousNewValue.equals(" ")) {
			            										tempChangeHistoryNewValue = " " + concatWith + tempCurrentValue;
			            									}
			            									if(tempCurrentValue.equals("") || tempCurrentValue.equals(" ")) {
			            										tempChangeHistoryNewValue = tempPreviousNewValue + concatWith + " ";
			            									}
			            									
			            								}else {
			            									
			            									if(tempCurrentValue.equals("")) {
			            										tempChangeHistoryNewValue = tempChangeHistoryNewValue + concatWith + " ";
			            									}else {
			            										tempChangeHistoryNewValue = tempChangeHistoryNewValue + concatWith + tempCurrentValue;
			            									}
			            									
			            								}
			            								
				            							// System.out.println("tempChangeHistoryNewValue: "+tempChangeHistoryNewValue);
				            							
			            								if(tempChangeHistoryAction.equals("") ) {
			            									String tempPreviousAction = completeTableOfCurrentElementName.get(indexOfExcelToBeUpdateRow).get(startingIndexForHistory+7);
			            									tempChangeHistoryAction = tempPreviousAction + concatWith + "Update";
			            								}else {
			            									tempChangeHistoryAction = tempChangeHistoryAction + concatWith + "Update";
			            								}
			            								
				            							// System.out.println("tempChangeHistoryAction: "+tempChangeHistoryAction);
		
				            							
			            							}
			            						}else {
			            							// System.out.println("equal");
			            							// print("ifAnyValueWillBeUpdate: "+ifAnyValueWillBeUpdate);
			            							if(ifAnyValueWillBeUpdate == false) {
			            								 // System.out.println("--------------------------------");
			            								 // System.out.println("inin");
			            								 // System.out.println("ifAnyValueWillBeUpdate: "+ifAnyValueWillBeUpdate);
			            								
			            								String SGV = attributeInformation.get(k).getSelfGeneratedAttribute();
			            								
				            							String attributeSGV = elementAttributeNameToSGV.get(countForSystemAndPrimary);
				            							String[] splitELE 	= attributeSGV.split("_");
				            			        		int index = ( Integer.parseInt(splitELE[1].replaceFirst("^0+(?!$)", "")) );
				            			        		
				            			        		try {
					            							 tempChangeHistorySerial 	= completeTableOfCurrentElementName.get(indexOfExcelToBeUpdateRow).get(startingIndexForHistory);
					            							 tempChangeHistoryUser 		= completeTableOfCurrentElementName.get(indexOfExcelToBeUpdateRow).get((startingIndexForHistory+1));
					            							 tempChangeHistoryDate 		= completeTableOfCurrentElementName.get(indexOfExcelToBeUpdateRow).get((startingIndexForHistory+2));
					            							 tempChangeHistoryTime 		= completeTableOfCurrentElementName.get(indexOfExcelToBeUpdateRow).get((startingIndexForHistory+3));
					            							 tempChangeHistoryAttribute	= completeTableOfCurrentElementName.get(indexOfExcelToBeUpdateRow).get((startingIndexForHistory+4));
					            							 tempChangeHistoryOldValue 	= completeTableOfCurrentElementName.get(indexOfExcelToBeUpdateRow).get((startingIndexForHistory+5));
					            							 tempChangeHistoryNewValue 	= completeTableOfCurrentElementName.get(indexOfExcelToBeUpdateRow).get((startingIndexForHistory+6));
					            							 tempChangeHistoryAction 	= completeTableOfCurrentElementName.get(indexOfExcelToBeUpdateRow).get((startingIndexForHistory+7));
														} catch (Exception e) {
															// TODO: handle exception
		
					            							 tempChangeHistorySerial 	= "1";
					            							 tempChangeHistoryUser 		= username;
					            							 tempChangeHistoryDate 		= LocalDate.now().toString();
					            							 tempChangeHistoryTime 		= LocalTime.now().truncatedTo(ChronoUnit.SECONDS).format(DateTimeFormatter.ISO_LOCAL_TIME).toString();
					            							 tempChangeHistoryAttribute	= " ";
					            							 tempChangeHistoryOldValue 	= " ";
					            							 tempChangeHistoryNewValue 	= " ";
					            							 tempChangeHistoryAction 	= "Create";
														}
			            								
			            								
				            							 //tempChangeHistorySerial 	= completeTableOfCurrentElementName.get(indexOfExcelToBeUpdateRow).get(startingIndexForHistory);
				            							 //tempChangeHistoryUser 		= completeTableOfCurrentElementName.get(indexOfExcelToBeUpdateRow).get((startingIndexForHistory+1));
				            							 //tempChangeHistoryDate 		= completeTableOfCurrentElementName.get(indexOfExcelToBeUpdateRow).get((startingIndexForHistory+2));
				            							 //tempChangeHistoryTime 		= completeTableOfCurrentElementName.get(indexOfExcelToBeUpdateRow).get((startingIndexForHistory+3));
				            							 //tempChangeHistoryAttribute	= completeTableOfCurrentElementName.get(indexOfExcelToBeUpdateRow).get((startingIndexForHistory+4));
				            							 //tempChangeHistoryOldValue 	= completeTableOfCurrentElementName.get(indexOfExcelToBeUpdateRow).get((startingIndexForHistory+5));
				            							 //tempChangeHistoryNewValue 	= completeTableOfCurrentElementName.get(indexOfExcelToBeUpdateRow).get((startingIndexForHistory+6));
				            							 //tempChangeHistoryAction 	= completeTableOfCurrentElementName.get(indexOfExcelToBeUpdateRow).get((startingIndexForHistory+7));
				            							 // System.out.println("--------------------------------");
			            							}
			            						}
		            						}
		
		            						// System.out.println("///////////////");
		            						if( attributeInformation.get(k).getAttributeFormat().equals("Date") && !(attributeInformation.get(k).getGroupCaption().equals("Change History") && attributeInformation.get(k).getGroupStyle().equals("Tabular") )) {
		
		            							if(tempCurrentValue.toString().equals("")) {
		            								tempUpdateArray.add("'1900-01-01'");
		            								// System.out.println("count date: "+count++);
																		
		            							}else {
		            								tempUpdateArray.add("'"+tempCurrentValue+"'");
		            								// System.out.println("count date: "+count++);
		            							}
		            						}
		            						else if( attributeInformation.get(k).getAttributeFormat().equals("Time") && !( attributeInformation.get(k).getGroupCaption().equals("Change History") && attributeInformation.get(k).getGroupStyle().equals("Tabular") ) ) {
		            							
		            							if(tempCurrentValue.toString().trim().equals("")) {
		            								LocalTime time 		= LocalTime.parse("00:00:00") ;
			            							String timeInText 	= time.toString();
			            							
			            							
			            							
		        									DateFormat df = new SimpleDateFormat("hh:mm:ss");
													Date date;
													try {
														date = df.parse("00:00:00");
														final String timeString = new SimpleDateFormat("HH:mm:ss").format(date.getTime());
														tempUpdateArray.add("'"+timeString+"'");
													} catch (ParseException e2) {
														// TODO Auto-generated catch block
														tempUpdateArray.add("'"+timeInText+"'");
														// e2.printStackTrace();
													}
		
		            							}else {
		            								
		            								try {
														DateFormat formatTime = new SimpleDateFormat("HH:mm:ss");
														Date date = currentCellData.getDateCellValue();
														String currentCelltime =formatTime.format(date);
		            									
														tempUpdateArray.add("'"+currentCelltime+"'");
		            									
														
													} catch (Exception e) {
														// TODO: handle exception
			            								LocalTime time 		= LocalTime.parse("00:00:00") ;
				            							String timeInText 	= time.toString();
				            							//String currentCelltime = timeInText;
				            							
				            							
				            							
				            							
		            									DateFormat df = new SimpleDateFormat("hh:mm:ss");
														Date date;
														try {
															date = df.parse("00:00:00");
															final String timeString = new SimpleDateFormat("HH:mm:ss").format(date.getTime());
															tempUpdateArray.add("'"+timeString+"'");
														} catch (ParseException e2) {
															// TODO Auto-generated catch block
															tempUpdateArray.add("'"+timeInText+"'");
															// e2.printStackTrace();
														}
													}
																		
														} 
													}
		            						else if( attributeInformation.get(k).getAttributeFormat().equalsIgnoreCase("CheckBox") || attributeInformation.get(k).getAttributeFormat().equalsIgnoreCase("Radio") ) {
		            							String tempData = tempCurrentValue.toString().trim();
			
		            							// System.out.println(" ");
		            							// System.out.println("^^^^^^ ");
		            							// System.out.println("checkBox");
		            							// System.out.println(tempData);
		            							// System.out.println("^^^^^^ ");
		            							// System.out.println(" ");
		
		            							if (tempData.equalsIgnoreCase("TRUE")) {
		            								tempUpdateArray.add("'TRUE'");
		            								// System.out.println("count checkBox: "+count++);
													}
		            							else if (tempData.equalsIgnoreCase("FALSE")) {
		            								tempUpdateArray.add("'FALSE'");
		            								// System.out.println("count checkbox: "+count++);
																}
		            							else if( tempData.equalsIgnoreCase("") ) {
		            								DisplayMsg = "* Warning Message:  Empty checkbox/Radio value in sheet in sheet <"+sheetName+"> line no. "+excelLineNo+" column no. "+excelColumnNo+". \n\n";
		                    						readAndUpdateTextFile(LogFileName, DisplayMsg);
		                    						tempUpdateArray.add("''");
		                    						// System.out.println("count checkbox: "+count++);
																}
												else{
		            								DisplayMsg = "* Warning Message:  Wrong checkbox/Radio value i.e. <"+tempData+"> in sheet <"+sheetName+"> line no. "+excelLineNo+" column no. "+excelColumnNo+". \n\n";
		                    						readAndUpdateTextFile(LogFileName, DisplayMsg);
		                    						tempUpdateArray.add("''");
		                    						// System.out.println("count checkbox: "+count++);
												}
											}
		            						else {
		            							
		            							if(!(attributeInformation.get(k).getGroupCaption().equals("Change History") && attributeInformation.get(k).getGroupStyle().equals("Tabular") )) {
			            							String escapeSpecialCharacter = "";
			            							if( attributeInformation.get(k).getAttributeFormat().equalsIgnoreCase("URL") ) {
			            								// escapeSpecialCharacter = escapeMetaCharacters(tempCurrentValue.toString(), "url");
			            								
			            								
				            							if ( isValidURL( tempCurrentValue.toString() ) ) {
				            								escapeSpecialCharacter = escapeMetaCharacters(tempCurrentValue.toString(), "url");
			        									 }else {
															 DisplayMsg = "* Warning Message: Url format is not valid in sheet <"+sheetName+"> line no. "+excelLineNo+".\n\n";
				                    						 readAndUpdateTextFile(LogFileName, DisplayMsg);
				                    						 escapeSpecialCharacter = "";
			        									 }
			            								
			            							}else {
			            								escapeSpecialCharacter = escapeMetaCharacters(tempCurrentValue.toString(), "text");
			            							}
			            							tempUpdateArray.add("'"+escapeSpecialCharacter+"'");
			            							// System.out.println("count else: "+count++);
		            							}
		            						}
		
		            						// System.out.println("###########################################");
		            					}
		            					
		            					
		            					
		        						if(attributeInformation.get(k).getGroupCaption().equals("Change History") && attributeInformation.get(k).getGroupStyle().equals("Tabular") ) {
		
		        							if(attributeInformation.get(k).getActualAttribute().equals("#")) {
		        								
		        								tempUpdateArray.add("'"+tempChangeHistorySerial+"'");
		        							}else if(attributeInformation.get(k).getActualAttribute().equals("User")) {
		        								
		        								tempUpdateArray.add("'"+tempChangeHistoryUser+"'");
		        							}else if(attributeInformation.get(k).getActualAttribute().equals("Date")) {
		        								
		        								tempUpdateArray.add("'"+tempChangeHistoryDate+"'");
		        								
		        							}else if(attributeInformation.get(k).getActualAttribute().equals("Time")) {
		        								
		        								tempUpdateArray.add("'"+tempChangeHistoryTime+"'");
		        								
		        							}else if(attributeInformation.get(k).getActualAttribute().equals("Attribute")) {
		
		        								tempUpdateArray.add("'"+tempChangeHistoryAttribute+"'");
		        							}else if(attributeInformation.get(k).getActualAttribute().equals("Old Value")) {
		
		        								tempUpdateArray.add("'"+tempChangeHistoryOldValue+"'");
		        							}else if(attributeInformation.get(k).getActualAttribute().equals("New Value")) {
		
		        								tempUpdateArray.add("'"+tempChangeHistoryNewValue+"'");
		        							}else if(attributeInformation.get(k).getActualAttribute().equals("Action")) {
		
		        								tempUpdateArray.add("'"+tempChangeHistoryAction+"'");
												}
											}
		            						// System.out.println("need to insert");
		            				} // end updateFlag == true
		            				
		            				countForSystemAndPrimary++;
		            			} // end if not Relationship
		            		} // end complete current column loop
													
		            		// System.out.println("tempUpdateArray: "+tempUpdateArray);
		            		
		            		if(insertFlag == true) {
		            			//System.out.println("insertFlag == true: ");
		            			//System.out.println("firstValue: "+firstColumnText);
		//    					getNamesColumnByTableName.add(firstColumnText.toString());
		            			getNamesColumnByTableName.add(escapeMetaCharacters(firstColumnText.toString().trim(), "text"));
		    					
		    					// System.out.println("dataForInsertIntoDBArray.add(tempInsertArray): "+namesColumnsDataOfAllElements.get(tableName));
		
		            			if(tempInsertArray.size() > 0) {
		            				tempInsertArray.add("'"+username+"'");
			            			dataForInsertIntoDBArray.add(tempInsertArray);
											}
													
		
		            		}else if(updateFlag == true) {
		            			// System.out.println("updateFlag == true: ");
			            		
			            		if(tempUpdateArray.size() > 0) {
			            			// System.out.println("tempUpdateArraySIZE: "+tempUpdateArray.size());
			            			// System.out.println(tempUpdateArray);
			            			dataForUpdateIntoDBArray.add(tempUpdateArray);
										}
									}
											
		            		if( (dataForInsertIntoDBArray.size() > 0) && (dataForInsertIntoDBArray.size() == 100) ) {
		//            		if( (dataForInsertIntoDBArray.size() > 0)) {
		            			// System.out.println("dataForInsertIntoDBArray .size() == 100");
		            			// System.out.println(dataForInsertIntoDBArray);
		            			int insertIntoDb = enterpriseDAO.impexInsertElements(dbName, sheetName.replaceAll("\\s", "_"), selfGeneratedValuesForCurrnetElement, dataForInsertIntoDBArray, username );
			            		dataForInsertIntoDBArray.clear();
			            	}
		            		
												
		            		if( (dataForUpdateIntoDBArray.size() > 0) && (dataForUpdateIntoDBArray.size() == 100) ) {
		            			// System.out.println("(dataForUpdateIntoDBArray.size() > 0) && (dataForUpdateIntoDBArray.size() == 100)");
		            			// System.out.println(dataForUpdateIntoDBArray);
												
		            			int updateIntoDb =  enterpriseDAO.impexUpdateElements(dbName, tableName, selfGeneratedValuesForCurrnetElement, dataForUpdateIntoDBArray, username);
			            		dataForUpdateIntoDBArray.clear();
			            	}
		            		
		            		
		            	} // end complete row loop
										
			
			
		            	// inserting objects into DB start
		            	if(dataForInsertIntoDBArray.size() > 0){
		            		int insertIntoDb = enterpriseDAO.impexInsertElements(dbName, sheetName.replaceAll("\\s", "_"), selfGeneratedValuesForCurrnetElement, dataForInsertIntoDBArray, username);
		            		dataForInsertIntoDBArray.clear();
										}
		            	// inserting objects into DB end 
										
		            	// Updating objects into DB start
		            	if(dataForUpdateIntoDBArray.size() > 0){
		            		// System.out.println("final");
		            		// System.out.println("(dataForUpdateIntoDBArray.size() > 0)");
		            		// System.out.println("dataLength: "+dataForUpdateIntoDBArray.size());
		            		// System.out.println("dataLength: "+dataForUpdateIntoDBArray.get(0).size());
		            		// System.out.println("dataLength: "+dataForUpdateIntoDBArray.get(1).size());
			
		        			int updateIntoDb = enterpriseDAO.impexUpdateElements(dbName, tableName, selfGeneratedValuesForCurrnetElement, dataForUpdateIntoDBArray, username);
		            		dataForUpdateIntoDBArray.clear();
		            	}		            	
		            	// Updating objects into DB end 
					 					
					 				
					 				
		            	
		
		            	// System.out.println("dataForUpdateIntoDBArray: "+dataForUpdateIntoDBArray);
						// System.out.println("getNamesColumnByTableName: "+getNamesColumnByTableName); 
						// System.out.println("before: "+namesColumnsDataOfAllElements.get(tableName));
						namesColumnsDataOfAllElements.put(tableName, getNamesColumnByTableName);
						// System.out.println("after: "+namesColumnsDataOfAllElements.get(tableName));
						
						
						
				        long TimeForSheetImportEnd = System.currentTimeMillis();
				        long diffTime = (TimeForSheetImportEnd - TimeForSheetImportStart)/1000;
		
				        DisplayMsg = "* All "+tableName+" objects Imported successfully [Total Imported Time - "+diffTime+" secs]\n\n";
						readAndUpdateTextFile(LogFileName, DisplayMsg);
						
						
						
					} // sheet loop end
					
					
					
					
					
					// ///////////////////// Relationship Code starts from here ////////////////////////////
					// System.out.println("");
					/// System.out.println("///////////////////// Relationship Code starts from here ////////////////////////////");
					
					
					Map<String, List<ArrayList<String>>> allRelationshipObjectQueryData = new HashMap<String, List<ArrayList<String>>>();
					Map<String, List<ArrayList<String>>> allRelationshipTypeObjectData = new HashMap<String, List<ArrayList<String>>>();
					
					ArrayList<String> idForDeleteEntriesFromRelationshipTable	= new ArrayList<String>();
					List<ArrayList<String>> dataForInsertIntoRelationshipTable 	= new ArrayList<ArrayList<String>>();
					List<ArrayList<String>> dataForInsertIntoRelationshipTypeObjects 	= new ArrayList<ArrayList<String>>();
		
						for (int i = 1; i < sheetsCount; i++) { // sheet loop
						// for (int i = 1; i < 2; i++) { // sheet loop
		            	
		                    XSSFSheet sheet 		= wb.getSheetAt(i);
		                    String sheetName 		= wb.getSheetName(i);
		                    String tableName 		= sheetName.replaceAll("\\s", "_");
		                    int sheetColumnsLength 	= sheet.getRow(1).getLastCellNum();
		                    List<String> getNamesColumnDataByTableName = new ArrayList<>();
		                    
		                    
			    			long TimeForSheetImportStart = System.currentTimeMillis();
			    			DisplayMsg = "* Import of "+tableName+" relationship begins\n\n";
			    			readAndUpdateTextFile(LogFileName, DisplayMsg);
		                    
		                    
		                    
		                    int totalNoOfRowsInCurrentSheet = sheet.getLastRowNum();
		                    
		                    List<attributesInformation> attributeInformation = allElementsAttributesInformation.get(tableName);
		
		                    for (int j = 2; j <= totalNoOfRowsInCurrentSheet; j++) { // row loop
		                        
		                    	int excelLineNo 	= j+1;
		                        XSSFRow currentRow 	= sheet.getRow(j);
		                        
			            		if(currentRow == null) {
			            			continue;
			            		}
		                        
		                        XSSFCell firstColumnText = currentRow.getCell(0);
		                    // System.out.println("firstColumnText: "+firstColumnText);
		                        String nameColumnText = "";
		                    
		                    
		                        if(firstColumnText == null || firstColumnText.equals("")) {
		                        	continue;
		                        }else {
		                        	nameColumnText = escapeMetaCharacters(firstColumnText.toString().trim(), "text");
		                        }
		                        
		                        
		                        if(getNamesColumnDataByTableName.contains(nameColumnText)) {
		                        	continue;
		                        }else {
		                        	getNamesColumnDataByTableName.add(nameColumnText);
		                        }
		                        
		                        
		                        for (int k = 0; k < sheetColumnsLength; k++) { // column loop
		
		                            XSSFCell currentCellData = currentRow.getCell(k);
		                            int excelColumnNo = k+1;
		
		                            if(attributeInformation.get(k).getAttributeType().equals("Relationship")) {
		                            	
		                            	String sourceRelationshipElement = attributeInformation.get(k).getSourceRelationship_Element();
		                            	String targetRelationshipElement = attributeInformation.get(k).getTargetRelationship_Element();
		                            	
		                            	String selfGeneratedValue 		= attributeInformation.get(k).getSelfGeneratedAttribute();
		                            	String actualAttribute 			= attributeInformation.get(k).getActualAttribute();
		                            	
		                            	String relationshipType			= attributeInformation.get(k).getRelationship();
		                            	String biDirRelationshipPair	= attributeInformation.get(k).getBidirectionRelationshipPair();
		                            	
		                            	
		                            	String sourceOrTargetActualAttribute = get2ndActualAttributeForRelationships(biDirRelationshipPair, attributeInformation, allElementsAttributesInformation);
		                                if( !(currentCellData == null || currentCellData.toString().trim().equals("")) ) {
		                                	// ///////// means some relationships are present ///////
		                                	String relationshipObjectName = escapeMetaCharacters(currentCellData.toString().trim(), "text");
		                                	
		                                	
		                                	if(nameColumnText.equals(relationshipObjectName)) {
		                    					DisplayMsg = "* Error Message: Self relation found in row no # "+(j+1)+" with column no # "+(k+1)+" in sheet "+tableName+"\n ";
		                    					readAndUpdateTextFile(LogFileName, DisplayMsg);
		                                		continue;
		                                	}
		                                	
		                                	if( ( !(sourceRelationshipElement.equals("N/A")) && (targetRelationshipElement.equals("N/A")) ) ) {
		                                		// ///////// means source found (Target Element) ///////
		                                		
		                                		// System.out.println("----------Target Element Start----------");
		
		                                		String source 		= sourceRelationshipElement; // check in object table
		                                		String destination 	= attributeInformation.get(k).getElementName();
		                                		
		                                		String relationshipObjectTableName = sourceRelationshipElement;
		                                		List<RelationsModel> currentAttributeRelationships =  allElementsRelationships.get(relationshipObjectTableName);
		                                		int sizeOfCurrentAttributeRelationships = currentAttributeRelationships.size();
		                                		
		                                		List<String> namesColumnsDataOfCurrentElement = namesColumnsDataOfAllElements.get(relationshipObjectTableName);		// getting names array of current relationship object table
		
		                                		
		                                		///////////////////////////////////////////////////////////////////////////
		                                		String[] splitRelationshipObjectName = relationshipObjectName.split(";");
		                                		int splittedLength = splitRelationshipObjectName.length;
		                                		String allowedLength = attributeInformation.get(k).getSingleOrMultiple();
		                                		boolean relationPossible = true;
		                                		String limitStr = attributeInformation.get(k).getMaximumNumberofObjectOccurrence().replaceAll(".0", "");
		                                		if(allowedLength.equals("Single")) {
		                                			limitStr = "1";
		                                		}
		                                		try {
		                        					int limit=Integer.parseInt(limitStr);
		                        					if(splittedLength>limit) {
		                        						// System.out.println("limit exceeded: "+actualAttribute+", "+sheetName);
		                        						relationPossible = false;
		                        					}
		                        				}catch (Exception e) {
		                        					// TODO: handle exception
		                        				}
		                                		////////////////////////////////////////////////////////////////////////////
		                                		
		                                		if(relationPossible == true) {
		                                		
			                                		for(int l=0; l<splitRelationshipObjectName.length; l++) {
			                                			
			                                			String splittedRelObjName = escapeMetaCharacters(splitRelationshipObjectName[l].toString().trim(), "text");
			                                			
			                                			boolean objectPresentInElementTable = namesColumnsDataOfCurrentElement.contains(splittedRelObjName);
			                                			
			                                    		if(!objectPresentInElementTable) {
			                                    			// means object not present in current element table
			                                    			List<attributesInformation> attributeInformationForCurrentTable = allElementsAttributesInformation.get(relationshipObjectTableName);
			                                    			ArrayList<String> CurrentRelationshipObjectData = dataForInsertInElementTable(splittedRelObjName, username, attributeInformationForCurrentTable, username);
			                                    			
			                                    			List<ArrayList<String>> getPreviousAndAddNew 	= new ArrayList<ArrayList<String>>();
			                                    			if(allRelationshipObjectQueryData.get(relationshipObjectTableName) != null) {
			                                    				getPreviousAndAddNew = allRelationshipObjectQueryData.get(relationshipObjectTableName);
			                                    			}
			                                    			
			                                    			getPreviousAndAddNew.add(CurrentRelationshipObjectData);
			                                    			allRelationshipObjectQueryData.put(relationshipObjectTableName, getPreviousAndAddNew);
			                                    			
			                                    			namesColumnsDataOfCurrentElement.add(splittedRelObjName); 		// Add new relationship object name to its respective table (object name) array
			                                    			namesColumnsDataOfAllElements.put(relationshipObjectTableName, namesColumnsDataOfCurrentElement); 		// add array of names of realationship object to dictionary again
			                                    			
			                                    		}
			                                    		
			                                    		///////////////////////////////  FOR RELATIONSHIP START //////////////////////
			                                    		
			                                    		String sourceAttributeValue 		= escapeMetaCharacters(firstColumnText.toString().trim(), "text");
			                                    		String DestinationAttributeValue 	= splittedRelObjName;
			                                    		
			                                    		boolean exists = false;
			                                    		// boolean exists = false;
			                                    		
			                                    		for(int m=0; m<sizeOfCurrentAttributeRelationships; m++) {
			                                    			RelationsModel obj = currentAttributeRelationships.get(m); 
			                                    			if(obj.getSourceRelElement().equals(source) && obj.getTargetRelElement().equals(destination) && obj.getRelationshipType().equals(relationshipType) && obj.getBidirectionRelationshipPair().equals(biDirRelationshipPair) && obj.getSourceAttValue().equals(sourceAttributeValue) && obj.getTargetAttValue().equals(DestinationAttributeValue) ) {
			                                    				exists = true;
			                                    				break;
			                                    			}
			                                    			
			                                    		}
			                                    		
			                                    		if(exists == false) {
			                                    			ArrayList<String> tempRelInsertArray = new ArrayList<String>( Arrays.asList("'"+source+"'","'"+destination+"'", "'"+sourceOrTargetActualAttribute+"'","'"+actualAttribute+"'","'"+sourceAttributeValue+"'","'"+DestinationAttributeValue+"'","'"+relationshipType+"'","'"+biDirRelationshipPair+"'"));
			                                    			dataForInsertIntoRelationshipTable.add(tempRelInsertArray);
			                                    			
			                                    			
			                                    			///// Adding relationship type objects into database start /////// i.e associations
			                                    			
			                                    			String relationshipTypeTableName = DestinationAttributeValue+"_X_"+sourceAttributeValue;
			                                    			
			                                    			if( !allRelationshipObjectNames.get(relationshipType).contains(relationshipTypeTableName) ) {
			                                    				
			                                    				String relationshipTypeTableFrom = DestinationAttributeValue;
			                                        			String relationshipTypeTableTo	 = sourceAttributeValue;
			                                        			ArrayList<String> relationshipTypeTableDataForInsertionArray = new ArrayList<String>();
			                                        			ArrayList<String> relationshipTypeTableSGVForInsertionArray = new ArrayList<String>();
			                                        			
			                                        			List<attributesInformation> attributeInformationForCurrentRelationshipType = allElementsAttributesInformation.get(relationshipType);
			                                        			
			                                        			for(int n=0; n<attributeInformationForCurrentRelationshipType.size(); n++) {
			                                        				
			                                        				String actualAttributeForRelationshipObject = attributeInformationForCurrentRelationshipType.get(n).getActualAttribute();
			                                        				String SGVForRelationshipObject = attributeInformationForCurrentRelationshipType.get(n).getSelfGeneratedAttribute();
			                                        				
			                                        				if( actualAttributeForRelationshipObject.equals("Name") ){
			                                        					relationshipTypeTableDataForInsertionArray.add("'"+relationshipTypeTableName+"'");
			                                        					
			                                        				}
			                                        				else if( actualAttributeForRelationshipObject.equals("From") ) {
			                                        					relationshipTypeTableDataForInsertionArray.add("'"+relationshipTypeTableFrom+"'");
			                                        					
			                                        				}
			                                        				else if( actualAttributeForRelationshipObject.equals("To") ) {
			                                        					relationshipTypeTableDataForInsertionArray.add("'"+relationshipTypeTableTo+"'");
			                                        					
			                                        				}
			                                        				else {
			                                        					relationshipTypeTableDataForInsertionArray.add("''");
			                                        					
			                                        				}
			                                        			}
			                                        			relationshipTypeTableDataForInsertionArray.add("'"+username+"'");
			                                        			dataForInsertIntoRelationshipTypeObjects.add(relationshipTypeTableDataForInsertionArray);
			                                        			
			                                        			List<ArrayList<String>> getPreviousAndAddNew 	= new ArrayList<ArrayList<String>>();
			                                        			if(allRelationshipTypeObjectData.get(relationshipType) != null) {
			                                        				getPreviousAndAddNew = allRelationshipTypeObjectData.get(relationshipType) ;
			                                        			}
			                                        			getPreviousAndAddNew.add(relationshipTypeTableDataForInsertionArray);
			                                        			allRelationshipTypeObjectData.put(relationshipType, getPreviousAndAddNew);
			                                        			
			                                    			};
			                                    			
			                                    			///// Adding relationship type objects into database end /////// i.e associations
			                                    			
			                                    		}
			                                    		///////////////////////////////  FOR RELATIONSHIP END  //////////////////////
			                                		}
		                                	}else {
		            					        DisplayMsg = "*Error Message: Relationship limit Exceed in sheet ["+tableName+"] in column ["+actualAttribute+"] row number ["+excelLineNo+"] having values ["+currentCellData.toString().trim()+"] \n\n";
		            							readAndUpdateTextFile(LogFileName, DisplayMsg);
		                                	}
		
						
		                            		// ------------- for check and delete relationships start -----------------
		                                		
		                            		// ArrayList<String> idsArray = getIdOfRelationshipToBeDeleted(source, destination, sourceOrTargetActualAttribute, actualAttribute, relationshipObjectName, nameColumnText, relationshipType, biDirRelationshipPair, currentAttributeRelationships, "targetElement");
		                            		// idForDeleteEntriesFromRelationshipTable.addAll(idsArray);
		                            		
		                            		// ------------- for check and delete relationships end -------------------
		
		                                		// System.out.println("----------Target Element End----------");
		                            		
		                                	} // end if (target relationship)
		                                	
		                                	
		                                	if( ( (sourceRelationshipElement.equals("N/A")) && !(targetRelationshipElement.equals("N/A")) ) ) {
		                                		// ///////// means Target found (Source Element)///////
		                                		
		                                		// System.out.println("----------Source Element Start----------");
		                                		
		                                		
		                                		String source = attributeInformation.get(k).getElementName(); 
		                                		String destination = targetRelationshipElement; // check in object table
		                                		
		                                		
		                                		String relationshipObjectTableName = targetRelationshipElement;
		                                		
		                                		List<RelationsModel> currentAttributeRelationships =  allElementsRelationships.get(relationshipObjectTableName);
		                                		int sizeOfCurrentAttributeRelationships = currentAttributeRelationships.size();
		                                		
		                                		List<String> namesColumnsDataOfCurrentElement = namesColumnsDataOfAllElements.get(relationshipObjectTableName);		// getting names array of current relationship object table
		                                		
		                                		String[] splitRelationshipObjectName = relationshipObjectName.split(";");
		                                		
		                                		

		                                		///////////////////////////////////////////////////////////////////////////
		                                		int splittedLength = splitRelationshipObjectName.length;
		                                		String allowedLength = attributeInformation.get(k).getSingleOrMultiple();
		                                		boolean relationPossible = true;
		                                		String limitStr = attributeInformation.get(k).getMaximumNumberofObjectOccurrence().replaceAll(".0", "");
		                                		if(allowedLength.equals("Single")) {
		                                			limitStr = "1";
		                                		}
		                                		try {
		                        					int limit=Integer.parseInt(limitStr);
		                        					if(splittedLength>limit) {
		                        						relationPossible = false;
		                        					}
		                        				}catch (Exception e) {
		                        					// TODO: handle exception
		                        				}
		                                		////////////////////////////////////////////////////////////////////////////
		                                		
		                                		if(relationPossible == true) {		                                		
		                                		
		                                		
			                                		for(int l=0; l<splitRelationshipObjectName.length; l++) {
			                                			
			                                			String splittedRelObjName = escapeMetaCharacters(splitRelationshipObjectName[l].toString().trim(), "text");
			                                			
			                                			boolean objectPresentInElementTable = namesColumnsDataOfCurrentElement.contains(splittedRelObjName);
			                                			
			                                    		if(!objectPresentInElementTable) {
			                                    			// means object not present in current element table
			                                    			List<attributesInformation> attributeInformationForCurrentTable = allElementsAttributesInformation.get(relationshipObjectTableName);
			                                    			ArrayList<String> CurrentRelationshipObjectData = dataForInsertInElementTable(splittedRelObjName, username, attributeInformationForCurrentTable, username);
			                                    			
			                                    			List<ArrayList<String>> getPreviousAndAddNew 	= new ArrayList<ArrayList<String>>();
			                                    			if(allRelationshipObjectQueryData.get(relationshipObjectTableName) != null) {
			                                    				getPreviousAndAddNew = allRelationshipObjectQueryData.get(relationshipObjectTableName) ;
			                                    			}
			                                    			
			                                    			getPreviousAndAddNew.add(CurrentRelationshipObjectData);
			                                    			allRelationshipObjectQueryData.put(relationshipObjectTableName, getPreviousAndAddNew);
			                                    			
			                                    			namesColumnsDataOfCurrentElement.add(splittedRelObjName); 		// Add new relationship object name to its respective table (object name) array
			                                    			namesColumnsDataOfAllElements.put(relationshipObjectTableName, namesColumnsDataOfCurrentElement); 		// add array of names of realationship object to dictionary again
			                                    		}
			                                    		
			                                    		///////////////////////////////  FOR RELATIONSHIP START //////////////////////
			
			                                    		String sourceAttributeValue 		= splittedRelObjName;
			                                    		String DestinationAttributeValue 	= escapeMetaCharacters(firstColumnText.toString().trim(), "text");
			
			                                    		boolean relationshipExists = false;
			                                    		// boolean exists = false;
			                                    		
			                                    		for(int m=0; m<sizeOfCurrentAttributeRelationships; m++) {
			                                    			RelationsModel obj = currentAttributeRelationships.get(m); 
			                                    			if(obj.getSourceRelElement().equals(source) && obj.getTargetRelElement().equals(destination) && obj.getRelationshipType().equals(relationshipType) && obj.getBidirectionRelationshipPair().equals(biDirRelationshipPair) && obj.getSourceAttValue().equals(sourceAttributeValue) && obj.getTargetAttValue().equals(DestinationAttributeValue) ) {
			                                    				relationshipExists = true;
			                                    				break;
			                                    			}
			                                    		}
			                                    		
			                                    		
			                                    		if(relationshipExists == false) {
			                                    			ArrayList<String> tempRelInsertArray = new ArrayList<String>( Arrays.asList("'"+source+"'", "'"+destination+"'", "'"+actualAttribute+"'", "'"+sourceOrTargetActualAttribute+"'", "'"+sourceAttributeValue+"'", "'"+DestinationAttributeValue+"'", "'"+relationshipType+"'", "'"+biDirRelationshipPair+"'"));
			                                    			dataForInsertIntoRelationshipTable.add(tempRelInsertArray);
			                                    			
			                                    			
			                                    			///// Adding relationship type objects into database start /////// i.e associations
			                                    			
			                                    			String relationshipTypeTableName = DestinationAttributeValue+"_X_"+sourceAttributeValue;
			                                    			
			                                    			if( !allRelationshipObjectNames.get(relationshipType).contains(relationshipTypeTableName) ) {
			                                    				
			                                    				String relationshipTypeTableFrom = DestinationAttributeValue;
			                                        			String relationshipTypeTableTo	 = sourceAttributeValue;
			                                        			ArrayList<String> relationshipTypeTableDataForInsertionArray = new ArrayList<String>();
			                                        			
			                                        			List<attributesInformation> attributeInformationForCurrentRelationshipType = allElementsAttributesInformation.get(relationshipType);
			                                        			
			                                        			for(int n=0; n<attributeInformationForCurrentRelationshipType.size(); n++) {
			                                        				
			                                        				String actualAttributeForRelationshipObject = attributeInformationForCurrentRelationshipType.get(n).getActualAttribute();
			                                        				
			                                        				if( actualAttributeForRelationshipObject.equals("Name") ){
			                                        					relationshipTypeTableDataForInsertionArray.add("'"+relationshipTypeTableName+"'");
			                                        					
			                                        				}
			                                        				else if( actualAttributeForRelationshipObject.equals("From") ) {
			                                        					relationshipTypeTableDataForInsertionArray.add("'"+relationshipTypeTableFrom+"'");
			                                        					
			                                        				}
			                                        				else if( actualAttributeForRelationshipObject.equals("To") ) {
			                                        					relationshipTypeTableDataForInsertionArray.add("'"+relationshipTypeTableTo+"'");
			                                        					
			                                        				}
			                                        				else {
			                                        					relationshipTypeTableDataForInsertionArray.add("''");
			                                        				}
			                                        			}
			                                        			relationshipTypeTableDataForInsertionArray.add("'"+username+"'");
			                                        			dataForInsertIntoRelationshipTypeObjects.add(relationshipTypeTableDataForInsertionArray);
			                                        			
			                                        			List<ArrayList<String>> getPreviousAndAddNew 	= new ArrayList<ArrayList<String>>();
			                                        			if(allRelationshipTypeObjectData.get(relationshipType) != null) {
			                                        				getPreviousAndAddNew = allRelationshipTypeObjectData.get(relationshipType) ;
			                                        			}
			                                        			getPreviousAndAddNew.add(relationshipTypeTableDataForInsertionArray);
			                                        			allRelationshipTypeObjectData.put(relationshipType, getPreviousAndAddNew);
			                                        			
			                                    			};
			                                    			
			                                    			///// Adding relationship type objects into database end /////// i.e associations
			                                    			
			                                    		}
			                                    		///////////////////////////////  FOR RELATIONSHIP END  //////////////////////
			                                		}
		                                		}else {
			            					        DisplayMsg = "*Error Message: Relationship limit Exceed in sheet ["+tableName+"] in column ["+actualAttribute+"] row number ["+excelLineNo+"] having values ["+currentCellData.toString().trim()+"] \n\n";
			            							readAndUpdateTextFile(LogFileName, DisplayMsg);
			                                	}
		                                		// for check and delete relationships
		                                		// System.out.println("--------- Source Element Start ---------");
		                                		
		                            		
		                            		
		                            		////////////////////////////////////////
		                            		// ArrayList<String> idsArray = getIdOfRelationshipToBeDeleted(source, destination, actualAttribute, sourceOrTargetActualAttribute, relationshipObjectName, nameColumnText, relationshipType, biDirRelationshipPair, currentAttributeRelationships, "sourceElement");
		                            		// idForDeleteEntriesFromRelationshipTable.addAll(idsArray);
		                            		////////////////////////////////////////
		                            		
		                            		
		                            		
		                                		// System.out.println("--------- Source Element End ---------");
		                                		// for check and delete relationships
		
		                                		// System.out.println("----------Source Element End----------");
		
		                                	} // end if (source relationship)
		                                	
		                                	
		                                }
		//                                else if((currentCellData == null || currentCellData.toString().trim().equals(""))) {
		//                                	String relationshipObjectName = "";
		//
		//                                	if( !(firstColumnText == null || firstColumnText.toString().trim().equals("")) ) {
		//                                	
		//                                    	if( ( !(sourceRelationshipElement.equals("N/A")) && (targetRelationshipElement.equals("N/A")) ) ) {
		//                                    		// ///////// means source found (Target Element) ///////
		//                                    		// System.out.println("----------start----------");
		//                                    		
		//                                    		// System.out.println("----------Target Element----------");
		//                                    		
		//                                    		
		//                                    		String source 		= sourceRelationshipElement; // check in object table
		//                                    		String destination 	= attributeInformation.get(k).getElementName();
		//                                    		String relationshipObjectTableName = sourceRelationshipElement;
		//                                    		List<RelationsModel> currentAttributeRelationships =  allElementsRelationships.get(relationshipObjectTableName);
		//                                    		System.out.println("--------- Target Element current cell is null Start ---------");
		//                                    		print("SheetName: "+sheetName);
		//                                    		print("TableName: "+tableName);
		//                                    		ArrayList<String> idsArray = getIdOfRelationshipToBeDeleted(source, destination, sourceOrTargetActualAttribute, actualAttribute, relationshipObjectName, nameColumnText, relationshipType, biDirRelationshipPair, currentAttributeRelationships, "targetElement");
		//                                    		idForDeleteEntriesFromRelationshipTable.addAll(idsArray);
		//                                    		System.out.println("--------- Target Element current cell is null End ---------");
		//                                    		print("");
		//                                    		
		//
		//                                    		// for check and delete relationships
		//
		//                                    		// System.out.println("----------end----------");
		//
		//                                    	} // end if (target relationship)
		//                                    	
		//                                    	
		//                                    	if( ( (sourceRelationshipElement.equals("N/A")) && !(targetRelationshipElement.equals("N/A")) ) ) {
		//                                    		// ///////// means Target found (Source Element)///////
		//                                    		
		//                                    		// System.out.println("----------start----------");
		//                                    		// System.out.println("----------Source Element----------");
		//                                    		String source = attributeInformation.get(k).getElementName(); 
		//                                    		String destination = targetRelationshipElement; // check in object table
		//                                    		String relationshipObjectTableName = targetRelationshipElement;
		//                                    		List<RelationsModel> currentAttributeRelationships =  allElementsRelationships.get(relationshipObjectTableName);
		//                                    		
		//                                    		
		//                                    		System.out.println("--------- Sourec Element current cell is null Start ---------");
		//                                    		print("SheetName: "+sheetName);
		//                                    		print("TableName: "+tableName);
		//                                    		ArrayList<String> idsArray = getIdOfRelationshipToBeDeleted(source, destination, actualAttribute, sourceOrTargetActualAttribute, relationshipObjectName, nameColumnText, relationshipType, biDirRelationshipPair, currentAttributeRelationships, "sourceElement");
		//                                    		idForDeleteEntriesFromRelationshipTable.addAll(idsArray);
		//                                    		System.out.println("--------- Source Element current cell is null End ---------");
		//                                    		print("");
		//                                    		
		//                                    		// for check and delete relationships
		//
		//                                    		// System.out.println("----------end----------");
		//
		//                                    	} // end if (source relationship)
		//                                	}
		//                                }
		                            } // end if Relationship
		                            
		                            // inserting objects into DB if data is equal to 100 start
		                            List keys = getKeys(allRelationshipObjectQueryData);
		                            for(int m=0; m<keys.size(); m++) {
		                            	
		                            	String RelationshipObjectTableName = keys.get(m).toString();
		                            	List<String> selfGeneratedValuesArrayForCurrentSheet = selfGeneratedValuesOfAllElements.get(RelationshipObjectTableName);
		                            	List<ArrayList<String>> data = allRelationshipObjectQueryData.get(RelationshipObjectTableName);
		                            	
		                            	if( (data.size() > 0) && (data.size() == 100) ) {
		                            		int insertIntoDb = enterpriseDAO.impexInsertElements(dbName, RelationshipObjectTableName, selfGeneratedValuesArrayForCurrentSheet, data, username);
		                            		allRelationshipObjectQueryData.get(RelationshipObjectTableName).clear();
		                            	}
		                            }
		                            // inserting objects into DB if data is equal to 100 End
		                            
		                            if(dataForInsertIntoRelationshipTable.size() > 0 && dataForInsertIntoRelationshipTable.size() == 100) {
		        						enterpriseDAO.impexInsertRelationships(dbName, dataForInsertIntoRelationshipTable);
		        						dataForInsertIntoRelationshipTable.clear();
		        					}
		                            
		                            // inserting  Relationsh objects into DB if data is equal to 100 End i.e associations
		                            
		                            
		
		                            
		                            
		                        } // end complete current column loop
		                    } // end complete row loop
		                    
		                    
		                    
			            	// inserting objects into DB start
		                    // -------- Insert Relationship Object starts ----------------
		                    List keys = getKeys(allRelationshipObjectQueryData);
		                    for(int m=0; m<keys.size(); m++) {
		                    	String RelationshipObjectTableName = keys.get(m).toString();
		                    	List<String> selfGeneratedValuesArrayForCurrentSheet = selfGeneratedValuesOfAllElements.get(RelationshipObjectTableName);
		
		                    	List<ArrayList<String>> data = allRelationshipObjectQueryData.get(RelationshipObjectTableName);
		                    	
		                    	if(data.size()>0) {
		                    		
		                    		int insertIntoDb = enterpriseDAO.impexInsertElements(dbName, RelationshipObjectTableName, selfGeneratedValuesArrayForCurrentSheet, data, username);
		                    		allRelationshipObjectQueryData.get(RelationshipObjectTableName).clear();
		                    	}
		                    }
		                    
		                    // -------- Insert Relationship Object ends ----------------
		                    
		                    
		                    
		                    // inserting Relationship objects into DB if data is equal to 100 start i.e associations
		                    List relationshipObjectkeys = getKeys(allRelationshipTypeObjectData);
		                    for(int s=0; s<relationshipObjectkeys.size(); s++) {
		                    	
		                    	String RelationshipTypeObjectTableName = relationshipObjectkeys.get(s).toString();
		                    	List<String> selfGeneratedValuesArrayForCurrentSheet = selfGeneratedValuesOfAllElements.get(RelationshipTypeObjectTableName);
		                    	List<ArrayList<String>> data = allRelationshipTypeObjectData.get(RelationshipTypeObjectTableName);
		                    	
		                    	if( (data.size() > 0)  ) {
		                    		int insertIntoDb = enterpriseDAO.impexInsertElements(dbName, RelationshipTypeObjectTableName, selfGeneratedValuesArrayForCurrentSheet, data, username);
		                    		allRelationshipTypeObjectData.get(RelationshipTypeObjectTableName).clear();
		                    	}
		                    }
		                    // inserting  Relationsh objects into DB if data is equal to 100 End i.e associations
		                    
					        long TimeForSheetImportEnd = System.currentTimeMillis();
					        long diffTime = (TimeForSheetImportEnd - TimeForSheetImportStart)/1000;
		
					        DisplayMsg = "* All "+tableName+" relationships Imported successfully [Total Imported Time - "+diffTime+" secs]\n\n";
							readAndUpdateTextFile(LogFileName, DisplayMsg);
		                    
		                    
		                } // end of sheet loop
					
					// System.out.println("dataForInsertIntoRelationshipTable: "+dataForInsertIntoRelationshipTable);
					// System.out.println("dataForInsertIntoRelationshipTableSize: "+dataForInsertIntoRelationshipTable.size());
					// System.out.println("idForDeleteEntriesFromRelationshipTable: "+idForDeleteEntriesFromRelationshipTable);
					
					// ///////////////////// Relationship Code ends here //////////////////////////////////					
					
					if(idForDeleteEntriesFromRelationshipTable.size()>0) {
						enterpriseDAO.impexDeleteRelationships(dbName, idForDeleteEntriesFromRelationshipTable);
					}
					
					if(dataForInsertIntoRelationshipTable.size() > 0) {
						enterpriseDAO.impexInsertRelationships(dbName, dataForInsertIntoRelationshipTable);
						dataForInsertIntoRelationshipTable.clear();
					}
					
					
					long TimeForTotalImportEnd = System.currentTimeMillis();
					long TotalTimeForImport = (TimeForTotalImportEnd - TimeForTotalImportStart)/1000;
		
					DisplayMsg = "* All data imported successfully [ Total Imported Time - "+TotalTimeForImport+" secs]";
					readAndUpdateTextFile(LogFileName, DisplayMsg);
					
					// PASS 2 Ends HERE
					try {
						wb.close();
					} catch (IOException e) {
						e.printStackTrace();
					}
					return "fine";
				}
				else {// in else means headers are not matched with our metamodel generated xml
					try {
						wb.close();
					} catch (IOException e) {
						e.printStackTrace();
					}
					return "Header Not Matched";
				}
			}else {
				return "Please upload correct file!";
			}
		}
		
		
		return "done";
	}
				
	public static List getValues(Map map) {
	    return new ArrayList(map.values());
	}
				
	public static List getKeys(Map map) {
	    return new ArrayList(map.keySet());
	}
	
	public static ArrayList<String> dataForInsertInElementTable(String objectName, String userName, List<attributesInformation> attributeInformation, String username){  
		
		// System.out.println("In Function");
		ArrayList<String> dataToBeInsert = new ArrayList<String>();
		for(int i=0; i<attributeInformation.size(); i++) {
			

			String attributeType 	= attributeInformation.get(i).getAttributeType();
			
			if( attributeType.equals("System") || attributeType.equals("Primary") ) {
				
				
				String groupStyle 		= attributeInformation.get(i).getGroupStyle();
				String groupCaption 	= attributeInformation.get(i).getGroupCaption();
				String actualAttribute 	= attributeInformation.get(i).getActualAttribute();
				String attributeFormat 	= attributeInformation.get(i).getAttributeFormat();
				
				
				// System.out.println("actualAttribute: "+actualAttribute);
				if( actualAttribute.equals("Name") ) {
					dataToBeInsert.add("'"+objectName+"'");
				}
				else if( actualAttribute.equals("Type") ) {
					dataToBeInsert.add("'Null'");
				}
				else if( attributeFormat.equals("Date") &&  !groupStyle.equals("Tabular") && !groupCaption.equals("Change History") ) {
					dataToBeInsert.add("'1900-01-01'");
				}
				else if( attributeFormat.equals("Time") && !( groupCaption.equals("Change History") && groupStyle.equals("Tabular") )  ) {
					LocalTime time = LocalTime.parse("00:00:00") ;
					String timeInText = time.toString();
					
					DateFormat df = new SimpleDateFormat("hh:mm:ss");
					Date date;
					try {
						date = df.parse("00:00:00");
						final String timeString = new SimpleDateFormat("HH:mm:ss").format(date.getTime());
						dataToBeInsert.add("'"+timeString+"'");
					} catch (ParseException e) {
						// TODO Auto-generated catch block
						dataToBeInsert.add("'"+timeInText+"'");
						
						e.printStackTrace();
					}
	}
				else if( groupStyle.equals("Tabular") && groupCaption.equals("Change History") ) {
					
					if( actualAttribute.equals("#") ) {
						dataToBeInsert.add("'1'");
					}
					else if( actualAttribute.equals("User") ) {
						dataToBeInsert.add("'"+userName+"'");
					}
					else if( actualAttribute.equals("Date") ) {
						LocalDate currentDate = LocalDate.now(); // Create a date object
						dataToBeInsert.add("'"+currentDate+"'");
					}
					else if( actualAttribute.equals("Time") ) {
						String currentTime = LocalTime.now().truncatedTo(ChronoUnit.SECONDS).format(DateTimeFormatter.ISO_LOCAL_TIME);
						dataToBeInsert.add("'"+currentTime+"'");
					}
					else if( actualAttribute.equals("Attribute") ) {
						dataToBeInsert.add("' '");
					}
					else if( actualAttribute.equals("Old Value") ) {
						dataToBeInsert.add("' '");
					}
					else if( actualAttribute.equals("New Value") ) {
						dataToBeInsert.add("' '");
					}
					else if( actualAttribute.equals("Action") ) {
						dataToBeInsert.add("'Create'");
					}
				}
				else {
					dataToBeInsert.add("''");
				}
			}
		}
		 // System.out.println("dataToBeInsert: "+dataToBeInsert);
		 // System.out.println("dataToBeInsertSize: "+dataToBeInsert.size());
		dataToBeInsert.add("'"+username+"'");

		return dataToBeInsert;  
	}  
	
	public static String get2ndActualAttributeForRelationships(String biDirRelationshipPair, List<attributesInformation> attributeInformation, Map<String, List<attributesInformation>> allElementsAttributesInformation){

		String soureceOrTargetRelElement = "";
    	for(int n=0; n<attributeInformation.size(); n++){
    		if( attributeInformation.get(n).getBidirectionRelationshipPair().equalsIgnoreCase(biDirRelationshipPair) ) {
    			// System.out.println();
    			// System.out.println("oldActualAttribute: "+attributeInformation.get(n).getActualAttribute());
    			if( !attributeInformation.get(n).getSourceRelationship_Element().equals("N/A") ) {
    				soureceOrTargetRelElement = attributeInformation.get(n).getSourceRelationship_Element();
    				break;
    			}else if( !attributeInformation.get(n).getTargetRelationship_Element().equals("N/A") ) {
    				soureceOrTargetRelElement = attributeInformation.get(n).getTargetRelationship_Element();
    				break;
    			}
    		}
    		
    	}
    	String sourceOrTargetActualAttribute = "";
        List<attributesInformation> attInfFor2ndActualAttribute = allElementsAttributesInformation.get(soureceOrTargetRelElement);
		for(int o=0; o<attInfFor2ndActualAttribute.size(); o++){
			if( attInfFor2ndActualAttribute.get(o).getBidirectionRelationshipPair().equals(biDirRelationshipPair) ) {
				sourceOrTargetActualAttribute = attInfFor2ndActualAttribute.get(o).getActualAttribute();
				// System.out.println("newActualAttribute: "+sourceOrTargetActualAttribute);
				break;
			} 
		}
		return sourceOrTargetActualAttribute;
		
	}
	
	public static ArrayList<String> getIdOfRelationshipToBeDeleted(String source, String destination, String sourceAttributeName, String destinationAttributeName, String relationshipObjectName, String firstColumnText, String relationshipType, String biDirRelationshipPair, List<RelationsModel> currentAttributeRelationships, String toggleElement){

		// print("source: "+source+", destination: "+destination+", sourceAttributeName: "+sourceAttributeName+", destinationAttributeName: "+destinationAttributeName+", relationshipObjectName: "+relationshipObjectName+", firstColumnText: "+firstColumnText+", relationshipType: "+relationshipType+", biDirRelationshipPair: "+biDirRelationshipPair+", toggleElement: "+toggleElement);
		
		
		int sizeOfCurrentAttributeRelationships = currentAttributeRelationships.size();
		String[] splitRelationshipObjectName = relationshipObjectName.split(";");
		
		
		for(int i=0; i<splitRelationshipObjectName.length; i++) {
			splitRelationshipObjectName[i] = escapeMetaCharacters(splitRelationshipObjectName[i].toString().trim(), "text");
		}
		
		// escapeMetaCharacters(firstColumnText.toString().trim(), "text");
		
		ArrayList<String> tempArray = new ArrayList<String>();
		
		if(toggleElement.equals("sourceElement")) {
			// for check and delete relationships
			// print("InSouce");
			ArrayList<ArrayList<String>> foundRelationships = new ArrayList<ArrayList<String>>();
			
			for(int n=0; n<sizeOfCurrentAttributeRelationships; n++) {
				String DestinationAttributeValue = firstColumnText;
				
				RelationsModel obj = currentAttributeRelationships.get(n);
				// System.out.println("obj: "+obj);
				//for(int o=0; o<splitRelationshipObjectName.length; o++) {
					//String sourceAttributeValue = splitRelationshipObjectName[o];
				
				
					//print("s: "+source+" t: "+destination+" RT: "+relationshipType+" BIDRP: "+biDirRelationshipPair+" SAV: "+sourceAttributeValue+" DAV:"+DestinationAttributeValue+" SAN: "+sourceAttributeName+" DAN: "+destinationAttributeName);
					if(obj.getSourceRelElement().equals(source) && obj.getTargetRelElement().equals(destination) && obj.getRelationshipType().equals(relationshipType) && obj.getBidirectionRelationshipPair().equals(biDirRelationshipPair) && obj.getTargetAttValue().equals(DestinationAttributeValue) && obj.getSourceAttName().equals(sourceAttributeName) && obj.getTargetAttName().equals(destinationAttributeName) ) {
					
					 ArrayList<String> temp = new ArrayList<String>();
					 temp.add(String.valueOf(obj.getId()));
					 temp.add(obj.getSourceAttValue());
					 
					 foundRelationships.add(temp);
				}
				//}
			}
			
			// System.out.println("1foundRelationships: "+foundRelationships);
			
			for(int p=0; p<foundRelationships.size(); p++) {
				String id = foundRelationships.get(p).get(0);
				String sourceAttributevalue = foundRelationships.get(p).get(1);
				
				boolean flag = Arrays.asList(splitRelationshipObjectName).contains(sourceAttributevalue);
				
				if(!flag) {
					// System.out.println("1id: "+id);
        			// System.out.println("1sourceAttributevalue: "+ sourceAttributevalue);
					// print("1flag: "+flag);
					tempArray.add(id);
				}
			}
			
			
			
			
		}else if(toggleElement.equals("targetElement")) {
			// print("InTarget");
    		// for check and delete relationships
    		ArrayList<ArrayList<String>> foundRelationships = new ArrayList<ArrayList<String>>();
    		
    		for(int n=0; n<sizeOfCurrentAttributeRelationships; n++) {

    			String sourceAttributeValue = firstColumnText;
    			RelationsModel obj = currentAttributeRelationships.get(n); 
    			
    			//for(int o=0; o<splitRelationshipObjectName.length; o++) {
    				//String destinationAttributeValue = splitRelationshipObjectName[o];
    				
	    			if(obj.getSourceRelElement().equals(source) && obj.getTargetRelElement().equals(destination) && obj.getRelationshipType().equals(relationshipType) && obj.getBidirectionRelationshipPair().equals(biDirRelationshipPair) && obj.getSourceAttValue().equals(sourceAttributeValue) && obj.getSourceAttName().equals(sourceAttributeName) && obj.getTargetAttName().equals(destinationAttributeName) ) {
    				ArrayList<String> temp = new ArrayList<String>();
    				temp.add(String.valueOf(obj.getId()));
    				temp.add(obj.getTargetAttValue());
    				foundRelationships.add(temp);
    			}
    			
    			//}
    		}
    		// System.out.println("2foundRelationships: "+foundRelationships);
    		
    		for(int p=0; p<foundRelationships.size(); p++) {
    			String id = foundRelationships.get(p).get(0);
    			String destinationAttributevalue = foundRelationships.get(p).get(1);
    			
    			boolean flag = Arrays.asList(splitRelationshipObjectName).contains(destinationAttributevalue);
    			
    			if(!flag) {
					// System.out.println("2id: "+id);
        			// System.out.println("2DestinationAttributeValue: "+ destinationAttributevalue);
        			// print("2flag: "+flag);
        			tempArray.add(id);
    			}
    		}
		}

		return tempArray;  
	}  
	
	
	private static void initializeTextLogFile(String LogFileName) {
	    try {    
            FileWriter fw=new FileWriter(LogFileName);    
            fw.write("");    
            fw.close();    
        } catch(Exception err){
            System.out.println(err);
			}
		}
	
	
	@RequestMapping(value="/truncateDatabase", method = RequestMethod.GET)
	public @ResponseBody String truncateDatabase(HttpSession session, ModelAndView model, HttpServletResponse response) {
		System.out.println("truncate backend");
		try {
			enterpriseDAO.listTruncTbl(dbName);
			return "Database truncation done!";
		} catch (Exception e) {
			return "Error while doing truncate database!";
		}
	}
	
	private static void print(String text) {
	    System.out.println(text);
	}


	@RequestMapping(value = "/metamodel_user")
	public ModelAndView metamodel_user(ModelAndView model) {
		List<dbModel> dbList = enterpriseDAO.listDb();
		model.addObject("dbList", dbList);
		model.setViewName("metamodel_user");
		return model;
	}

	// CREATING XML FILE FROM GIVEN META MODEL_2 EXCEL FILE
	@RequestMapping(value = "/excelToXML2", method = RequestMethod.POST, consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
	public ModelAndView excelToXML2(ModelAndView model, @RequestParam("file") MultipartFile file, HttpSession session,
			String db_Name) throws IOException, JAXBException {
		dbName = db_Name;
		String path = session.getServletContext().getRealPath("/");

		File convertFile = new File(path + "/" + file.getOriginalFilename());
		convertFile.createNewFile();
		FileOutputStream fout = new FileOutputStream(convertFile);

		System.out.println("FILE NAME: " + path + "/" + " " + file.getOriginalFilename());

		fout.write(file.getBytes());

		XSSFWorkbook wb = new XSSFWorkbook(new FileInputStream(path + "/" + file.getOriginalFilename()));
		int sheetsCount = wb.getNumberOfSheets();
		System.out.println("Number of sheets: " + sheetsCount);

		List<Element> elementList = new ArrayList<Element>();
		List<net.lt.eaze.model_metamodel2.Relationships> relationList = new ArrayList<net.lt.eaze.model_metamodel2.Relationships>();
		List<Relationship_Connector> relationshipConnectorsList = new ArrayList<Relationship_Connector>();
		List<Relationship_Matrix> relationshipMatrixList = new ArrayList<Relationship_Matrix>();
		List<Metamodel_Variable> metamodelVariableList = new ArrayList<Metamodel_Variable>();
		List<Element_Attributes> elementAttributesList = new ArrayList<Element_Attributes>();
		List<Relationship_Attributes> relationshipAttributesList = new ArrayList<Relationship_Attributes>();

		Row row;
		Row row1;

		for (int sheetNumber = 0; sheetNumber < sheetsCount; sheetNumber++) {

			String sheetName = wb.getSheetName(sheetNumber);
			System.out.println("Sheet Name: " + sheetName);
			XSSFSheet sheet = wb.getSheetAt(sheetNumber);
			String elementName = "";

			System.out.println(sheet.getLastRowNum());
			for (int rowNumber = 0; rowNumber <= sheet.getLastRowNum(); rowNumber++) {
				System.out.println("ROW: " + rowNumber);
				row = sheet.getRow(rowNumber);
				if (row != null) {
					// String conceptType =
					// "",elementType="",elementLayer="",elementAspect="",elementColor="",elementNotation="",elementPrimarySymbol="",elementSecondarySymbol="",description="";
					String attributeValue = "";
					List<String> attributesList = new ArrayList<String>();
					int index = -1;
					boolean addElement = false;
					boolean addRelation = false;
					boolean addAttribute = false;
					boolean addRelationshipConnector = false;
					boolean addValues = false;
					boolean addAttributeElements = false;
					boolean addRelationshipElements = false;
					Element e1 = new Element();
					net.lt.eaze.model_metamodel2.Relationships r1 = new net.lt.eaze.model_metamodel2.Relationships();
					Relationship_Connector rc1 = new Relationship_Connector();
					Relationship_Matrix rm1 = new Relationship_Matrix();
					Metamodel_Variable mv1 = new Metamodel_Variable();
					Element_Attributes ea1 = new Element_Attributes();
					Relationship_Attributes ra1 = new Relationship_Attributes();

					List<String> valuesList = new ArrayList<String>();

					// >> Temporary Condition
//		                	boolean tempTrue = false;
//		                	if(row.getLastCellNum() == 29 && sheetName.equals("Element Attributes")) {
//		                		tempTrue = true;
//		                	}
					// Temporary Condition <<

					for (int cellNumber = 0; cellNumber <= row.getLastCellNum(); cellNumber++) {
						String cellValue = null;
						if (row.getCell(cellNumber) != null) {
							if (row.getCell(cellNumber).getCellType() == CellType.ERROR) {
								System.out.println("Error");
							} else if (row.getCell(cellNumber).getCellType() == CellType.FORMULA) {
								if (row.getCell(cellNumber).getCellType() == CellType.STRING) {
									cellValue = String.valueOf(row.getCell(cellNumber).getRichStringCellValue());
								} else if (row.getCell(cellNumber).getCellType() == CellType.NUMERIC) {
									cellValue = String.valueOf(row.getCell(cellNumber).getNumericCellValue());
								}
								switch (row.getCell(cellNumber).getCachedFormulaResultType()) {
								case NUMERIC:
									cellValue = String.valueOf(row.getCell(cellNumber).getNumericCellValue());
									break;
								case STRING:
									cellValue = String.valueOf(row.getCell(cellNumber).getRichStringCellValue());
									break;
								}
							} else if (row.getCell(cellNumber).getCellType() == CellType.STRING) {
								cellValue = String.valueOf(row.getCell(cellNumber).getRichStringCellValue());
							} else if (row.getCell(cellNumber).getCellType() == CellType.NUMERIC) {
								cellValue = String.valueOf(row.getCell(cellNumber).getNumericCellValue());
							}

							if (sheetName.equals("Elements") && rowNumber >= 1) {
								System.out.println(cellValue);
								if (cellNumber == 1 && cellValue != null) {
									e1.setElementName(cellValue);
								}
								if (cellNumber == 2 && cellValue != null) {
									e1.setElementShortName(cellValue);
								}
								if (cellNumber == 3 && cellValue != null) {
									e1.setConceptType(cellValue);
								}
								if (cellNumber == 4 && cellValue != null) {
									e1.setElementType(cellValue);
								}
								if (cellNumber == 5 && cellValue != null) {
									e1.setElementLayer(cellValue);
								}
								if (cellNumber == 6 && cellValue != null) {
									e1.setElementAspect(cellValue);
								}
								if (cellNumber == 7 && cellValue != null) {
									e1.setElementColor(cellValue);
								}
								if (cellNumber == 8 && cellValue != null) {
									e1.setElementNotation(cellValue);
								}
								if (cellNumber == 9 && cellValue != null) {
									e1.setElementPrimarySymbol(cellValue);
								}
								if (cellNumber == 10 && cellValue != null) {
									e1.setElementSecondarySymbol(cellValue);
								}
								if (cellNumber == 11 && cellValue != null) {
									e1.setDescription(cellValue);
								}
								if (cellNumber == 12 && cellValue != null) {
									e1.setOriginator(cellValue);
								}
								if (cellNumber == 13 && e1.getElementName() != null) {
									addElement = true;
									if (cellValue != null) {
										e1.setIsEnabled(cellValue);
									}

								}
							}
							if (sheetName.equals("Relationships") && rowNumber >= 1) {
								if (cellNumber == 1 && cellValue != null) {
									r1.setRelationshipName(cellValue);
								}
								if (cellNumber == 2 && cellValue != null) {
									r1.setConceptType(cellValue);
								}
								if (cellNumber == 3 && cellValue != null) {
									r1.setRelationshipType(cellValue);
								}
								if (cellNumber == 4 && cellValue != null) {
									r1.setRelationshipColor(cellValue);
								}
								if (cellNumber == 5 && cellValue != null) {
									r1.setRelationshipNotation(cellValue);
								}
								if (cellNumber == 6 && cellValue != null) {
									r1.setRelationshipPrimarSymbol(cellValue);
								}
								if (cellNumber == 7 && cellValue != null) {
									r1.setRelationshipSecondarySymbol(cellValue);
								}
								if (cellNumber == 8 && cellValue != null) {///////////
									r1.setSymbolAttributeVariants(cellValue);
								}
								if (cellNumber == 9 && cellValue != null) {
									r1.setFrom_to_ToInterpretation(cellValue);
								}
								if (cellNumber == 10 && cellValue != null) {
									r1.setTo_to_FromInterpretation(cellValue);
								}
								if (cellNumber == 11 && cellValue != null) {/////
									r1.setOriginator(cellValue);
								}
								if (cellNumber == 12 && cellValue != null) {/////////////
									r1.setIsEnabled(cellValue);
									addRelation = true;
								}
							}
							if (sheetName.equals("Relationship Connectors") && rowNumber >= 1) {
								if (cellNumber == 1 && cellValue != null) {
									rc1.setRelationshipConnectorName(cellValue);
								}
								if (cellNumber == 2 && cellValue != null) {
									rc1.setConceptType(cellValue);
								}
								if (cellNumber == 3 && cellValue != null) {
									rc1.setElementColor(cellValue);
								}
								if (cellNumber == 4 && cellValue != null) {
									rc1.setElementNotation(cellValue);
								}
								if (cellNumber == 5 && cellValue != null) {
									rc1.setElementPrimarySymbol(cellValue);
								}
								if (cellNumber == 6 && cellValue != null) {
									rc1.setElementSecondarySymbol(cellValue);
									addRelationshipConnector = true;
								}
							}
							if ((sheetName.equals("Relationship Matrix") || sheetName.equals("Connection Matrix"))
									&& rowNumber >= 3) {
								if (cellNumber == 0 && cellValue != null) {
									rm1.setTo_Concept(cellValue);
								}
								if (cellNumber == 1 && cellValue != null) {
									rm1.setTo_ElementLayer(cellValue);
								}
								if (cellNumber == 2 && cellValue != null) {
									rm1.setTo_Target(cellValue);

									for (int cellNumber1 = 3; cellNumber1 <= row.getLastCellNum(); cellNumber1++) {
										Relationship_Matrix rmat1 = new Relationship_Matrix();
										rmat1.setTo_Concept(rm1.getTo_Concept());
										rmat1.setTo_ElementLayer(rm1.getTo_ElementLayer());
										rmat1.setTo_Target(rm1.getTo_Target());

//										rmat1.setFrom_Concept(rm1.getFrom_Concept());
//										rmat1.setFrom_ElementLayer(rm1.getFrom_ElementLayer());
//										rmat1.setFrom_Source(rm1.getFrom_Source());

										for (int rowNumberLoop = 0; rowNumberLoop <= 2; rowNumberLoop++) {
											row1 = sheet.getRow(rowNumberLoop);
											String cellValue1 = null;
											if (row1.getCell(cellNumber1) != null) {

												if (row1.getCell(cellNumber1).getCellType() == CellType.ERROR) {
													System.out.println("Error");
												} else if (row1.getCell(cellNumber1)
														.getCellType() == CellType.FORMULA) {
													if (row1.getCell(cellNumber1).getCellType() == CellType.STRING) {
														cellValue1 = String.valueOf(
																row1.getCell(cellNumber1).getRichStringCellValue());
													} else if (row1.getCell(cellNumber1)
															.getCellType() == CellType.NUMERIC) {
														cellValue1 = String.valueOf(
																row1.getCell(cellNumber1).getNumericCellValue());
													}
													switch (row1.getCell(cellNumber1).getCachedFormulaResultType()) {
													case NUMERIC:
														cellValue1 = String.valueOf(
																row1.getCell(cellNumber1).getNumericCellValue());
														break;
													case STRING:
														cellValue1 = String.valueOf(
																row1.getCell(cellNumber1).getRichStringCellValue());
														break;
													}
												} else if (row1.getCell(cellNumber1).getCellType() == CellType.STRING) {
													cellValue1 = String.valueOf(
															row1.getCell(cellNumber1).getRichStringCellValue());
												} else if (row1.getCell(cellNumber1)
														.getCellType() == CellType.NUMERIC) {
													cellValue1 = String
															.valueOf(row1.getCell(cellNumber1).getNumericCellValue());
												}
												System.out.println(cellValue1);
												if (rowNumberLoop == 0) {
													rmat1.setFrom_Concept(cellValue1);
												}
												if (rowNumberLoop == 1) {
													rmat1.setFrom_ElementLayer(cellValue1);
												}
												if (rowNumberLoop == 2) {
													rmat1.setFrom_Source(cellValue1);
												}
											}
										}
										row1 = sheet.getRow(rowNumber);

										String cellValue1 = null;
										if (row1.getCell(cellNumber1) != null) {

											if (row1.getCell(cellNumber1).getCellType() == CellType.ERROR) {
												System.out.println("Error");
											} else if (row1.getCell(cellNumber1).getCellType() == CellType.FORMULA) {
												if (row1.getCell(cellNumber1).getCellType() == CellType.STRING) {
													cellValue1 = String.valueOf(
															row1.getCell(cellNumber1).getRichStringCellValue());
												} else if (row1.getCell(cellNumber1)
														.getCellType() == CellType.NUMERIC) {
													cellValue1 = String
															.valueOf(row1.getCell(cellNumber1).getNumericCellValue());
												}
												switch (row1.getCell(cellNumber1).getCachedFormulaResultType()) {
												case NUMERIC:
													cellValue1 = String
															.valueOf(row1.getCell(cellNumber1).getNumericCellValue());
													break;
												case STRING:
													cellValue1 = String.valueOf(
															row1.getCell(cellNumber1).getRichStringCellValue());
													break;
												}
											} else if (row1.getCell(cellNumber1).getCellType() == CellType.STRING) {
												cellValue1 = String
														.valueOf(row1.getCell(cellNumber1).getRichStringCellValue());
											} else if (row1.getCell(cellNumber1).getCellType() == CellType.NUMERIC) {
												cellValue1 = String
														.valueOf(row1.getCell(cellNumber1).getNumericCellValue());
											}
											System.out.println(cellValue1);
											rmat1.setRelation(cellValue1);
										}
										// System.out.println("FROM: "+rm1.getFrom_Source()+" RELATION:
										// "+rm1.getRelation()+" TO:"+rm1.getTo_Source());
										relationshipMatrixList.add(rmat1);
										// System.out.println(relationshipMatrixList);
									}
								}
							}
							if ( ( sheetName.equals("Element Attributes") || sheetName.equals("Attributes") ) && rowNumber >= 1) {
								if (cellNumber == 1 && cellValue != null) {
									ea1.setLayer(cellValue);
								}
								if (cellNumber == 2 && cellValue != null) {
									ea1.setConceptName(cellValue);
								}
								if (cellNumber == 3 && cellValue != null) {
									ea1.setAttributeType(cellValue);
								}
								if (cellNumber == 4 && cellValue != null) {
									ea1.setManual_OR_AutomaticDataEntry(cellValue);
								}
								if (cellNumber == 5 && cellValue != null) {
									ea1.setSourceOfAutomaticDataEntry(cellValue);
								}
								if (cellNumber == 6 && cellValue != null) {
									ea1.setSingle_OR_MultipleSelection(cellValue);
								}
								if (cellNumber == 7 && cellValue != null) {
									ea1.setMaximumNumberofObjectOccurrence(cellValue);
								}
								if (cellNumber == 8 && cellValue != null) {
									ea1.setRelationship(cellValue);
								}
								if (cellNumber == 9 && cellValue != null) {
									ea1.setRelationshipNature(cellValue);
								}
								if (cellNumber == 10 && cellValue != null) {

									if (cellValue.equals("All")) {
										String cellValue1 = "";
										for (Element el : elementList) {
											cellValue1 += el.getElementName();
											cellValue1 += ";";
										}
										System.out.println(cellValue1);
										cellValue = cellValue1.substring(0, cellValue1.length() - 1);
									}
									ea1.setTargetRelationshipConcept(cellValue);

								}
								if (cellNumber == 11 && cellValue != null) {
									ea1.setSourceRelationshipConcept(cellValue);
								}
								if (cellNumber == 12 && cellValue != null) {
									System.out.println(cellValue);
									ea1.setAttrributeName(cellValue);
								}
								if (cellNumber == 13 && cellValue != null) {
									ea1.setIsGrouped(cellValue);
								}
								if (cellNumber == 14 && cellValue != null) {
									ea1.setGroupStyle(cellValue);
								}
								if (cellNumber == 15 && cellValue != null) {
									ea1.setGroupCaption(cellValue);
								}
								if (cellNumber == 16 && cellValue != null) {
									ea1.setGroupID(cellValue);
								}
								if (cellNumber == 17 && cellValue != null) {
									ea1.setAttributeFormat(cellValue);
								}
								if (cellNumber == 18 && cellValue != null) {
									ea1.setAttributeNameForMultipleFormat(cellValue);
								}
								if (cellNumber == 19 && cellValue != null) {
									ea1.setAttributeValuesForMultpleFormat(cellValue);
								}
								if (cellNumber == 20 && cellValue != null) {
									ea1.setDisablingAttributeName(cellValue);
								}
								if (cellNumber == 21 && cellValue != null) {
									ea1.setDisablingAttributeValue(cellValue);
								}
								if (cellNumber == 22 && cellValue != null) {
									ea1.setFilterAttribute(cellValue);
								}
								if (cellNumber == 23 && cellValue != null) {
									ea1.setAllowableValues(cellValue);
								}
								if (cellNumber == 24 && cellValue != null) {
									ea1.setDefaultValue(cellValue);
								}
								if (cellNumber == 25 && cellValue != null) {
									ea1.setAttributeTip(cellValue);
								}
								if (cellNumber == 26 && cellValue != null) {
									ea1.setFormPageNumber(cellValue);
								}
								if (cellNumber == 27 && cellValue != null) {
									ea1.setFormPageTitle(cellValue);
								}
								if (cellNumber == 28 && cellValue != null) {
									ea1.setIsPageGrouped(cellValue);
								}
								if (cellNumber == 29 && cellValue != null) {
									ea1.setGroupPageTitle(cellValue);
								}
								if (cellNumber == 30 && cellValue != null) {
									ea1.setGroupPageID(cellValue);
								}
								if (cellNumber == 31 && cellValue != null) {
									ea1.setRelationshipOverloadText(cellValue);
								}
								if (cellNumber == 32 && cellValue != null) {
									ea1.setBidirectionRelationshipPair(cellValue);
								}
								if (cellNumber == 33 && cellValue != null) {
									ea1.setOriginator(cellValue);
								}
								if (cellNumber == 34 && cellValue != null) {
									ea1.setIsEnabled(cellValue);
								}
								if (cellNumber == 35 && cellValue != null) {
									ea1.setDefinesVariant(cellValue);
								}
								if (cellNumber == 36 && cellValue != null) {
									ea1.setSymbolAttributeVariant(cellValue);
								}//////
								if (cellNumber == 37) {
									System.out.println("ADD = TRUE");
									addAttributeElements = true;

									if (cellValue != null) {
										ea1.setVariantPreference(cellValue);
									}
								}
							}
							if (sheetName.equals("Relationship Attributes") && rowNumber >= 1) {
								if (cellNumber == 1 && cellValue != null) {
									ra1.setRelationshipName(cellValue);
								}
								if (cellNumber == 2 && cellValue != null) {
									ra1.setAttributeType(cellValue);
								}
								if (cellNumber == 3 && cellValue != null) {
									ra1.setManualDataEntry_OR_AutomaticDataEntry(cellValue);
								}
								if (cellNumber == 4 && cellValue != null) {
									ra1.setSingle_OR_MultipleSelection(cellValue);
								}
								if (cellNumber == 5 && cellValue != null) {
									ra1.setSingle_OR_MultipleSelection(cellValue);
								}
								if (cellNumber == 6 && cellValue != null) {
									ra1.setTargetConcept(cellValue);
								}
								if (cellNumber == 7 && cellValue != null) {
									ra1.setSourceConcept(cellValue);
								}
								if (cellNumber == 8 && cellValue != null) {
									ra1.setAttrributeName(cellValue);
								}
								if (cellNumber == 9 && cellValue != null) {
									ra1.setIsGrouped(cellValue);
								}
								if (cellNumber == 10 && cellValue != null) {
									ra1.setGroupStyle(cellValue);
								}
								if (cellNumber == 11 && cellValue != null) {
									ra1.setGroupCaption(cellValue);
								}
								if (cellNumber == 12 && cellValue != null) {
									ra1.setGroupID(cellValue);
								}
								if (cellNumber == 13 && cellValue != null) {
									ra1.setAttributeFormat(cellValue);
								}
								if (cellNumber == 14 && cellValue != null) {
									ra1.setAllowableValues(cellValue);
								}
								if (cellNumber == 15 && cellValue != null) {
									ra1.setDefaultValue(cellValue);
								}
								if (cellNumber == 16 && cellValue != null) {
									ra1.setFormPageNumber(cellValue);
								}
								if (cellNumber == 17 && cellValue != null) {
									ra1.setFormPageTitle(cellValue);
								}
								if (cellNumber == 18 && cellValue != null) {
									ra1.setIsEnabled(cellValue);
									addRelationshipElements = true;
								}

							}
							// ATTRIBUTES NAMES IN EXISTING ELEMENTS TAG
							/*
							 * if (sheetName.equals("Element Attributes") && rowNumber>=1) {
							 * if(cellNumber==2 && cellValue!=null) { elementName = cellValue;
							 * System.out.println("ELEMENT NAME: "+elementName); }
							 * 
							 * 
							 * 
							 * 
							 * if(cellNumber==9 && cellValue!=null) {
							 * 
							 * for(Element el:elementList) { if(elementName.equals(el.getElementName())) {
							 * System.out.println("ELEMENT: "+elementName); index = elementList.indexOf(el);
							 * conceptType = el.getConceptType(); elementType = el.getElementType();
							 * elementLayer = el.getElementLayer(); elementAspect = el.getElementAspect();
							 * elementColor = el.getElementColor(); elementNotation =
							 * el.getElementNotation(); elementPrimarySymbol = el.getElementPrimarySymbol();
							 * elementSecondarySymbol = el.getElementSecondarySymbol(); description =
							 * el.getDescription(); System.out.println("DESCRIPTION: "+description);
							 * if(el.getAttributes()!=null) attributesList= el.getAttributes();
							 * System.out.println("LIST BEFORE: "+attributesList); } } attributeValue =
							 * cellValue; System.out.println(attributeValue);
							 * attributesList.add(attributeValue);
							 * System.out.println("LIST: "+attributesList);
							 * 
							 * 
							 * e1.setElementName(elementName); e1.setConceptType(conceptType);
							 * e1.setElementType(elementType); e1.setElementLayer(elementLayer);
							 * e1.setElementAspect(elementAspect); e1.setElementColor(elementColor);
							 * e1.setElementNotation(elementNotation);
							 * e1.setElementPrimarySymbol(elementPrimarySymbol);
							 * e1.setElementSecondarySymbol(elementSecondarySymbol);
							 * e1.setDescription(description);
							 * System.out.println("DESCRIPTION 2: "+e1.getDescription());
							 * e1.setAttributes(attributesList);
							 * System.out.println("THIS: "+e1.getAttributes()); addAttribute = true; } }
							 */
							if (sheetName.equals("Metamodel Variables") && rowNumber >= 1) {
								if (cellNumber == 0 && cellValue != null) {
									mv1.setVariableType(cellValue);
								}
								if (cellNumber == 1 && cellValue != null) {
									mv1.setVariableName(cellValue);
								}
								for (int a = 3; a <= 15; a++) {
									if (cellNumber == a && cellValue != null) {
										valuesList.add(cellValue);
									}
									if (a == 15) {
										mv1.setValues(valuesList);
										addValues = true;
									}
								}
							}
						}
					}
					System.out.println(index);
					/*
					 * if(index!=-1 && addAttribute == true) { System.out.println("REPLACING");
					 * elementList.set(index, e1); }else {
					 */
					if (addElement == true) {
						elementList.add(e1);
					}
					// }
					if (addRelation == true) {
						relationList.add(r1);
					}
					if (addRelationshipConnector == true) {
						relationshipConnectorsList.add(rc1);
					}
					if (addValues == true) {
						metamodelVariableList.add(mv1);
					}
					if (addAttributeElements == true) {
						elementAttributesList.add(ea1);
					}
					if (addRelationshipElements == true) {
						relationshipAttributesList.add(ra1);
					}
				}

			}
		}
		String XML_FILE = dbName + ".xml";
		net.lt.eaze.model_metamodel2.Schema schema = new net.lt.eaze.model_metamodel2.Schema();

		schema.setDbName(dbName);
		schema.setElements(elementList);
		schema.setRelations(relationList);
		schema.setRelationship_connectors(relationshipConnectorsList);
		schema.setRelationship_matrix(relationshipMatrixList);
		schema.setMetamodel_variables(metamodelVariableList);
		schema.setElement_attributes(elementAttributesList);
		schema.setRelationship_attributes(relationshipAttributesList);

		// create JAXB context
		JAXBContext context = JAXBContext.newInstance(net.lt.eaze.model_metamodel2.Schema.class);

		System.out.println("<!----------Generating the XML Output-------------->");

		Marshaller m = context.createMarshaller();
		m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, Boolean.TRUE);
		m.marshal(schema, new File(path + "/" + XML_FILE));
		model.setViewName("redirect:/");
		return model;

	}

	public String goToHomePage() {
		System.out.println("COMING HERE");
		return "redirect:/";

	}

	@RequestMapping(value = "/test321")
	public ModelAndView getUser() {
		System.out.println("COMING HERE");
		// Here my dao method is activated and I wil get some userobject
		return null;
	}

	// ADDING DATA FROM XML TO DATABASE **METAMODEL_2
	@RequestMapping(value = "/admin/xmlToDB", method = RequestMethod.POST, consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
	public ModelAndView fileUpload2(@RequestParam("file") MultipartFile file, HttpSession session)
			throws IOException, JAXBException, SQLException {
		String path = session.getServletContext().getRealPath("/");
		File convertFile = new File(path + "/" + file.getOriginalFilename());
		convertFile.createNewFile();

		FileOutputStream fout = new FileOutputStream(convertFile);

		fout.write(file.getBytes());

		JAXBContext context = JAXBContext.newInstance(net.lt.eaze.model_metamodel2.Schema.class);
		Unmarshaller um = context.createUnmarshaller();
		net.lt.eaze.model_metamodel2.Schema unif = (net.lt.eaze.model_metamodel2.Schema) um
				.unmarshal(new FileReader(path + "/" + file.getOriginalFilename()));

		List<Element> tablesList = unif.getElements();
//				List<Relationship_Matrix> relationsList = unif.getRelationship_matrix();
		List<Element_Attributes> elementAttributesList = unif.getElement_attributes();

		dbName = unif.getDbName();
		//System.out.println("Database: " + dbName);
		dbModel db = new dbModel();
		db.setDbName(dbName);
		enterpriseDAO.createDB(db);
		for (Element a : tablesList) {
			tableModel createTable = new tableModel();
			a.setElementName(a.getElementName().replaceAll("\\s+", "_"));
			a.setElementName(a.getElementName().replaceAll("\\/+", "_"));
			createTable.setDbName(dbName);

			createTable.setTableName(a.getElementName());
			int abc = enterpriseDAO.createTable(createTable);
			//System.out.println("Table: " + a.getElementName());
			//System.out.println("\n");
		}

		List<Relationships> tablesList2 = unif.getRelations();
		List<Relationships> relationhipAttributesList12 = unif.getRelations();
		//System.out.println("Database: " + dbName);
		for (Relationships b : tablesList2) {
			tableModel createTable = new tableModel();
			b.setRelationshipName(b.getRelationshipName().replaceAll("\\s+", "_"));
			b.setRelationshipName(b.getRelationshipName().replaceAll("\\/+", "_"));
			createTable.setDbName(dbName);

			createTable.setTableName(b.getRelationshipName());
			int abc1 = enterpriseDAO.createTable(createTable);
			System.out.println("Table: " + b.getRelationshipName());
			System.out.println("\n");
			
		}
		
		List<Relationship_Connector> tablesList3 = unif.getRelationship_connectors();
		List<Relationship_Connector> relationhipAttributesList123 = unif.getRelationship_connectors();
		//System.out.println("Database: " + dbName);
		for (Relationship_Connector b : tablesList3) {
			tableModel createTable = new tableModel();
			b.setRelationshipConnectorName(b.getRelationshipConnectorName().replaceAll("\\s+", "_"));
			b.setRelationshipConnectorName(b.getRelationshipConnectorName().replaceAll("\\/+", "_"));
			createTable.setDbName(dbName);

			createTable.setTableName(b.getRelationshipConnectorName());
			int abc12 = enterpriseDAO.createTable(createTable);
			System.out.println("Table: " + b.getRelationshipConnectorName());
			System.out.println("\n");
			
		}
		
		tableModel ct = new tableModel();
		attrModel createAtt = new attrModel();
		ct.setDbName(dbName);

		ct.setTableName("attributes_information");
		enterpriseDAO.createTable(ct);

		ct.setTableName("relationships");
		enterpriseDAO.createTable(ct);



		createAtt.setDbName(dbName);
		createAtt.setType("TEXT");
//		createAtt.setLength("200");

		// ADDING COLUMNS IN attributes_information
		createAtt.setTableName("attributes_information");

		createAtt.setAttrName("Element_Name");
		enterpriseDAO.createAttr(createAtt);

		createAtt.setAttrName("Attribute_Type");
		enterpriseDAO.createAttr(createAtt);

		createAtt.setAttrName("Target_Rel_Element");
		enterpriseDAO.createAttr(createAtt);

		createAtt.setAttrName("Source_Rel_Element");
		enterpriseDAO.createAttr(createAtt);

		createAtt.setAttrName("Self_Generated_Attribute");
		enterpriseDAO.createAttr(createAtt);

		createAtt.setAttrName("Actual_Attribute");
		enterpriseDAO.createAttr(createAtt);

		createAtt.setAttrName("Is_Grouped");
		enterpriseDAO.createAttr(createAtt);

		createAtt.setAttrName("Group_Style");
		enterpriseDAO.createAttr(createAtt);

		createAtt.setAttrName("Group_Caption");
		enterpriseDAO.createAttr(createAtt);

		createAtt.setAttrName("Attribute_Format");
		enterpriseDAO.createAttr(createAtt);

		createAtt.setAttrName("Page_Number");
		enterpriseDAO.createAttr(createAtt);

		createAtt.setAttrName("Page_Title");
		enterpriseDAO.createAttr(createAtt);
		
		createAtt.setAttrName("Is_Page_Grouped");
		enterpriseDAO.createAttr(createAtt);
		
		createAtt.setAttrName("Group_Page_Title");
		enterpriseDAO.createAttr(createAtt);
		
		createAtt.setAttrName("Group_Page_ID");
		enterpriseDAO.createAttr(createAtt);

		createAtt.setAttrName("Allowable_Values");
		enterpriseDAO.createAttr(createAtt);

		createAtt.setAttrName("Attribute_Tip");
		enterpriseDAO.createAttr(createAtt);
		
		createAtt.setAttrName("Bidirection_Relationship_Pair");
		enterpriseDAO.createAttr(createAtt);
		
		createAtt.setAttrName("Single_or_Multiple");
		enterpriseDAO.createAttr(createAtt);
		
		createAtt.setAttrName("Maximum_Number_of_Object_Occurrence");
		enterpriseDAO.createAttr(createAtt);
		
		createAtt.setAttrName("Relationship");
		enterpriseDAO.createAttr(createAtt);

		createAtt.setAttrName("Relationship_Overload_Text");
		enterpriseDAO.createAttr(createAtt);

		// ADDING COLUMNS IN relationships
		createAtt.setTableName("relationships");

		createAtt.setAttrName("Source");
		enterpriseDAO.createAttr(createAtt);

		createAtt.setAttrName("Destination");
		enterpriseDAO.createAttr(createAtt);

		createAtt.setAttrName("Source_P_Key");
		enterpriseDAO.createAttr(createAtt);

		createAtt.setAttrName("Destination_P_Key");
		enterpriseDAO.createAttr(createAtt);

		createAtt.setAttrName("Source_Attribute_Name");
		enterpriseDAO.createAttr(createAtt);

		createAtt.setAttrName("Destination_Attribute_Name");
		enterpriseDAO.createAttr(createAtt);

		createAtt.setAttrName("Source_Attribute_Value");
		enterpriseDAO.createAttr(createAtt);

		createAtt.setAttrName("Destination_Attribute_Value");
		enterpriseDAO.createAttr(createAtt);

		createAtt.setAttrName("Relationship_Type");
		enterpriseDAO.createAttr(createAtt);
		
		createAtt.setAttrName("Bidirection_Relationship_Pair");
		enterpriseDAO.createAttr(createAtt);
		
		////////

		String previousElement = "";
		String generatedAttVal = "";
		String actualAttValForPrimaryOrSystem = "";
		int i = 0;

		String previousForRelationship = "";
		String generatedAttValForRelationship = "";
		String actualAttValForRelationship = "";
		int k = 0;
		List<String> allTables = enterpriseDAO.listTables1(dbName); 
		//System.out.println(allTables);
		for (Element_Attributes a : elementAttributesList) {
			attrModel createAtt1 = new attrModel();
			createAtt1.setDbName(dbName);

			fromExcel addRow = new fromExcel();
			addRow.setDbName(dbName);
			addRow.setTableName("attributes_information");

//					if(a.getAttributeType().equals("Primary") || a.getAttributeType().equals("System")) {
			//System.out.println("ELEMENT: " + a.getConceptName());
			//System.out.println("PREVIOUS: " + previousElement);
			if (a.getConceptName().equals(previousElement)) {
				System.out.println("IF");
				i++;
				generatedAttVal = "ATT_0" + i;
			} else {
				System.out.println("ELSE");
				i = 001;
				generatedAttVal = "ATT_0" + i;
			}
			previousElement = a.getConceptName();

			a.setConceptName(a.getConceptName().replaceAll("\\s+", "_"));
			a.setConceptName(a.getConceptName().replaceAll("\\/+", "_"));

			createAtt1.setTableName(a.getConceptName());
			if (!a.getAttributeType().equals("Relationship") /*&& allTables.contains(a.getConceptName()) */) {
				createAtt1.setAttrName(generatedAttVal);
				if (a.getAttributeFormat().equals("Date") && ! (a.getGroupCaption().equals("Change History") && a.getGroupStyle().equals("Tabular") ) ) {
					createAtt1.setType("Date");
				} else if (a.getAttributeFormat().equals("Time") && ! (a.getGroupCaption().equals("Change History") && a.getGroupStyle().equals("Tabular") ) ) {
					createAtt1.setType("Time");
				} else {
					createAtt1.setType("Text");
				}

				enterpriseDAO.createAttr(createAtt1);
			}

			List<String> columnNames = new ArrayList<String>();
			columnNames.add("Element_Name");
			columnNames.add("Attribute_Type");
			columnNames.add("Target_Rel_Element");
			columnNames.add("Source_Rel_Element");
			columnNames.add("Self_Generated_Attribute");
			columnNames.add("Actual_Attribute");
			columnNames.add("Is_Grouped");
			columnNames.add("Group_Style");
			columnNames.add("Group_Caption");
			columnNames.add("Attribute_Format");
			columnNames.add("Page_Number");
			columnNames.add("Page_Title");
			columnNames.add("Is_Page_Grouped");
			columnNames.add("Group_Page_Title");
			columnNames.add("Group_Page_ID");
			columnNames.add("Allowable_Values");
			columnNames.add("Attribute_Tip");
			columnNames.add("Bidirection_Relationship_Pair");
			columnNames.add("Single_or_Multiple");
			columnNames.add("Maximum_Number_of_Object_Occurrence");
			columnNames.add("Relationship");
			columnNames.add("Relationship_Overload_Text");
			addRow.setColumnNames(columnNames);

			List<String> rowValues = new ArrayList<String>();
			rowValues.add(a.getConceptName());
			rowValues.add(a.getAttributeType());
			rowValues.add(a.getTargetRelationshipConcept().replaceAll("\\s+", "_"));
			rowValues.add(a.getSourceRelationshipConcept().replaceAll("\\s+", "_"));
			rowValues.add(generatedAttVal);
			rowValues.add(a.getAttrributeName());
			rowValues.add(a.getIsGrouped());
			rowValues.add(a.getGroupStyle());
			rowValues.add(a.getGroupCaption());
			rowValues.add(a.getAttributeFormat());
			rowValues.add(a.getFormPageNumber());
			rowValues.add(a.getFormPageTitle());
			rowValues.add(a.getIsPageGrouped());
			rowValues.add(a.getGroupPageTitle());
			rowValues.add(a.getGroupPageID());
			rowValues.add(a.getAllowableValues());
			rowValues.add(a.getAttributeTip());
			rowValues.add(a.getBidirectionRelationshipPair());
			rowValues.add(a.getSingle_OR_MultipleSelection());
			rowValues.add(a.getMaximumNumberofObjectOccurrence());
			rowValues.add(a.getRelationship());
			rowValues.add(a.getRelationshipOverloadText());
			
			addRow.setRowValues(rowValues);

			enterpriseDAO.addRowsFromExcel(addRow);

		}
		
		dbModel dbName1 = new dbModel();
		dbName1.setDbName(dbName);
		List<tableModel> tableList = enterpriseDAO.listTable(dbName1);
		
		for(tableModel tableName: tableList) {
			enterpriseDAO.addStatusColumn(dbName,tableName.getTableName());
		}
		
		

		
		return new ModelAndView("redirect:/");
	}

	// CREATING XML FILE FROM GIVEN META MODEL EXCEL FILE
	@RequestMapping(value = "/excelToXML", method = RequestMethod.POST, consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
	public ModelAndView excelToXML(@RequestParam("file") MultipartFile file, String db_Name)
			throws IOException, JAXBException {
		try {
			dbName = db_Name;
			File convertFile = new File(file.getOriginalFilename());
			convertFile.createNewFile();
			FileOutputStream fout = new FileOutputStream(convertFile);

			fout.write(file.getBytes());

			XSSFWorkbook wb = new XSSFWorkbook(new FileInputStream(file.getOriginalFilename()));
			int sheetsCount = wb.getNumberOfSheets();
			System.out.println("Number of sheets: " + sheetsCount);

			Row row;

			for (int sheetNumber = 1; sheetNumber < 5; sheetNumber++) {

				String sheetName = wb.getSheetName(sheetNumber);
				System.out.println("Sheet Name: " + sheetName);
				XSSFSheet sheet = wb.getSheetAt(sheetNumber);

				System.out.println(sheet.getLastRowNum());
				String entity = "";
				for (int rowNumber = 0; rowNumber <= sheet.getLastRowNum(); rowNumber++) {
					String category = "";
					int index = -1;
					boolean addValues = false;
					boolean addRelation = false;
					boolean addAttribute = false;
					String definition = "";
					String shortTableName = "";
					String attributeId = "", attributeName = "", type = "", description = "", allowableValues = "";
					Table t1 = new Table();
					Relation r1 = new Relation();
					Attribute a1 = new Attribute();
					List<Attribute> attributes12 = new ArrayList<Attribute>();
					System.out.println("Row Loop #: " + rowNumber);
					row = sheet.getRow(rowNumber);
					if (row != null) {
//	                	try {
						System.out.println(row.getLastCellNum());
						for (int j = 0; j <= 7; j++) {
							String cellValue = null;
							if (row.getCell(j) != null) {
//		                	System.out.println("Here");

								if (row.getCell(j).getCellType() == CellType.ERROR) {
									System.out.println("Error");
								} else if (row.getCell(j).getCellType() == CellType.FORMULA) {
									System.out.println("Formula is " + row.getCell(j).getCellFormula());
									if (row.getCell(j).getCellType() == CellType.STRING) {
										cellValue = String.valueOf(row.getCell(j).getRichStringCellValue());
									} else if (row.getCell(j).getCellType() == CellType.NUMERIC) {
										cellValue = String.valueOf(row.getCell(j).getNumericCellValue());
									}
									switch (row.getCell(j).getCachedFormulaResultType()) {
									case NUMERIC:
										cellValue = String.valueOf(row.getCell(j).getNumericCellValue());
//		                	            	cellValue1 = row.getCell(j).getNumericCellValue();
//		                	            	cellValue1.toString();
										System.out
												.println("Last evaluated as: " + row.getCell(j).getNumericCellValue());
										break;
									case STRING:
										cellValue = String.valueOf(row.getCell(j).getRichStringCellValue());
//		                	            	cellValue1 = row.getCell(j).getRichStringCellValue();
//		                	                System.out.println("Last evaluated as \"" + row.getCell(j).getRichStringCellValue() + "\"");
										break;
									}
								} else if (row.getCell(j).getCellType() == CellType.STRING) {
									cellValue = String.valueOf(row.getCell(j).getRichStringCellValue());
								} else if (row.getCell(j).getCellType() == CellType.NUMERIC) {
									cellValue = String.valueOf(row.getCell(j).getNumericCellValue());
									if (sheetNumber == 2) {
										break;
									}
								}
								if (sheetNumber == 1 && rowNumber >= 2) {
									if (j == 4 && cellValue != null) {
										System.out.println("Entity Name: " + cellValue);
										t1.setTableName(cellValue);
									}
									if (j == 5 && cellValue != null) {
										System.out.println("Entity Short Name: " + cellValue);
										t1.setTableShortName(cellValue);
									}
									if (j == 6 && cellValue != null) {
										category = cellValue;
										System.out.println("category Name: " + category);
										t1.setCategoryName(category);
									}
									if (j == 7 && cellValue != null) {
										System.out.println("Definition: " + cellValue);
										addValues = true;
										t1.setDefinition(cellValue);
									}
								}
								// GETTING CATEGORIES FROM SHEET 1
//			                	if(sheetNumber == 2 && rowNumber>=2 && cellValue!=null) {
//			                		if(j==0) {
//				                		category = cellValue;
//					                	System.out.println("category Name: "+category);
//					                	}
//				                	else if(j==1) {
//				                		entity  = cellValue;
//				                		System.out.println("Entity Name: "+entity);
//				                		}
//			                		for(Table t:tablesForLL){
//			                			String temp = t.getTableName();
//			                			if(entity.equals(temp)) {
//			                				index = tablesForLL.indexOf(t);
//			                				shortTableName = t.getTableShortName();
//			                				definition = t.getDefinition();
//			                			}
//			                		}
//			                		t1.setTableName(entity);
//			                		t1.setCategoryName(category);
//			                		t1.setTableShortName(shortTableName);
//			                		t1.setDefinition(definition);
//			                		
//			                	}
								if (sheetNumber == 3 && rowNumber >= 3) {
									if (j == 2 && cellValue != null) {
										System.out.println("Source Entity Name: " + cellValue);
										r1.setTable1(cellValue);
									}
									if (j == 3 && cellValue != null) {
										System.out.println("Source Entity Layer: " + cellValue);
										r1.setTable1_layer(cellValue);
									}
									if (j == 4 && cellValue != null) {
										System.out.println("Relation: " + cellValue);
										r1.setRelation(cellValue);
									}
									if (j == 5 && cellValue != null) {
										System.out.println("Destination Entity: " + cellValue);
										r1.setTable2(cellValue);
									}
									if (j == 6 && cellValue != null) {
										System.out.println("Destination Entity Layer: " + cellValue);
										r1.setTable2_layer(cellValue);
										addRelation = true;
									}
								}
								if (sheetNumber == 4 && rowNumber >= 3 && cellValue != null) {
									if (j == 1 && cellValue != null) {
										entity = cellValue;
										System.out.println("Entity Name: " + cellValue);
									}

									else if (j == 2 && cellValue != null) {
										attributeId = cellValue;
										System.out.println("ID:" + cellValue);
									} else if (j == 4) {
										attributeName = cellValue;
										System.out.println("Attribute Name: " + cellValue);
									} else if (j == 5) {
										type = cellValue;
										System.out.println("Type: " + cellValue);
									} else if (j == 6) {
										description = cellValue;
										System.out.println("Description: " + cellValue);
									} else if (j == 7) {
										allowableValues = cellValue;
										System.out.println("Allowable Values: " + cellValue);
									}

									if (j == 7) {
										a1.setAttributeId(attributeId);
										a1.setAttributeName(attributeName);
										a1.setAttributeType(type);
										a1.setDescription(description);
										a1.setAllowableValues(allowableValues);

										for (Table t : tablesForLL) {
											String temp = t.getTableName();
											if (entity.equals(temp)) {
												index = tablesForLL.indexOf(t);
												definition = t.getDefinition();
												shortTableName = t.getTableShortName();
												category = t.getCategoryName();
												if (t.getAttributes() != null) {
													attributes12 = t.getAttributes();
												}
											}
										}
										attributes12.add(a1);

										t1.setTableName(entity);
										t1.setCategoryName(category);
										t1.setTableShortName(shortTableName);
										t1.setDefinition(definition);
										t1.setAttributes(attributes12);

									}
								}

							}
						}
//	                }
//	                	catch (Exception e) {
//	                		System.out.println(e.getCause());
//	                		System.out.println(e.getMessage());
//	                		continue;
//						}
					}
					if (index != -1) {
						tablesForLL.set(index, t1);
					} else {
						if (addValues == true) {
							tablesForLL.add(t1);
						}
					}
					if (addRelation == true) {
						relations.add(r1);
					}
				}
			}

			fout.close();
//            wb.close();

		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		String XML_FILE = dbName + ".xml";
		Schema schema = new Schema();

		schema.setDbName(dbName);
		schema.setTables(tablesForLL);
		schema.setRelations(relations);

		// create JAXB context
		JAXBContext context = JAXBContext.newInstance(Schema.class);

		System.out.println("<!----------Generating the XML Output-------------->");

		Marshaller m = context.createMarshaller();
		m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, Boolean.TRUE);
		m.marshal(schema, new File(XML_FILE));

		tablesForLL.clear();
		relations.clear();

		return new ModelAndView("fromXML");
	}

	
	
	// DOWNLOAD TEMPLATE OR EXORT DATABASE EXCEL FILE **** NEW ****
	
	
	////////////////////////////////////// Download Template start //////////////////////////////////////////////
	@RequestMapping(value="/downloadOnlyTemplateThroughAjax", method = RequestMethod.GET)
	public @ResponseBody String downloadOnlyTemplateThroughAjax(@RequestParam String dbName, HttpSession session, HttpServletRequest request, HttpServletResponse response,
		AuthenticationException exception) throws IOException, JAXBException, DecoderException {long TimeForTotalExportStart = System.currentTimeMillis();
		
		String username = "";
		Collection<? extends GrantedAuthority> userRole = null;
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			userDetail = (UserDetails) auth.getPrincipal();
			username = userDetail.getUsername();
			userRole = userDetail.getAuthorities();
		}
	
		JAXBContext context = JAXBContext.newInstance(net.lt.eaze.model_metamodel2.Schema.class);
		String path = session.getServletContext().getRealPath("/");
		Unmarshaller um = context.createUnmarshaller();
		net.lt.eaze.model_metamodel2.Schema unif = (net.lt.eaze.model_metamodel2.Schema) um.unmarshal(new FileReader(path + "/" + dbName + ".xml"));

		String FILE_NAME = path;
		FILE_NAME += dbName + "_template1.xlsx";
		
		String LogFileName = path+"_"+dbName+"_"+username+"_Template_Logs.txt";
		try {    
			FileWriter fw=new FileWriter(LogFileName);    
			fw.write("");    
			fw.close();    
		} catch(Exception err){
			System.out.println(err);
		}


		List<Element> elements = unif.getElements();
		//	List<Relationships> relationships = unif.getRelations();
		//	List<Relationship_Connector> relationshipConnectors = unif.getRelationship_connectors();
		List<Element_Attributes> elementAttributes = unif.getElement_attributes();
		
		XSSFWorkbook workbook = new XSSFWorkbook();
		byte[] rgbB = null; // get byte array from hex string
		XSSFColor color = new XSSFColor(rgbB, null);

		XSSFSheet spreadsheet = workbook.createSheet("LinkToSheets");
		XSSFCell linkCell;
		XSSFCellStyle overviewPageStyles = workbook.createCellStyle();
		XSSFFont overviewPageFont = workbook.createFont();
		spreadsheet.setColumnWidth(1, 65 * 256);
		spreadsheet.setColumnWidth(2, 65 * 256);
		spreadsheet.setColumnWidth(3, 65 * 256);

		///// Overview Page Instructions START
		for (int i = 1; i <= 10; i++) {
			spreadsheet.addMergedRegion(new CellRangeAddress(i, i, 1, 3));
		}

		rgbB = Hex.decodeHex("0a4647");
		color = new XSSFColor(rgbB, null);
		Row rowForOverview = spreadsheet.createRow(1);
		rowForOverview.setHeight((short) (5 * 256));
		overviewPageFont.setColor(HSSFColor.HSSFColorPredefined.WHITE.getIndex());
		overviewPageFont.setFontHeightInPoints((short) 36);
		overviewPageStyles.setFont(overviewPageFont);

		overviewPageStyles.setFillForegroundColor(color);
		overviewPageStyles.setFillPattern(FillPatternType.SOLID_FOREGROUND);
		overviewPageStyles.setAlignment(HorizontalAlignment.CENTER);
		overviewPageStyles.setVerticalAlignment(VerticalAlignment.CENTER);
		linkCell = (XSSFCell) rowForOverview.createCell((short) 1);
		linkCell.setCellValue("EAXee Data Import/Export Template");
		linkCell.setCellStyle(overviewPageStyles);
		overviewPageStyles = workbook.createCellStyle();
		overviewPageFont = workbook.createFont();

		rowForOverview = spreadsheet.createRow(3);
		rowForOverview.setHeight((short) 650);
		linkCell = (XSSFCell) rowForOverview.createCell((short) 1);
		linkCell.setCellValue("How to store data in this template:");
		overviewPageFont.setFontHeightInPoints((short) 12);
		overviewPageFont.setBold(true);
		overviewPageStyles.setFont(overviewPageFont);
		linkCell.setCellStyle(overviewPageStyles);

		rowForOverview = spreadsheet.createRow(4);
		rowForOverview.setHeight((short) 450);
		linkCell = (XSSFCell) rowForOverview.createCell((short) 1);
		linkCell.setCellValue("'Each sheet corresponds to one meta-element (e.g. Application Component, Service, Business Process, Principle etc.).");

		rowForOverview = spreadsheet.createRow(5);
		rowForOverview.setHeight((short) 450);
		linkCell = (XSSFCell) rowForOverview.createCell((short) 1);
		linkCell.setCellValue("'Each row represents an Object and should be used to capture Object attributes (e.g., ID, name, description and so on) that are required to be imported.");

		rowForOverview = spreadsheet.createRow(6);
		rowForOverview.setHeight((short) 450);
		linkCell = (XSSFCell) rowForOverview.createCell((short) 1);
		linkCell.setCellValue(
				"'Columns represent the attributes of the objects in format as described by the meta-model.");

		rowForOverview = spreadsheet.createRow(7);
		rowForOverview.setHeight((short) 450);
		linkCell = (XSSFCell) rowForOverview.createCell((short) 1);
		linkCell.setCellValue("More than one value (i.e., object reference) in a cell for relationship attributes should be separated by semi-colon (;).");

		rowForOverview = spreadsheet.createRow(8);
		rowForOverview.setHeight((short) 450);
		linkCell = (XSSFCell) rowForOverview.createCell((short) 1);
		linkCell.setCellValue("Attributes with 'Boolean' format must be filled with either \"True\" or \"False\".");

		rowForOverview = spreadsheet.createRow(9);
		rowForOverview.setHeight((short) 450);
		linkCell = (XSSFCell) rowForOverview.createCell((short) 1);
		linkCell.setCellValue("'Attributes with date format must follow: dd/mm/yyyy style. The cell-format must be \"date\".");

		rowForOverview = spreadsheet.createRow(10);
		rowForOverview.setHeight((short) 450);
		linkCell = (XSSFCell) rowForOverview.createCell((short) 1);
		linkCell.setCellValue("'Attributes with time format must follow: hh:mm:ss style where 'hh' is 24-hour format.");
		///// Overview Page Instructions END

		CreationHelper createHelper = workbook.getCreationHelper();

		XSSFCellStyle hlinkstyle = workbook.createCellStyle();
		XSSFFont hlinkfont = workbook.createFont();
		hlinkfont.setUnderline(XSSFFont.U_SINGLE);
		hlinkstyle.setFont(hlinkfont);
		hlinkfont.setColor(HSSFColor.HSSFColorPredefined.BLUE.getIndex());
		hlinkstyle.setFont(hlinkfont);
		int rowForLink = 13;
		int colForLink = 1;
		int colForElementDescription = 2;
		String tableName = "";
		String tabColor = "";

		String rgbS = "0d286b";// Dark Blue Color
		rgbB = Hex.decodeHex(rgbS); // get byte array from hex string
		color = new XSSFColor(rgbB, null); // IndexedColorMap has no usage until now. So it can be set null.

		XSSFCellStyle attributeCellStyle = (XSSFCellStyle) workbook.createCellStyle();
		XSSFFont attributeFont = workbook.createFont();
		attributeFont.setColor(HSSFColor.HSSFColorPredefined.WHITE.getIndex());
		attributeFont.setFontHeightInPoints((short) 12);
		attributeFont.setBold(true);

		attributeCellStyle.setFillForegroundColor(color);
		attributeCellStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND);
		attributeCellStyle.setAlignment(HorizontalAlignment.CENTER);
		attributeCellStyle.setVerticalAlignment(VerticalAlignment.CENTER);
		attributeCellStyle.setFont(attributeFont);
		attributeCellStyle.setWrapText(true);
		

		////// PAGE TITLE STYLE ***
		rgbB = Hex.decodeHex("169038"); // get byte array from hex string
		color = new XSSFColor(rgbB, null);
		XSSFCellStyle titleCellStyle = (XSSFCellStyle) workbook.createCellStyle();

		XSSFFont titleFont = workbook.createFont();
		titleFont.setColor(HSSFColor.HSSFColorPredefined.WHITE.getIndex());
		titleFont.setFontHeightInPoints((short) 14);
		titleFont.setBold(true);

		titleCellStyle.setFillForegroundColor(color);
		titleCellStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND);
		titleCellStyle.setAlignment(HorizontalAlignment.CENTER);
		titleCellStyle.setVerticalAlignment(VerticalAlignment.CENTER);
		titleCellStyle.setFont(titleFont);/////////
		ArrayList<String> Temphead = new ArrayList<String>();
		ArrayList<String> AttributeName = new ArrayList<String>();
		
		boolean isHead = false;
		boolean progressBar = false;


		DataFormat format = workbook.createDataFormat();
		long start = System.currentTimeMillis();
		
		//	-----Loop for elements -----  //
		String DisplayMsg = "";
		for (Element e : elements) {
			
			long TimeForSheetExportStart = System.currentTimeMillis();
			
			tableName = e.getElementName();
			DisplayMsg = "* Export of "+tableName+" begins";
			readAndUpdateTextFile(LogFileName, DisplayMsg);
			

			linkCell = spreadsheet.createRow(rowForLink).createCell((short) colForLink);
			linkCell.setCellValue(tableName);
			XSSFHyperlink link = (XSSFHyperlink) createHelper.createHyperlink(HyperlinkType.DOCUMENT);
			link.setAddress("'" + tableName + "'!A2");
			linkCell.setHyperlink(link);
			linkCell.setCellStyle(hlinkstyle);

			linkCell = spreadsheet.getRow(rowForLink++).createCell((short) colForElementDescription);
			linkCell.setCellValue(e.getDescription());
			spreadsheet.autoSizeColumn(colForElementDescription);

			XSSFSheet sheet = null;

			sheet = workbook.createSheet(tableName);
			String sheetName = tableName;
			byte[] rgb = null;

			tabColor = e.getElementColor();
			if (tabColor.equals("Blue")) {
				rgb = Hex.decodeHex("0000FF");// Blue Color
			} else if (tabColor.equals("Green")) {
				rgb = DefaultIndexedColorMap.getDefaultRGB(IndexedColors.GREEN.getIndex());
			} else if (tabColor.equals("Purple")) {
				rgb = Hex.decodeHex("800080");// Purple Color
			} else if (tabColor.equals("Red")) {
				rgb = DefaultIndexedColorMap.getDefaultRGB(IndexedColors.RED.getIndex());
			} else if (tabColor.equals("Yellow")) {
				rgb = DefaultIndexedColorMap.getDefaultRGB(IndexedColors.YELLOW.getIndex());
			} else if (tabColor.equals("Magenta")) {
				rgb = Hex.decodeHex("FF00FF");// Magenta Color
			} else if (tabColor.equals("Brown")) {
				rgb = DefaultIndexedColorMap.getDefaultRGB(IndexedColors.BROWN.getIndex());
			}


			sheet.setTabColor(new XSSFColor(rgb, null));
			
			
			Row pageTitleRow = sheet.createRow(0);
			Row attributeRow = sheet.createRow(1);
			pageTitleRow.setHeight((short) 400);
			attributeRow.setHeight((short) 650);
			int colNum = 0;
			int colNumForPageTitleStart = 0;
			int colNumForPageTitleEnd = 0;
			int elementAttributeIndex = 0;


			//	------ Loop for element attributes ------ //
			for (Element_Attributes eA : elementAttributes) {
				
				if (eA.getConceptName().equals(tableName)) {

					if (!(eA.getFormPageTitle().equals(elementAttributes.get(elementAttributeIndex + 1).getFormPageTitle()))) {
						
						Cell cell = pageTitleRow.createCell(colNumForPageTitleStart);
						cell.setCellValue((String) eA.getFormPageTitle());
						cell.setCellStyle(titleCellStyle);

						if (colNum > colNumForPageTitleStart) {
							sheet.addMergedRegion(new CellRangeAddress(0, 0, colNumForPageTitleStart, colNum));
						}
						colNumForPageTitleStart = colNum + 1;
					}

					Cell cell = attributeRow.createCell(colNum++);
					
					cell.setCellValue((String) eA.getAttrributeName()+"\n["+eA.getAttributeFormat()+"]");
					cell.setCellStyle(attributeCellStyle);
					sheet.autoSizeColumn(colNum - 1);
					
					// ----- Dropdown for list and multiList start -----  //
					
					if( eA.getAttributeFormat().equalsIgnoreCase("List") || eA.getAttributeFormat().equalsIgnoreCase("Multi List") || eA.getAttributeFormat().equalsIgnoreCase("CheckBox") || eA.getAttributeFormat().equalsIgnoreCase("Radio") ) {
						try {
							String[] array = eA.getAllowableValues().split(";");
							Row rowForDropDown = sheet.createRow(2);
							XSSFDataValidationHelper dvHelper = new XSSFDataValidationHelper((XSSFSheet) rowForDropDown.getSheet());
							XSSFDataValidationConstraint dvConstraint = (XSSFDataValidationConstraint) dvHelper.createExplicitListConstraint(array);
								
							CellRangeAddressList addressList = new CellRangeAddressList(2, 2, colNum-1, colNum-1);
							XSSFDataValidation validation = (XSSFDataValidation)dvHelper.createValidation(
							dvConstraint, addressList);
							sheet.addValidationData(validation);
							
						}catch (Exception e1) {
							System.out.println(e1.getMessage());
							System.out.println(e1.getCause());
						}
					}
					
					
					// ------ Dropdown for list and multiList end ------ //
					
					
					/////// set column type to text start ////////
					if ( ( eA.getAttributeFormat().equals("Number") && !(  eA.getGroupCaption().equals("Change History") &&  eA.getGroupStyle().equals("Tabular") ) )  || ( eA.getAttributeFormat().equals("Rich Text") && !(  eA.getGroupCaption().equals("Change History") &&  eA.getGroupStyle().equals("Tabular") ) ) || ( eA.getAttributeFormat().equals("Text") && !(  eA.getGroupCaption().equals("Change History") &&  eA.getGroupStyle().equals("Tabular") ) ) || ( eA.getAttributeFormat().equals("Short Text") && !(  eA.getGroupCaption().equals("Change History") &&  eA.getGroupStyle().equals("Tabular") ) ) ) {
						XSSFCellStyle numericStyle = (XSSFCellStyle) workbook.createCellStyle();
						numericStyle.setDataFormat(format.getFormat("@"));
						sheet.setDefaultColumnStyle(colNum-1, numericStyle);
					}
					/////// set column type to text end ////////
					
					
				}
				if (elementAttributeIndex < elementAttributes.size() - 2)
					elementAttributeIndex++;
				
			}
			
	        long TimeForSheetExportEnd = System.currentTimeMillis();
	        long diffTime = (TimeForSheetExportEnd - TimeForSheetExportStart)/1000;
			
	        DisplayMsg = "* All "+tableName+" objects exported successfully [Total Export Time - "+diffTime+" secs]\n\n";
			readAndUpdateTextFile(LogFileName, DisplayMsg);

			//	------ Element Ends here ----- //
		}
		// ----- Main Element Loop ends here ----- //
		
		
		
		long TimeForTotalExportEnd = System.currentTimeMillis();
        long TotalTimeForExport = (TimeForTotalExportEnd - TimeForTotalExportStart)/1000;
        
        DisplayMsg = "All objects exported successfully [ Total Export Time - "+TotalTimeForExport+" secs]";
        readAndUpdateTextFile(LogFileName, DisplayMsg);
        

		long end = System.currentTimeMillis();
        long eclapsed = end - start;
        // System.out.println("eclapsed: "+eclapsed);
        
		try {
			FileOutputStream outputStream = new FileOutputStream(FILE_NAME);
//			System.out.println("FILE_NAME: "+FILE_NAME);

			workbook.write(outputStream);
	         		
			workbook.close();
			
		} catch (FileNotFoundException e1) {
			e1.printStackTrace();
			response.sendRedirect("fromExcel");
		}
					
		String fileNameDownload = dbName + "_template1.xlsx";
		
		return fileNameDownload;
	}
	////////////////////////////////////// Download Template end ///////////////////////////////////////////////
	
	
	////////////////////////////////////// Download Template start //////////////////////////////////////////////
	@RequestMapping(value="/exportTemplateWithDataThroughAjax", method = RequestMethod.GET)
	public @ResponseBody String exportTemplateWithDataThroughAjax(@RequestParam String dbName, HttpSession session, HttpServletRequest request, HttpServletResponse response,
		AuthenticationException exception) throws IOException, JAXBException, DecoderException {
		long TimeForTotalExportStart = System.currentTimeMillis();
		
		JAXBContext context = JAXBContext.newInstance(net.lt.eaze.model_metamodel2.Schema.class);
		String path = session.getServletContext().getRealPath("/");
		Unmarshaller um = context.createUnmarshaller();
		net.lt.eaze.model_metamodel2.Schema unif = (net.lt.eaze.model_metamodel2.Schema) um.unmarshal(new FileReader(path + "/" + dbName + ".xml"));

		String username = "";
		Collection<? extends GrantedAuthority> userRole = null;
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			userDetail = (UserDetails) auth.getPrincipal();
			username = userDetail.getUsername();
			userRole = userDetail.getAuthorities();
		}
		
		
		String FILE_NAME = path;
		String LogFileName = path+"_"+dbName+"_"+username+"_Logs.txt";
		FILE_NAME += dbName + "_template1.xlsx";
		
		
		try {    
			FileWriter fw=new FileWriter(LogFileName);    
			fw.write("");    
			fw.close();    
		} catch(Exception err){
			System.out.println(err);
		}

		List<Element> elements = unif.getElements();
		List<Relationships> relationships = unif.getRelations();
		List<Relationship_Connector> relationshipConnectors = unif.getRelationship_connectors();
		List<Element_Attributes> elementAttributes = unif.getElement_attributes();
		
		XSSFWorkbook workbook = new XSSFWorkbook();
		byte[] rgbB = null; // get byte array from hex string
		XSSFColor color = new XSSFColor(rgbB, null);

		XSSFSheet spreadsheet = workbook.createSheet("LinkToSheets");
		XSSFCell linkCell;
		XSSFCellStyle overviewPageStyles = workbook.createCellStyle();
		XSSFFont overviewPageFont = workbook.createFont();
		spreadsheet.setColumnWidth(1, 65 * 256);
		spreadsheet.setColumnWidth(2, 65 * 256);
		spreadsheet.setColumnWidth(3, 65 * 256);

		///// Overview Page Instructions START
		for (int i = 1; i <= 10; i++) {
			spreadsheet.addMergedRegion(new CellRangeAddress(i, i, 1, 3));
		}

		rgbB = Hex.decodeHex("0a4647");
		color = new XSSFColor(rgbB, null);
		Row rowForOverview = spreadsheet.createRow(1);
		rowForOverview.setHeight((short) (5 * 256));
		overviewPageFont.setColor(HSSFColor.HSSFColorPredefined.WHITE.getIndex());
		overviewPageFont.setFontHeightInPoints((short) 36);
		overviewPageStyles.setFont(overviewPageFont);

		overviewPageStyles.setFillForegroundColor(color);
		overviewPageStyles.setFillPattern(FillPatternType.SOLID_FOREGROUND);
		overviewPageStyles.setAlignment(HorizontalAlignment.CENTER);
		overviewPageStyles.setVerticalAlignment(VerticalAlignment.CENTER);
		linkCell = (XSSFCell) rowForOverview.createCell((short) 1);
		linkCell.setCellValue("EAXee Data Import/Export Template");
		linkCell.setCellStyle(overviewPageStyles);
		overviewPageStyles = workbook.createCellStyle();
		overviewPageFont = workbook.createFont();

		rowForOverview = spreadsheet.createRow(3);
		rowForOverview.setHeight((short) 650);
		linkCell = (XSSFCell) rowForOverview.createCell((short) 1);
		linkCell.setCellValue("How to store data in this template:");
		overviewPageFont.setFontHeightInPoints((short) 12);
		overviewPageFont.setBold(true);
		overviewPageStyles.setFont(overviewPageFont);
		linkCell.setCellStyle(overviewPageStyles);

		rowForOverview = spreadsheet.createRow(4);
		rowForOverview.setHeight((short) 450);
		linkCell = (XSSFCell) rowForOverview.createCell((short) 1);
		linkCell.setCellValue("'Each sheet corresponds to one meta-element (e.g. Application Component, Service, Business Process, Principle etc.).");

		rowForOverview = spreadsheet.createRow(5);
		rowForOverview.setHeight((short) 450);
		linkCell = (XSSFCell) rowForOverview.createCell((short) 1);
		linkCell.setCellValue("'Each row represents an Object and should be used to capture Object attributes (e.g., ID, name, description and so on) that are required to be imported.");

		rowForOverview = spreadsheet.createRow(6);
		rowForOverview.setHeight((short) 450);
		linkCell = (XSSFCell) rowForOverview.createCell((short) 1);
		linkCell.setCellValue(
				"'Columns represent the attributes of the objects in format as described by the meta-model.");

		rowForOverview = spreadsheet.createRow(7);
		rowForOverview.setHeight((short) 450);
		linkCell = (XSSFCell) rowForOverview.createCell((short) 1);
		linkCell.setCellValue("More than one value (i.e., object reference) in a cell for relationship attributes should be separated by semi-colon (;).");

		rowForOverview = spreadsheet.createRow(8);
		rowForOverview.setHeight((short) 450);
		linkCell = (XSSFCell) rowForOverview.createCell((short) 1);
		linkCell.setCellValue("Attributes with 'Boolean' format must be filled with either \"True\" or \"False\".");

		rowForOverview = spreadsheet.createRow(9);
		rowForOverview.setHeight((short) 450);
		linkCell = (XSSFCell) rowForOverview.createCell((short) 1);
		linkCell.setCellValue("'Attributes with date format must follow: dd/mm/yyyy style. The cell-format must be \"date\".");

		rowForOverview = spreadsheet.createRow(10);
		rowForOverview.setHeight((short) 450);
		linkCell = (XSSFCell) rowForOverview.createCell((short) 1);
		linkCell.setCellValue("'Attributes with time format must follow: hh:mm:ss style where 'hh' is 24-hour format.");
		///// Overview Page Instructions END

		CreationHelper createHelper = workbook.getCreationHelper();

		XSSFCellStyle hlinkstyle = workbook.createCellStyle();
		XSSFFont hlinkfont = workbook.createFont();
		hlinkfont.setUnderline(XSSFFont.U_SINGLE);
		hlinkstyle.setFont(hlinkfont);
		hlinkfont.setColor(HSSFColor.HSSFColorPredefined.BLUE.getIndex());
		hlinkstyle.setFont(hlinkfont);
		int rowForLink = 13;
		int colForLink = 1;
		int colForElementDescription = 2;
		String tableName = "";
		String tabColor = "";

		String rgbS = "0d286b";// Dark Blue Color
		rgbB = Hex.decodeHex(rgbS); // get byte array from hex string
		color = new XSSFColor(rgbB, null); // IndexedColorMap has no usage until now. So it can be set null.

		XSSFCellStyle attributeCellStyle = (XSSFCellStyle) workbook.createCellStyle();
		XSSFFont attributeFont = workbook.createFont();
		attributeFont.setColor(HSSFColor.HSSFColorPredefined.WHITE.getIndex());
		attributeFont.setFontHeightInPoints((short) 12);
		attributeFont.setBold(true);

		attributeCellStyle.setFillForegroundColor(color);
		attributeCellStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND);
		attributeCellStyle.setAlignment(HorizontalAlignment.CENTER);
		attributeCellStyle.setVerticalAlignment(VerticalAlignment.CENTER);
		attributeCellStyle.setFont(attributeFont);
		attributeCellStyle.setWrapText(true);
		

		////// PAGE TITLE STYLE ***
		rgbB = Hex.decodeHex("169038"); // get byte array from hex string
		color = new XSSFColor(rgbB, null);
		XSSFCellStyle titleCellStyle = (XSSFCellStyle) workbook.createCellStyle();

		XSSFFont titleFont = workbook.createFont();
		titleFont.setColor(HSSFColor.HSSFColorPredefined.WHITE.getIndex());
		titleFont.setFontHeightInPoints((short) 14);
		titleFont.setBold(true);

		titleCellStyle.setFillForegroundColor(color);
		titleCellStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND);
		titleCellStyle.setAlignment(HorizontalAlignment.CENTER);
		titleCellStyle.setVerticalAlignment(VerticalAlignment.CENTER);
		titleCellStyle.setFont(titleFont);/////////
		ArrayList<String> Temphead = new ArrayList<String>();
		ArrayList<String> AttributeName = new ArrayList<String>();
		
		boolean isHead = false;
		boolean progressBar = false;
		

		DataFormat format = workbook.createDataFormat();

		String DisplayMsg = "";
		
		//	-----Loop for elements -----  //
		for (Element e : elements) {
			
			tableName = e.getElementName();

			long TimeForSheetExportStart = System.currentTimeMillis();
			
			DisplayMsg = "* Export of "+tableName+" begins";
			readAndUpdateTextFile(LogFileName, DisplayMsg);

			linkCell = spreadsheet.createRow(rowForLink).createCell((short) colForLink);
			linkCell.setCellValue(tableName);
			XSSFHyperlink link = (XSSFHyperlink) createHelper.createHyperlink(HyperlinkType.DOCUMENT);
			link.setAddress("'" + tableName + "'!A2");
			linkCell.setHyperlink(link);
			linkCell.setCellStyle(hlinkstyle);

			
			linkCell = spreadsheet.getRow(rowForLink++).createCell((short) colForElementDescription);
			linkCell.setCellValue(e.getDescription());
			spreadsheet.autoSizeColumn(colForElementDescription);

			
			XSSFSheet sheet = null;

			sheet = workbook.createSheet(tableName);
			String sheetName = tableName;
			byte[] rgb = null;

			tabColor = e.getElementColor();
			if (tabColor.equals("Blue")) {
				rgb = Hex.decodeHex("0000FF");// Blue Color
			} else if (tabColor.equals("Green")) {
				rgb = DefaultIndexedColorMap.getDefaultRGB(IndexedColors.GREEN.getIndex());
			} else if (tabColor.equals("Purple")) {
				rgb = Hex.decodeHex("800080");// Purple Color
			} else if (tabColor.equals("Red")) {
				rgb = DefaultIndexedColorMap.getDefaultRGB(IndexedColors.RED.getIndex());
			} else if (tabColor.equals("Yellow")) {
				rgb = DefaultIndexedColorMap.getDefaultRGB(IndexedColors.YELLOW.getIndex());
			} else if (tabColor.equals("Magenta")) {
				rgb = Hex.decodeHex("FF00FF");// Magenta Color
			} else if (tabColor.equals("Brown")) {
				rgb = DefaultIndexedColorMap.getDefaultRGB(IndexedColors.BROWN.getIndex());
			}


			sheet.setTabColor(new XSSFColor(rgb, null));
			
			
			Row pageTitleRow = sheet.createRow(0);
			Row attributeRow = sheet.createRow(1);
			pageTitleRow.setHeight((short) 400);
			attributeRow.setHeight((short) 650);
			int colNum = 0;
			int colNumForPageTitleStart = 0;
			int elementAttributeIndex = 0;
			
			int loopIndexForElementAttributes = 2;

			

			//	------ Loop for element attributes ------ //
			for (Element_Attributes eA : elementAttributes) {
				
				
				if (eA.getConceptName().equals(tableName)) {
					
					if (!(eA.getFormPageTitle().equals(elementAttributes.get(elementAttributeIndex + 1).getFormPageTitle()))) {
						
						Cell cell = pageTitleRow.createCell(colNumForPageTitleStart);
						cell.setCellValue((String) eA.getFormPageTitle());
						cell.setCellStyle(titleCellStyle);

						if (colNum > colNumForPageTitleStart) {
							sheet.addMergedRegion(new CellRangeAddress(0, 0, colNumForPageTitleStart, colNum));
						}
						colNumForPageTitleStart = colNum + 1;
					}

					Cell cell = attributeRow.createCell(colNum++);
					
					cell.setCellValue((String) eA.getAttrributeName()+"\n["+eA.getAttributeFormat()+"]");
					cell.setCellStyle(attributeCellStyle);
					sheet.autoSizeColumn(colNum - 1);
					
					// ----- Dropdown for list and multiList start -----  //
					// if( eA.getAttributeFormat().equalsIgnoreCase("List") || eA.getAttributeFormat().equalsIgnoreCase("Multi List") ) {
					if( eA.getAttributeFormat().equalsIgnoreCase("List") || eA.getAttributeFormat().equalsIgnoreCase("Multi List") || eA.getAttributeFormat().equalsIgnoreCase("CheckBox") || eA.getAttributeFormat().equalsIgnoreCase("Radio") ) {
						try {
							String[] array = eA.getAllowableValues().split(";");
							Row rowForDropDown = sheet.createRow(2);
							XSSFDataValidationHelper dvHelper = new XSSFDataValidationHelper((XSSFSheet) rowForDropDown.getSheet());
							XSSFDataValidationConstraint dvConstraint = (XSSFDataValidationConstraint) dvHelper.createExplicitListConstraint(array);
								
							CellRangeAddressList addressList = new CellRangeAddressList(2, 2, colNum-1, colNum-1);
							XSSFDataValidation validation = (XSSFDataValidation)dvHelper.createValidation(dvConstraint, addressList);
							sheet.addValidationData(validation);
							
						}catch (Exception e1) {
							System.out.println(e1.getMessage());
							System.out.println(e1.getCause());
						}
					}
					
					// ------ Dropdown for list and multiList end ------ //
					
					
//					/////// set column type to number start ////////
//					if ( eA.getAttributeFormat().equals("Number") && !(  eA.getGroupCaption().equals("Change History") &&  eA.getGroupStyle().equals("Tabular") ) ) {
//						XSSFCellStyle numericStyle = (XSSFCellStyle) workbook.createCellStyle();
//						numericStyle.setDataFormat(format.getFormat("@"));
//						sheet.setDefaultColumnStyle(colNum-1, numericStyle);
//					}
//					/////// set column type to number end ////////
					
					/////// set column type to text start ////////
					if ( ( eA.getAttributeFormat().equals("Number") && !(  eA.getGroupCaption().equals("Change History") &&  eA.getGroupStyle().equals("Tabular") ) )  || ( eA.getAttributeFormat().equals("Rich Text") && !(  eA.getGroupCaption().equals("Change History") &&  eA.getGroupStyle().equals("Tabular") ) ) || ( eA.getAttributeFormat().equals("Text") && !(  eA.getGroupCaption().equals("Change History") &&  eA.getGroupStyle().equals("Tabular") ) ) || ( eA.getAttributeFormat().equals("Short Text") && !(  eA.getGroupCaption().equals("Change History") &&  eA.getGroupStyle().equals("Tabular") ) ) ) {
						XSSFCellStyle numericStyle = (XSSFCellStyle) workbook.createCellStyle();
						numericStyle.setDataFormat(format.getFormat("@"));
						sheet.setDefaultColumnStyle(colNum-1, numericStyle);
					}
					/////// set column type to text end ////////
					
					
				}
				if (elementAttributeIndex < elementAttributes.size() - 2)
					elementAttributeIndex++;
				
			}
			
			
			//				List<String> ElementSGV = enterpriseDAO.getAllSelfGeneratedAttVal(dbName, tableName.replaceAll("\\s", "_"));

	        List<attributesInformation> attributeDetailsList = enterpriseDAO.getAllAttribute(dbName, tableName.replaceAll("\\s", "_"));
	        List<RelationsModel> RelationshipTable = enterpriseDAO.getRelationshipTableForImpex(dbName, tableName.replaceAll("\\s", "_"), tableName);
	        List<String> ElementSGV = new ArrayList<String>();
	        List<String> groupStyleForPrimaryAndSystem = new ArrayList<String>();
	        List<String> groupCaptionForPrimaryAndSystem = new ArrayList<String>();
	        List<String> attributeFormatPrimaryAndSystem = new ArrayList<String>();
	        
	        
	        
	        for (attributesInformation attribute: attributeDetailsList) {
	        	if(attribute.getAttributeType().equals("System") || attribute.getAttributeType().equals("Primary")){
	        		ElementSGV.add(attribute.getSelfGeneratedAttribute());
	        		
	        		groupStyleForPrimaryAndSystem.add(attribute.getGroupStyle());
	        		groupCaptionForPrimaryAndSystem.add(attribute.getGroupCaption());
	        		attributeFormatPrimaryAndSystem.add(attribute.getAttributeFormat());
	        		
	        	}
	        }
	        
			List<ArrayList<String>> getCompleteTableByTableName= enterpriseDAO.getCompleteTableColumnsBySGVArray(dbName, tableName.replaceAll("\\s", "_"), ElementSGV);

			for (List<String> tableData: getCompleteTableByTableName) {
	            Row row = sheet.createRow(loopIndexForElementAttributes++);

	            
//	            if ( attributeDetailsList.getAttributeFormat().equals("Number") && !(  eA.getGroupCaption().equals("Change History") &&  eA.getGroupStyle().equals("Tabular") ) ) {
//	            	
//	            }
	            

	            for (int i=0; i<tableData.size(); i++) {
	        		
	        		if(groupStyleForPrimaryAndSystem.get(i).equals("Tabular") && groupCaptionForPrimaryAndSystem.get(i).equals("Change History")) {
	        			continue;
	        		}else if(attributeFormatPrimaryAndSystem.get(i).equals("Date")) {
	        			
	        			if(tableData.get(i).equals("1900-01-01")) {
	        				continue;
	        			}else {
			        		String[] splitELE = ElementSGV.get(i).split("_");
			        		int index = Integer.parseInt(splitELE[1].replaceFirst("^0+(?!$)", ""));
			        		Cell cell   = row.createCell(index-1);
			        		cell.setCellValue(tableData.get(i));
			        		sheet.autoSizeColumn(i);
	        			}
	        		}
	        		else if(attributeFormatPrimaryAndSystem.get(i).equals("Number") && !(groupStyleForPrimaryAndSystem.get(i).equals("Tabular") && groupCaptionForPrimaryAndSystem.get(i).equals("Change History")) ) {

	        			XSSFCellStyle numericStyle = (XSSFCellStyle) workbook.createCellStyle();
						numericStyle.setDataFormat(format.getFormat("@"));
						
						String[] splitELE = ElementSGV.get(i).split("_");
		        		int index = Integer.parseInt(splitELE[1].replaceFirst("^0+(?!$)", ""));
		        		Cell cell   = row.createCell(index-1);
		        		
		        		cell.setCellStyle(numericStyle);
		        		cell.setCellValue(tableData.get(i));
		        		
		        		sheet.autoSizeColumn(i);
						
						
	        		}
	        		else if( (attributeFormatPrimaryAndSystem.get(i).equals("Rich Text") && !(groupStyleForPrimaryAndSystem.get(i).equals("Tabular") && groupCaptionForPrimaryAndSystem.get(i).equals("Change History"))) || (attributeFormatPrimaryAndSystem.get(i).equals("Short Text") && !(groupStyleForPrimaryAndSystem.get(i).equals("Tabular") && groupCaptionForPrimaryAndSystem.get(i).equals("Change History")) || (attributeFormatPrimaryAndSystem.get(i).equals("Text") && !(groupStyleForPrimaryAndSystem.get(i).equals("Text") && groupCaptionForPrimaryAndSystem.get(i).equals("Change History")) ) ) ) {

	        			XSSFCellStyle numericStyle = (XSSFCellStyle) workbook.createCellStyle();
						numericStyle.setDataFormat(format.getFormat("@"));
						
						String[] splitELE = ElementSGV.get(i).split("_");
		        		int index = Integer.parseInt(splitELE[1].replaceFirst("^0+(?!$)", ""));
		        		Cell cell   = row.createCell(index-1);
		        		
		        		cell.setCellStyle(numericStyle);
		        		cell.setCellValue(tableData.get(i));
		        		
		        		sheet.autoSizeColumn(i);
						
						
	        		}
	        		else {
		        		
		        		String[] splitELE = ElementSGV.get(i).split("_");
		        		int index = Integer.parseInt(splitELE[1].replaceFirst("^0+(?!$)", ""));
		        		Cell cell   = row.createCell(index-1);
		        		cell.setCellValue(tableData.get(i));
		        		sheet.autoSizeColumn(i);
	        		}

	        	}

	        	
	        	
	        	
	        	/////////////////////////////////////////////////////////////////////////////////////////////////////////
		        // Relationship Export Starts Here
		        
		        for(int i=0; i<attributeDetailsList.size(); i++) {
		        	
		        	if(attributeDetailsList.get(i).getAttributeType().equals("Relationship")) {
		        		String AttributeElementName = attributeDetailsList.get(i).getElementName();
		        		// String AttributeAttributeType = attributeDetailsList.get(i).getAttributeType();
		        		String AttributeSourceRelationshipElement = attributeDetailsList.get(i).getSourceRelationship_Element();
		        		String AttributeTargetRelationshipElement = attributeDetailsList.get(i).getTargetRelationship_Element();
		        		// String AttributeSelfGeneratedAttribute = attributeDetailsList.get(i).getSelfGeneratedAttribute();
		        		// String AttributeActualAttribute = attributeDetailsList.get(i).getActualAttribute();
		        		String AttributeBiDirectionRelationshipPair = attributeDetailsList.get(i).getBidirectionRelationshipPair();
		        		String AttributeRelationship = attributeDetailsList.get(i).getRelationship();
		        		
		        		// System.out.println("attributeDetailsList.get("+i+"): "+attributeDetailsList.get(i));

		        		
		        		// for target 
		        		if( ( !(AttributeTargetRelationshipElement.equals("N/A")) && (AttributeSourceRelationshipElement.equals("N/A")) ) ) {
		        			String Source = AttributeElementName; 
		    				String Target = AttributeTargetRelationshipElement;
		    				String cellValueForRealationShip = "";

					        for(int j=0; j<RelationshipTable.size(); j++) {
				        		
				        		if( (Source.equals(RelationshipTable.get(j).getSourceRelElement())) && (Target.equals(RelationshipTable.get(j).getTargetRelElement())) && (AttributeRelationship.equals(RelationshipTable.get(j).getRelationshipType())) && (AttributeBiDirectionRelationshipPair.equals(RelationshipTable.get(j).getBidirectionRelationshipPair())) && (RelationshipTable.get(j).getTargetAttValue().equals(tableData.get(0))) ) {

				        			// System.out.println("In Target");
				        			// System.out.println("Target R: "+RelationshipTable.get(j));
				        			// String[] splitELE = AttributeSelfGeneratedAttribute.split("_");
					        		// int index = Integer.parseInt(splitELE[1].replaceFirst("^0+(?!$)", ""));
				        			// Cell cell = row.getCell(index-1);
					        		
					        		int cellIndex = i;
					        		
					        		Cell cell = row.getCell(cellIndex);

					        		if(cell == null) {
					        			cell = row.createCell(cellIndex);
					        			String tempCellValue = RelationshipTable.get(j).getSourceAttValue().toString();

					        			cell.setCellValue(tempCellValue);
					        		}else {
					        			String tempCellValue = cell.getStringCellValue();

					        			tempCellValue += ";"+RelationshipTable.get(j).getSourceAttValue().toString();
					        			
					        			cell.setCellValue(tempCellValue);
					        		}
				        		}
					        }
		        		}
		        		
		        		// for source
		        		
		        		if( ( (AttributeTargetRelationshipElement.equals("N/A")) && !(AttributeSourceRelationshipElement.equals("N/A")) ) ) {
		        			String Source = AttributeSourceRelationshipElement;
		    				String Target = AttributeElementName;
		    				String cellValueForRealationShip = "";
		    				
					        for(int j=0; j<RelationshipTable.size(); j++) {
					        	
				        		
				        		if( (Source.equals(RelationshipTable.get(j).getSourceRelElement())) && (Target.equals(RelationshipTable.get(j).getTargetRelElement())) && (AttributeRelationship.equals(RelationshipTable.get(j).getRelationshipType())) && (AttributeBiDirectionRelationshipPair.equals(RelationshipTable.get(j).getBidirectionRelationshipPair())) && (RelationshipTable.get(j).getSourceAttValue().equals(tableData.get(0))) ) {
				        			
				        			// String[] splitELE = AttributeSelfGeneratedAttribute.split("_");
					        		// int index = Integer.parseInt(splitELE[1].replaceFirst("^0+(?!$)", ""));
				        			// Cell cell = row.getCell(index-1);
				        			
				        			int cellIndex = i;
					        		
					        		Cell cell = row.getCell(cellIndex);

					        		if(cell == null) {
					        			cell = row.createCell(cellIndex);
					        			String tempCellValue = RelationshipTable.get(j).getTargetAttValue().toString();

					        			cell.setCellValue(RelationshipTable.get(j).getTargetAttValue().toString());
					        		}else {

					        			String tempCellValue = cell.getStringCellValue();
					        			tempCellValue += ";"+RelationshipTable.get(j).getTargetAttValue().toString();
					        			cell.setCellValue(tempCellValue);
					        		}
				        		}
					        }
		        		}
		        	}
		        }
		        // Relationship Export Ends Here
	        	/////////////////////////////////////////////////////////////////////////////////////////////////////////
	        }
	        
	        long TimeForSheetExportEnd = System.currentTimeMillis();
	        long diffTime = (TimeForSheetExportEnd - TimeForSheetExportStart)/1000;
//			try {    
//				FileWriter fw=new FileWriter(LogFileName);    
//				fw.write("All "+tableName+" objects exported successfully [Total Export Time - "+diffTime+" secs]");    
//				fw.close();    
//			} catch(Exception err){
//				System.out.println(err);
//			}
	        DisplayMsg = "* All "+tableName+" objects exported successfully [Total Export Time - "+diffTime+" secs]\n\n";
//			System.out.println(DisplayMsg);
			readAndUpdateTextFile(LogFileName, DisplayMsg);
//			System.out.println("---------------------------------");
			
			
			
			//	------ Element Ends here ----- //
		}
		// ----- Main Element Loop ends here ----- //

		long TimeForTotalExportEnd = System.currentTimeMillis();
        long TotalTimeForExport = (TimeForTotalExportEnd - TimeForTotalExportStart)/1000;
        
        DisplayMsg = "All objects exported successfully [ Total Export Time - "+TotalTimeForExport+" secs]";
        readAndUpdateTextFile(LogFileName, DisplayMsg);
        ////////////////////////////////////////////////////////

//         System.out.println(DisplayMsg);
//         System.out.println("LogFileName: "+LogFileName);
		try {
			FileOutputStream outputStream = new FileOutputStream(FILE_NAME);
//			System.out.println("FILE_NAME: "+FILE_NAME);

			workbook.write(outputStream);
	         		
			workbook.close();
			
		} catch (FileNotFoundException e1) {
			e1.printStackTrace();
			response.sendRedirect("fromExcel");
		}
					
		String fileNameDownload = dbName + "_template1.xlsx";
		
		return fileNameDownload;
	}
	////////////////////////////////////// Download Template end ///////////////////////////////////////////////

	
	
	private static void readAndUpdateTextFile(String filePath, String newString) {
	    File fileToBeModified = new File(filePath);
	    StringBuilder oldContent = new StringBuilder();
	    try (BufferedReader reader = new BufferedReader(new FileReader(fileToBeModified))) {
	        String line = reader.readLine();
	        while (line != null) {
	            oldContent.append(line).append(System.lineSeparator());
	            line = reader.readLine();
	        }
	        String content = oldContent.toString();
	        String newContent = content + newString;
	        try (FileWriter writer = new FileWriter(fileToBeModified)) {
	            writer.write(newContent);
	        }
	    } catch (IOException e) {
	        e.printStackTrace();
	    }
	}
	
	
	private static String readTextFile(String filePath) {

	    File fileToBeModified = new File(filePath);
	    
	    StringBuilder oldContent = new StringBuilder();
	    
	    try (BufferedReader reader = new BufferedReader(new FileReader(fileToBeModified))) {
	        String line = reader.readLine();
	        while (line != null) {
	            oldContent.append(line).append(System.lineSeparator());
	            line = reader.readLine();
	        }
	        String logsFileData = oldContent.toString();
	        
	        return logsFileData;

	    } catch (IOException e) {
	        e.printStackTrace();
	        String Error = "Error Reading File!";
	        return Error;
	    }
	}
	
	public static boolean isValidURL(String url){ 
        /* Try creating a valid URL */
        try { 
            new URL(url).toURI(); 
            return true; 
        } 
          
        // If there was an Exception 
        // while creating URL object 
        catch (Exception e) { 
            return false; 
        } 
    }	
	private static void clearTextFile(String filePath) {
	    File fileToBeModified = new File(filePath);
	    StringBuilder oldContent = new StringBuilder();
	    try (BufferedReader reader = new BufferedReader(new FileReader(fileToBeModified))) {
			//	        String line = reader.readLine();
			//	        while (line != null) {
			//	            oldContent.append(line).append(System.lineSeparator());
			//	            line = reader.readLine();
			//	        }
	        String newContent = "";
	        try (FileWriter writer = new FileWriter(fileToBeModified)) {
	            writer.write(newContent);
	        }
	    } catch (IOException e) {
	        e.printStackTrace();
	    }
	}
	
	
	@RequestMapping(value="/getDataFormLogsFile", method = RequestMethod.GET)
	public @ResponseBody byte[] getDataFormLogsFile(@RequestParam String fileName, HttpSession session, HttpServletRequest request, HttpServletResponse response,	AuthenticationException exception) throws IOException, JAXBException, DecoderException {
		String TextFileLogs = "";
		
		String path = session.getServletContext().getRealPath("/");
		String username = "";
		Collection<? extends GrantedAuthority> userRole = null;
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			userDetail = (UserDetails) auth.getPrincipal();
			username = userDetail.getUsername();
			userRole = userDetail.getAuthorities();
		}
		
		dbName = unif.getDbName();
//		String LogFileName = path+"_"+dbName+"_"+username+"_Logs.txt";
		String LogFileName = path+"_"+dbName+"_"+username+"_"+fileName+".txt";
		
		System.out.println("getDataFormLogsFile: "+LogFileName);
		
		TextFileLogs = readTextFile(LogFileName);
		
//		TextFileLogs = "hussain "+dummyData;

		
		
//		return TextFileLogs;
		byte[] utfBytes = TextFileLogs.getBytes("utf-8");
		return utfBytes;
	}
		
	@RequestMapping(value="/getLogsFileName", method = RequestMethod.GET)
	public @ResponseBody String getLogsFileName(@RequestParam String fileName, HttpSession session, HttpServletRequest request, HttpServletResponse response,	AuthenticationException exception) throws IOException, JAXBException, DecoderException {
		String TextFileLogs = "";
		
		String path = session.getServletContext().getRealPath("/");
		String username = "";
		Collection<? extends GrantedAuthority> userRole = null;
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			userDetail = (UserDetails) auth.getPrincipal();
			username = userDetail.getUsername();
			userRole = userDetail.getAuthorities();
		}
		dbName = unif.getDbName();
		String LogFileName = "_"+dbName+"_"+username+"_"+fileName+".txt";
		
		return LogFileName;
	}
	
	
	@RequestMapping(value = "/downloadMetamodel", method = RequestMethod.GET)
//	public @ResponseBody ResponseEntity<Object> downloadObjectUploadedFile(@RequestParam String fileName,
	public @ResponseBody ResponseEntity<Object> downloadObjectUploadedFile(@RequestParam String fileName,
			HttpSession session) throws JAXBException, FileNotFoundException {

		String path = session.getServletContext().getRealPath("/");

		String fileName1 = path+fileName;
		File file = new File(fileName1);

		InputStreamResource resource = new InputStreamResource(new FileInputStream(file));

		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Disposition", String.format("attachment; filename=\"%s\"", fileName));
		headers.add("Cache-Control", "no-cache, no-store, must-revalidate");
		headers.add("Pragma", "no-cache");
		headers.add("Expires", "0");

		ResponseEntity<Object> responseEntity = ResponseEntity.ok().headers(headers).contentLength(file.length())
				.contentType(MediaType.parseMediaType("application/txt")).body(resource);

		return responseEntity;
	}
	
	
	// DOWNLOAD TEMPLATE OR EXORT DATABASE EXCEL FILE
	@RequestMapping(value = { "/downloadTemplate" }, method = RequestMethod.GET)
	public ResponseEntity<Object> downloadTemplate(@RequestParam String db_Name, String download, HttpSession session)
			throws IOException, DecoderException {
		String dbName = db_Name;
		String path = session.getServletContext().getRealPath("/");
		String FILE_NAME = path + "/";
		if (download.equals("export")) {
			FILE_NAME += dbName + "_export.xlsx";
		} else {
			FILE_NAME += dbName + "_template.xlsx";
		}
		dbModel dbName1 = new dbModel();
		dbName1.setDbName(dbName);
		List<tableModel> tableList = enterpriseDAO.listTable(dbName1);
		// List<String> entityForAllowableValues = enterpriseDAO.getRows(dbName,
		// "allowable_values", "Entity_Name");
		// System.out.println("entityForAllowableValues:
		// HERE"+entityForAllowableValues);

		XSSFWorkbook workbook = new XSSFWorkbook();
		int count = 0;
		int count1 = 0;
		XSSFSheet spreadsheet = workbook.createSheet("LinkToSheets");
		XSSFCell linkCell;
		CreationHelper createHelper = workbook.getCreationHelper();
		XSSFCellStyle hlinkstyle = workbook.createCellStyle();
		XSSFFont hlinkfont = workbook.createFont();
		hlinkfont.setUnderline(XSSFFont.U_SINGLE);
		hlinkstyle.setFont(hlinkfont);
		hlinkfont.setColor(HSSFColor.HSSFColorPredefined.BLUE.getIndex());
		hlinkstyle.setFont(hlinkfont);

//	      CellStyle attributeCellStyle = workbook.createCellStyle();
//	      attributeCellStyle.setFillBackgroundColor(HSSFColor.HSSFColorPredefined.BLUE.getIndex());
//	      attributeCellStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND);

		int rowForLink = 1;

		for (tableModel t : tableList) {
			if (t.getTableName().equals("attributes_information")) {
				continue;
			}

			linkCell = spreadsheet.createRow(rowForLink++).createCell((short) 1);
			linkCell.setCellValue(t.getTableName());
			XSSFHyperlink link = (XSSFHyperlink) createHelper.createHyperlink(HyperlinkType.DOCUMENT);
			link.setAddress("'" + t.getTableName() + "'!A2");
			linkCell.setHyperlink(link);
			linkCell.setCellStyle(hlinkstyle);

			// boolean allowableExists = false;
			System.out.println("TABLE : " + t.getTableName());
//			  for(String al : entityForAllowableValues) {
////				  System.out.println("allowableExists loop");
//				  if(al.equalsIgnoreCase(t.getTableName())) {
//					  System.out.println("allowableExists condition true");
//					  allowableExists = true;
//				  }
//			  }
			XSSFSheet sheet = null;
//			  try {
			sheet = workbook.createSheet(t.getTableName());
			String sheetName = t.getTableName();
			byte[] rgb;
			// if(sheetName.startsWith("rel_")){
			// rgb=DefaultIndexedColorMap.getDefaultRGB(IndexedColors.GREEN.getIndex());
			// }
			// else {
			rgb = DefaultIndexedColorMap.getDefaultRGB(IndexedColors.BLUE.getIndex());
			// }

			sheet.setTabColor(new XSSFColor(rgb, null));
			count++;
			System.out.println("Sheets Created: " + count);

			List<String> attrList = enterpriseDAO.listAttributes(dbName, t.getTableName());

			Row row = sheet.createRow(0);
			int colNum = 0;

			for (String a : attrList) {
				if (a.equals("id"))
					continue;
				if (!(a.equals("From_OR_To") || a.equals("Relationship_Type"))) {
					List<String> actualValue = enterpriseDAO.getActualValue(dbName, t.getTableName(), a);
					System.out.println(actualValue);
					a = actualValue.get(0);
				}
				// List<String> attributeForAllowableValues = enterpriseDAO.getRows(dbName,
				// "allowable_values", "Atrribute_Name");
//				  boolean attributeExists = false;
//				  for(String aa: attributeForAllowableValues) {
////					  System.out.println("attributeForAllowableValues loop");
//					  if(a.equals(aa)) {
////						  System.out.println("attributeForAllowableValues condition true");
//						  attributeExists = true;
//					  }
//				  }
				Cell cell = row.createCell(colNum++);

//				  if(attributeExists == true && allowableExists == true) {
//					  System.out.println("TRUE");
//					  System.out.println(a);
//					  List<String> AllowableValues = enterpriseDAO.getAllowableValues(dbName, t.getTableName() ,a );
//					  try {
//						  System.out.println(t.getTableName());
//						  System.out.println(a);
//						  System.out.println(AllowableValues);
//						  String cellVal = AllowableValues.get(0);
//						  String str[] = cellVal.split(";");
//						  XSSFDataValidationHelper dvHelper = new XSSFDataValidationHelper((XSSFSheet) row.getSheet());
//							XSSFDataValidationConstraint dvConstraint = (XSSFDataValidationConstraint) dvHelper.createExplicitListConstraint(str);
//	
//							CellRangeAddressList addressList = new CellRangeAddressList(1, 100, colNum-1, colNum-1);
//	
//							XSSFDataValidation validation = (XSSFDataValidation)dvHelper.createValidation(
//							dvConstraint, addressList);
//							validation.setShowErrorBox(true);
//							validation. createErrorBox("ERROR MEESAGE:Invalid Data", "Please provide valid data in the dropdown list.");
//	
//							sheet.addValidationData(validation);
//				  }catch (Exception e) {
//					  System.out.println(e.getCause());
//					  System.out.println(e.getMessage());
//					  System.out.println("\n\n\n\n\n ERROR \n\n\n\n");
//					// TODO: handle exception
//				}
//				  }

//				  if(t.getTableName().startsWith("rel_")) {
//					  String colName = a.replaceAll("_1","");;
//					  if(  !(colName.equalsIgnoreCase("id") || colName.equalsIgnoreCase("Type"))  ) {
//						  try {
//						  List<String> nameList = enterpriseDAO.getRows(dbName, colName , "Name");
//						  String[] array = nameList.toArray(new String[nameList.size()]);
//
//						  XSSFDataValidationHelper dvHelper = new XSSFDataValidationHelper((XSSFSheet) row.getSheet());
//							XSSFDataValidationConstraint dvConstraint = (XSSFDataValidationConstraint) dvHelper.createExplicitListConstraint(array);
//
//							CellRangeAddressList addressList = new CellRangeAddressList(1, 100, colNum-1, colNum-1);
//
//							XSSFDataValidation validation = (XSSFDataValidation)dvHelper.createValidation(
//							dvConstraint, addressList);
//							validation.setShowErrorBox(true);
//							validation. createErrorBox("ERROR MEESAGE:Invalid Data", "Please provide valid data in the dropdown list.");
//
//							sheet.addValidationData(validation);
//						  }catch (Exception e) {
//							  System.out.println(e.getMessage());
//							  System.out.println(e.getCause());
//						}
//					  }
//					  
//				  }

				cell.setCellValue((String) a);
			}

			if (download.equals("export")) {
				List<String> allIds = enterpriseDAO.getAllIds(dbName, t.getTableName());
				int rowCount = 1;
				for (String id : allIds) {
					row = sheet.createRow(rowCount);
					colNum = 0;
					for (String at : attrList) {
						List<String> cellValue = enterpriseDAO.getRowsForExcel(dbName, t.getTableName(), id, at);
						String val = cellValue.get(0);
						Cell cell = row.createCell(colNum++);
						cell.setCellValue((String) val);
					}
					rowCount++;
				}
			}

//			  }catch (Exception e) {
//				  System.out.println(e.getMessage());
//				  count1++;
//				  System.out.println("Errors: "+count1);
//				// TODO: handle exception
//			}
		}

		try {
			FileOutputStream outputStream = new FileOutputStream(FILE_NAME);
			workbook.write(outputStream);
			workbook.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		System.out.println("Done");

		File file = new File(FILE_NAME);
		InputStreamResource resource = new InputStreamResource(new FileInputStream(file));

		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Disposition", String.format("attachment; filename=\"%s\"", file.getName()));
		headers.add("Cache-Control", "no-cache, no-store, must-revalidate");
		headers.add("Pragma", "no-cache");
		headers.add("Expires", "0");

		ResponseEntity<Object> responseEntity = ResponseEntity.ok().headers(headers).contentLength(file.length())
				.contentType(MediaType.parseMediaType("application/txt")).body(resource);

		return responseEntity;
	}

	@RequestMapping(value = "userpanel", method = RequestMethod.GET)
	public ModelAndView userpanel(ModelAndView model) {

		List<dbModel> dbList = enterpriseDAO.listDb();
		// model.addObject("dbList", dbList);
		model.setViewName("explorer");
		return model;
	}
	
//	List<String> allForeignKeys = enterpriseDAO.getAllForeignKeys("graphs","folders","parent_id");
//	
//	int parentIDindex = 1;
//	
//	String getTreeRecursiveFuntion(String pKey){
//		
//		List<graphFolders> foldersList = enterpriseDAO.getGraphFolders(pKey);
//		
//		if()
//		for(graphFolders folders:foldersList) {
//			
//			graphTree +="<li><span class=\"caret\">"+folders.getFolder_name()+"</span>";
//			
//		}
//		return dbName;
//	}
	

	@RequestMapping(value = "/getGraphNames")
	public @ResponseBody byte[] getGraphNames(HttpSession session) throws UnsupportedEncodingException {
		

		ReloadableResourceBundleMessageSource messageSource=new ReloadableResourceBundleMessageSource();
		messageSource.setBasename("classpath:net/lt/eaze/resources/locale/messages");
		messageSource.setDefaultEncoding("UTF-8");
		messageSource.setUseCodeAsDefaultMessage(true);
		Locale locale = LocaleContextHolder.getLocale();
		
		roleDetails role_details = (roleDetails) session.getAttribute("role_details");
		String username = "";
		Collection<? extends GrantedAuthority> userRole = null;
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			userDetail = (UserDetails) auth.getPrincipal();
			username = userDetail.getUsername();
			userRole = userDetail.getAuthorities();
		}
		String userRoleStr = userRole.toArray()[0].toString();
		
		String graphTree = "";
		//graphTree+="<span id=\"modelSpan\" class=\"caret\" oncontextmenu=\"on_context_menu_graph('1','LambdaTheta')\">LambdaTheta</span>";
		graphTree+="<ul id=\"model1\">";
		
		Map<String, List<String>> P_F_keys = new HashMap<String, List<String>>();
		
		String database = "graphs";
		String tableName = "roadmap";
		List<timeLineGraph> roadMapName = enterpriseDAO.getRoadMap(database, tableName);
		//String treeFromFunction =getTreeRecursiveFuntion(allForeignKeys.get(0))
			
		List<String> allForeignKeys = enterpriseDAO.getAllForeignKeys("graphs","folders","parent_id");
		int previousFolderParent = 0;
		
		String company_name = (String) session.getAttribute("company_name");
		List<graphFolders> foldersList = enterpriseDAO.getGraphFolders(allForeignKeys.get(0),username,"1", company_name);
		for(graphFolders folder:foldersList) {
			String id= folder.getId();
			String folderName = folder.getFolder_name();
			String parentID = folder.getParent_id();
			System.out.println("PARENT: "+parentID);
			if(!userRole.toArray()[0].toString().equals("ROLE_READER")) {
//				graphTree +="<li><span id=\""+folder.getFolder_name().replaceAll(" ", "---")+"\" class=\"caret\"  oncontextmenu=\"on_context_menu_graph('"+folder.getFolder_name().replaceAll(" ", "---")+"','"+folder.getFolder_name().replaceAll(" ", "---")+folder.getId()+"','"+id+"','"+parentID+"');\">"+messageSource.getMessage(folderName.replaceAll("\\s+", "_"),null,locale)+"</span>";
				graphTree +="<li><p style=\"margin-bottom:0px;\" id=\""+folder.getFolder_name().replaceAll(" ", "---")+"\" class=\"caret\"  oncontextmenu=\"on_context_menu_graph('"+folder.getFolder_name().replaceAll(" ", "---")+"','"+folder.getFolder_name().replaceAll(" ", "---")+folder.getId()+"','"+id+"','"+parentID+"');\">"+messageSource.getMessage(folderName.replaceAll("\\s+", "_"),null,locale)+"</p>";
			}
			else {
				graphTree +="<li><span id=\""+folder.getFolder_name().replaceAll(" ", "---")+"\" class=\"caret\">"+messageSource.getMessage(folderName.replaceAll("\\s+", "_"),null,locale)+"</span>";
			}
			graphTree+="<ul id=\""+folder.getFolder_name().replaceAll(" ", "---")+folder.getId()+"\" class=\"nested\">";
			
			
			List<graphFiles> graphNames = enterpriseDAO.getGraphNamesFromFolder(username,id,"1", company_name);
			List<catalogFiles> catalogNames = enterpriseDAO.getCatalogNamesFromFolder(username,id,"1",company_name);
			List<matrixFiles> matrixNames = enterpriseDAO.getMatrixNamesFromFolder(username,id,"1",company_name);
			List<navigationFiles> navigationNames = enterpriseDAO.getNavigationNamesFromFolder(username,id,"1", company_name);
			List<timeLineGraph> roadMapNames = enterpriseDAO.getRoadMapFromFolder(username,id,"1",company_name);
			
			
			List<graphFolders> foldersList1 = enterpriseDAO.getGraphFolders(id,username,"1", company_name);
			for(graphFolders folders1:foldersList1) {
				String id1= folders1.getId();
				String folderName1 = folders1.getFolder_name();
				String parentID1 = folders1.getParent_id();
				if(!userRole.toArray()[0].toString().equals("ROLE_READER")) {
					graphTree += "<li id=\""+folders1.getFolder_name().replaceAll(" ", "---")+"123\"><p style=\"margin-bottom:0px;\" class=\"caret "+folders1.getFolder_name().replaceAll(" ", "---")+"\" oncontextmenu=\"on_context_menu_graph('"+folder.getFolder_name().replaceAll(" ", "---")+"','"+folders1.getFolder_name().replaceAll(" ", "---")+folders1.getId()+"','"+id1+"', '"+folders1.getFolder_name().replaceAll(" ", "---")+"','"+parentID1+"','"+folder.getFolder_name().replaceAll(" ", "---")+folder.getId()+"','folder')\">"+messageSource.getMessage(folders1.getFolder_name().replaceAll("\\s+", "_"),null,locale)+"</p>";
				}
				else {
					graphTree += "<li id=\""+folders1.getFolder_name().replaceAll(" ", "---")+"123\"><p style=\"margin-bottom:0px;\" class=\"caret "+folders1.getFolder_name().replaceAll(" ", "---")+"\">"+messageSource.getMessage(folders1.getFolder_name().replaceAll("\\s+", "_"),null,locale)+"</p>";
				}
				graphTree+="<ul id=\""+folders1.getFolder_name().replaceAll(" ", "---")+folders1.getId()+"\" class=\"nested\">";
				List<catalogFiles> catalogNames1 = enterpriseDAO.getCatalogNamesFromFolder(username,id1,"1",company_name);
				List<graphFiles> graphNames1 = enterpriseDAO.getGraphNamesFromFolder(username,id1,"1", company_name);
				List<matrixFiles> matrixNames1 = enterpriseDAO.getMatrixNamesFromFolder(username,id1,"1",company_name);
				List<navigationFiles> navigationNames1 = enterpriseDAO.getNavigationNamesFromFolder(username,id1,"1", company_name);
				List<timeLineGraph> roadMapNames1 = enterpriseDAO.getRoadMapFromFolder(username,id1,"1", company_name);
				
				
				for(graphFiles gn: graphNames1) {
					if(role_details.isGraphDelete()==true)
					{						
						if(gn.getIsFiltered().equals("true")){
							graphTree+= "<li id=\""+gn.getModelName().replaceAll(" ", "---")+gn.getId()+"\" class=\"model_list "+folders1.getFolder_name().replaceAll(" ", "---")+"\" onclick=\"drawFilteredDiagram(\'"+gn.getId()+"\',\'"+folders1.getFolder_name().replaceAll(" ", "---")+"\','"+gn.getModelName()+"',\'"+gn.getFilteredDetails().replaceAll("\"", "%%")+"\')\" oncontextmenu=\"on_context_menu_remove_filtered_graph('"+gn.getId()+"',\'"+gn.getModelName().replaceAll(" ", "---")+gn.getId()+"\', \'"+folders1.getFolder_name().replaceAll(" ", "---")+folders1.getId()+"\',\'"+gn.getModelName().replaceAll(" ", "---")+"\',\'"+folders1.getFolder_name().replaceAll(" ", "---")+"\')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/modelImageFiltered.svg\">&nbsp;"+messageSource.getMessage(gn.getModelName(),null,locale)+"</li>";
						}else {
						graphTree+= "<li id=\""+gn.getModelName().replaceAll(" ", "---")+gn.getId()+"\" class=\"model_list "+folders1.getFolder_name().replaceAll(" ", "---")+"\" onclick=\"getDBlist(\'"+gn.getModelName()+"\',\'"+gn.getId()+"\',"+role_details.isGraphUpdate()+",\'"+folders1.getFolder_name().replaceAll(" ", "---")+"\')\" oncontextmenu=\"on_context_menu_remove_graph('"+gn.getId()+"',\'"+gn.getModelName().replaceAll(" ", "---")+gn.getId()+"\', \'"+folders1.getFolder_name().replaceAll(" ", "---")+folders1.getId()+"\',\'"+gn.getModelName().replaceAll(" ", "---")+"\',\'"+folders1.getFolder_name().replaceAll(" ", "---")+"\')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/modelImage.svg\">&nbsp;"+messageSource.getMessage(gn.getModelName(),null,locale)+"</li>";
					}
					}
					else
					{
						if(gn.getIsFiltered().equals("true")){
							graphTree+= "<li id=\""+gn.getModelName().replaceAll(" ", "---")+gn.getId()+"\" class=\"model_list "+folders1.getFolder_name().replaceAll(" ", "---")+"\" onclick=\"drawFilteredDiagram(\'"+gn.getId()+"\',\'"+folders1.getFolder_name().replaceAll(" ", "---")+"\','"+gn.getModelName()+"',\'"+gn.getFilteredDetails().replaceAll("\"", "%%")+"\')\" oncontextmenu=\"on_context_menu_remove_filtered_graph('"+gn.getId()+"',\'"+gn.getModelName().replaceAll(" ", "---")+gn.getId()+"\', \'"+folders1.getFolder_name().replaceAll(" ", "---")+folders1.getId()+"\',\'"+gn.getModelName().replaceAll(" ", "---")+"\',\'"+folders1.getFolder_name().replaceAll(" ", "---")+"\')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/modelImageFiltered.svg\">&nbsp;"+messageSource.getMessage(gn.getModelName(),null,locale)+"</li>";
						}else {
						graphTree+= "<li id=\""+gn.getModelName().replaceAll(" ", "---")+gn.getId()+"\" class=\"model_list "+folders1.getFolder_name().replaceAll(" ", "---")+"\" onclick=\"getDBlist(\'"+gn.getModelName()+"\',\'"+gn.getId()+"\',"+role_details.isGraphUpdate()+", \'"+folders1.getFolder_name().replaceAll(" ", "---")+"\')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/modelImage.svg\">&nbsp;"+messageSource.getMessage(gn.getModelName().replaceAll("\\s+", "_"),null,locale)+"</li>";
					}
						
					}
				}
				for(catalogFiles mn: catalogNames1) {
					if(role_details.isCatalogDelete()==true)
					{
						graphTree += "<li id=\""+mn.getModelName().replaceAll(" ", "---")+mn.getId()+"\" class=\"model_list "+folders1.getFolder_name().replaceAll(" ", "---")+"\" onclick=\"drawCatalogFromXML(\'"+mn.getModelName()+"\',\'"+mn.getId()+"\',\'"+mn.getElementName()+"\',\'"+folders1.getFolder_name().replaceAll(" ", "---")+"\')\" oncontextmenu=\"on_context_menu_remove_catalog_matrix(\'"+mn.getId()+"\',\'"+mn.getModelName().replaceAll(" ", "---")+mn.getId()+"\',\'"+folders1.getFolder_name().replaceAll(" ", "---")+folders1.getId()+"\',\'"+mn.getModelName()+"\',\'"+folders1.getFolder_name().replaceAll(" ", "---")+"\',\'catalog\')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/catalog.svg\">&nbsp;"+mn.getModelName()+"</li>";
					}
					else {
						graphTree += "<li id=\""+mn.getModelName().replaceAll(" ", "---")+mn.getId()+"\" class=\"model_list "+folders1.getFolder_name().replaceAll(" ", "---")+"\" onclick=\"drawCatalogFromXML(\'"+mn.getModelName()+"\',\'"+mn.getId()+"\',\'"+mn.getElementName()+"\',\'"+folders1.getFolder_name().replaceAll(" ", "---")+"\'))\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/catalog.svg\">&nbsp;"+messageSource.getMessage(mn.getModelName().replaceAll("\\s+", "_"),null,locale)+"</li>";
					}
				}
				for(matrixFiles mn: matrixNames1) {
					if(role_details.isCatalogDelete()==true) {
						graphTree += "<li id=\""+mn.getMatrix_name().replaceAll(" ", "---")+mn.getId()+"\" class=\"model_list "+folders1.getFolder_name().replaceAll(" ", "---")+"\" onclick=\"drawMatrixFromXML('"+mn.getMatrix_name()+"','"+mn.getMatrix_element1()+"','"+mn.getMatrix_element2()+"','"+mn.getMatrix_relation()+"','"+mn.getParentID()+"',\'"+folders1.getFolder_name().replaceAll(" ", "---")+"\')\" oncontextmenu=\"on_context_menu_remove_catalog_matrix(\'"+mn.getId()+"\',\'"+mn.getMatrix_name().replaceAll(" ", "---")+mn.getId()+"\',\'"+folders1.getFolder_name().replaceAll(" ", "---")+folders1.getId()+"\',\'"+mn.getMatrix_name()+"\',\'"+folders1.getFolder_name().replaceAll(" ", "---")+"\',\'matrix\')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/matrix.svg\">&nbsp;"+mn.getMatrix_name().replaceAll("---"," ")+"</li>";
					}
					else {
						graphTree += "<li id=\""+mn.getMatrix_name().replaceAll(" ", "---")+mn.getId()+"\" class=\"model_list "+folders1.getFolder_name().replaceAll(" ", "---")+"\" onclick=\"drawMatrixFromXML('"+mn.getMatrix_name()+"','"+mn.getMatrix_element1()+"','"+mn.getMatrix_element2()+"','"+mn.getMatrix_relation()+"','"+mn.getParentID()+"', \'"+folders1.getFolder_name().replaceAll(" ", "---")+"\')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/matrix.svg\">&nbsp;"+messageSource.getMessage(mn.getMatrix_name().replaceAll("---", " "),null,locale)+"</li>";
					}
				}
				for(navigationFiles gn: navigationNames1) {
//					if(role_details.isGraphDelete()==true)
//					{
						graphTree+= "<li id=\""+gn.getNavigationName().replaceAll(" ", "---")+gn.getId()+"\" class=\"model_list "+folders1.getFolder_name().replaceAll(" ", "---")+"\" onclick=\"drawNavigationFromDB(\'"+gn.getNavigationName()+"\',\'"+gn.getId()+"\',"+role_details.isGraphUpdate()+",\'"+folders1.getFolder_name().replaceAll(" ", "---")+"\')\" oncontextmenu=\"on_context_menu_remove_navigation('"+gn.getId()+"',\'"+gn.getNavigationName().replaceAll(" ", "---")+gn.getId()+"\', \'"+folders1.getFolder_name().replaceAll(" ", "---")+folders1.getId()+"\',\'"+gn.getNavigationName().replaceAll(" ", "---")+"\',\'"+folders1.getFolder_name().replace(" ", "---")+"\',\'navigation\')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/navigation.svg\">&nbsp;"+messageSource.getMessage(gn.getNavigationName(),null,locale)+"</li>";
//					}
//					else
//					{
//						graphTree+= "<li id=\""+gn.getNavigationName().replaceAll(" ", "---")+gn.getId()+"\" class=\"model_list "+folders1.getFolder_name().replaceAll(" ", "---")+"\" onclick=\"getDBlist(\'"+gn.getNavigationName()+"\',\'"+gn.getId()+"\',"+role_details.isGraphUpdate()+", \'"+folders1.getFolder_name().replaceAll(" ", "---")+"\')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/modelImage.svg\">&nbsp;"+messageSource.getMessage(gn.getNavigationName().replaceAll("\\s+", "_"),null,locale)+"</li>";
//					}
				}				
				for(timeLineGraph rm: roadMapNames1) {
					if(role_details.isGraphDelete()==true)
					{
//						System.out.println("folderName roadmap: "+folders1.getFolder_name().replaceAll(" ", "---"));
						graphTree += "<li id=\""+rm.getroadmapName().replaceAll(" ", "---")+rm.getId()+"\" class=\"model_list "+folders1.getFolder_name().replaceAll(" ", "---")+"\" onclick=\"getRoadmap(\'"+rm.getroadmapName()+"\',\'"+rm.getId()+"\',\'"+rm.getCompanyName()+"\',\'"+rm.getParentID()+"\', \'"+folders1.getFolder_name().replaceAll(" ", "---")+"\')\" oncontextmenu=\"on_context_menu_remove_roadmap(\'"+rm.getId()+"\',\'"+rm.getroadmapName()+rm.getId()+"\', \'"+folders1.getFolder_name().replaceAll(" ", "---")+folders1.getId()+"\',\'"+rm.getroadmapName()+"\',\'"+rm.getCompanyName()+"\',\'"+rm.getParentID()+"\',\'"+folders1.getFolder_name()+"\')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/road.svg\">&nbsp;"+messageSource.getMessage(rm.getroadmapName(),null,locale)+"</li>";
//						graphTree += "<li id=\""+rm.getroadmapName().replaceAll(" ", "---")+rm.getId()+"\" class=\"model_list"+folders1.getFolder_name().replaceAll(" ", "---")+"\" onclick=\"getRoadmap(\'"+rm.getroadmapName()+"\',\'"+rm.getId()+"\',\'"+rm.getCompanyName()+"\',\'"+rm.getParentID()+"\')\" oncontextmenu=\"on_context_menu_remove_roadmap(\'"+rm.getId()+"\',\'"+rm.getroadmapName()+rm.getId()+"\', \'"+folders1.getFolder_name().replaceAll(" ", "---")+folders1.getId()+"\',\'"+rm.getroadmapName()+"\',\'"+rm.getCompanyName()+"\',\'"+rm.getParentID()+"\',\'"+folders1.getFolder_name()+"\')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/road.svg\">&nbsp;"+messageSource.getMessage(rm.getroadmapName(),null,locale)+"</li>";
					}
					else {
//						System.out.println("subfolder roadmap else loop: ");
//						graphTree += "<li id=\""+rm.getId()+"\" class=\"model_list\" onclick=\"getRoadmap(\'"+rm.getroadmapName()+"\',\'"+rm.getId()+"\',\'"+rm.getCompanyName()+"\',\'"+rm.getParentID()+"\')\" oncontextmenu=\"on_context_menu_remove_roadmap(\'"+rm.getId()+"\',\'"+rm.getroadmapName()+rm.getId()+"\', \'"+folder.getFolder_name()+folder.getId()+"\',\'"+rm.getroadmapName()+"\',\'roadmap\')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/road.svg\">&nbsp;"+messageSource.getMessage(rm.getroadmapName(),null,locale)+"</li>";
//						graphTree += "<li id=\""+rm.getroadmapName().replaceAll(" ", "---")+rm.getId()+"\" class=\"model_list"+folders1.getFolder_name().replaceAll(" ", "---")+"\" onclick=\"getRoadmap(\'"+rm.getroadmapName()+"\',\'"+rm.getId()+"\',\'"+rm.getCompanyName()+"\',\'"+rm.getParentID()+"\')\" oncontextmenu=\"on_context_menu_remove_roadmap(\'"+rm.getId()+"\',\'"+rm.getroadmapName()+rm.getId()+"\', \'"+folders1.getFolder_name().replaceAll(" ", "---")+folders1.getId()+"\',\'"+rm.getroadmapName()+"\',\'"+rm.getCompanyName()+"\',\'"+rm.getParentID()+"\',\'"+folders1.getFolder_name()+"\')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/road.svg\">&nbsp;"+messageSource.getMessage(rm.getroadmapName(),null,locale)+"</li>";
						graphTree += "<li id=\""+rm.getroadmapName().replaceAll(" ", "---")+rm.getId()+"\" class=\"model_list "+folders1.getFolder_name().replaceAll(" ", "---")+"\" onclick=\"getRoadmap(\'"+rm.getroadmapName()+"\',\'"+rm.getId()+"\',\'"+rm.getCompanyName()+"\',\'"+rm.getParentID()+"\', \'"+folders1.getFolder_name().replaceAll(" ", "---")+"\')\" oncontextmenu=\"on_context_menu_remove_roadmap(\'"+rm.getId()+"\',\'"+rm.getroadmapName()+rm.getId()+"\', \'"+folders1.getFolder_name().replaceAll(" ", "---")+folders1.getId()+"\',\'"+rm.getroadmapName()+"\',\'"+rm.getCompanyName()+"\',\'"+rm.getParentID()+"\',\'"+folders1.getFolder_name()+"\')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/road.svg\">&nbsp;"+messageSource.getMessage(rm.getroadmapName(),null,locale)+"</li>";
//						graphTree += "<li id=\""+rm.getroadmapName().replaceAll(" ", "---")+rm.getId()+"\" class=\"model_list\" onclick=\"getRoadmap(\'"+rm.getroadmapName()+"\',\'"+rm.getId()+"\',\'"+rm.getCompanyName()+"\',\'"+rm.getParentID()+"\')\" oncontextmenu=\"on_context_menu_remove_roadmap(\'"+rm.getId()+"\',\'"+rm.getroadmapName()+rm.getId()+"\', \'"+folder.getFolder_name().replaceAll(" ", "---")+folder.getId()+"\',\'"+rm.getroadmapName()+"\',\'"+rm.getCompanyName()+"\',\'"+rm.getParentID()+"\',\'"+folder.getFolder_name()+"\')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/road.svg\">&nbsp;"+messageSource.getMessage(rm.getroadmapName(),null,locale)+"</li>";
					}
				}
				graphTree += "</ul>";
				graphTree += "</li>";
			}
			for(graphFiles gn: graphNames) {
				if(role_details.isGraphDelete()==true) {
					
			        if(gn.getIsFiltered().equals("true")){
			            graphTree+= "<li id=\""+gn.getModelName().replaceAll(" ", "---")+gn.getId()+"\" class=\"model_list\" onclick=\"drawFilteredDiagram('"+gn.getId()+"','"+folder.getFolder_name().replaceAll(" ", "---")+"','"+gn.getModelName()+"','"+gn.getFilteredDetails().replaceAll("\"", "%%")+"')\" oncontextmenu=\"on_context_menu_remove_filtered_graph(\'"+gn.getId()+"\',\'"+gn.getModelName().replaceAll(" ", "---")+gn.getId()+"\', \'"+folder.getFolder_name()+folder.getId()+"\',\'"+gn.getModelName().replaceAll(" ", "---")+"\', '"+folder.getFolder_name().replaceAll(" ", "---")+"' )\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/modelImageFiltered.svg\">&nbsp;"+messageSource.getMessage(gn.getModelName(),null,locale)+"</li>";
			            
			        }else {
					graphTree += "<li id=\""+gn.getModelName().replaceAll(" ", "---")+gn.getId()+"\" class=\"model_list\" onclick=\"getDBlist(\'"+gn.getModelName()+"\',\'"+gn.getId()+"\','"+userRoleStr+"')\" oncontextmenu=\"on_context_menu_remove_graph(\'"+gn.getId()+"\',\'"+gn.getModelName().replaceAll(" ", "---")+gn.getId()+"\', \'"+folder.getFolder_name()+folder.getId()+"\',\'"+gn.getModelName().replaceAll(" ", "---")+"\')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/modelImage.svg\">&nbsp;"+messageSource.getMessage(gn.getModelName(),null,locale)+"</li>";
				}
					
					
				}
				else {
			        if(gn.getIsFiltered().equals("true")){
			            graphTree+= "<li id=\""+gn.getModelName().replaceAll(" ", "---")+gn.getId()+"\" class=\"model_list\" onclick=\"drawFilteredDiagram('"+gn.getId()+"','"+folder.getFolder_name().replaceAll(" ", "---")+"','"+gn.getModelName()+"','"+gn.getFilteredDetails().replaceAll("\"", "%%")+"')\" oncontextmenu=\"on_context_menu_remove_filtered_graph(\'"+gn.getId()+"\',\'"+gn.getModelName().replaceAll(" ", "---")+gn.getId()+"\', \'"+folder.getFolder_name()+folder.getId()+"\',\'"+gn.getModelName().replaceAll(" ", "---")+"', '"+folder.getFolder_name().replaceAll(" ", "---")+"' )\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/modelImageFiltered.svg\">&nbsp;"+messageSource.getMessage(gn.getModelName(),null,locale)+"</li>";
			            
			        }else {
					graphTree += "<li id=\""+gn.getModelName().replaceAll(" ", "---")+gn.getId()+"\" class=\"model_list\" onclick=\"getDBlist(\'"+gn.getModelName()+"\',\'"+gn.getId()+"\','"+userRoleStr+"')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/modelImage.svg\">&nbsp;"+gn.getModelName()+"</li>";
				}
					
					
						
				}
			}
			for(catalogFiles mn: catalogNames) {
				if(role_details.isCatalogDelete()==true) {
					graphTree += "<li id=\""+mn.getModelName().replaceAll(" ", "---")+mn.getId()+"\" class=\"model_list\" onclick=\"drawCatalogFromXML(\'"+mn.getModelName()+"\',\'"+mn.getId()+"\',\'"+mn.getElementName()+"\')\" oncontextmenu=\"on_context_menu_remove_catalog_matrix(\'"+mn.getId()+"\',\'"+mn.getModelName().replaceAll(" ", "---")+mn.getId()+"\',\'"+folder.getFolder_name()+folder.getId()+"\',\'"+mn.getModelName()+"\',"+null+",\'catalog\')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/catalog.svg\">&nbsp;"+mn.getModelName()+"</li>";
				}
				else {
					graphTree += "<li id=\""+mn.getModelName().replaceAll(" ", "---")+mn.getId()+"\" class=\"model_list\" onclick=\"drawCatalogFromXML(\'"+mn.getModelName()+"\',\'"+mn.getId()+"\',\'"+mn.getElementName()+"\')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/catalog.svg\">&nbsp;"+mn.getModelName()+"</li>";
				}
			}
			for(matrixFiles mn: matrixNames) {
				if(role_details.isCatalogDelete()==true) {
					graphTree += "<li id=\""+mn.getMatrix_name().replaceAll(" ", "---")+mn.getId()+"\" class=\"model_list\" onclick=\"drawMatrixFromXML('"+mn.getMatrix_name()+"','"+mn.getMatrix_element1()+"','"+mn.getMatrix_element2()+"','"+mn.getMatrix_relation()+"','"+mn.getParentID()+"')\" oncontextmenu=\"on_context_menu_remove_catalog_matrix(\'"+mn.getId()+"\',\'"+mn.getMatrix_name().replaceAll(" ", "---")+mn.getId()+"\',\'"+folder.getFolder_name()+folder.getId()+"\',\'"+mn.getMatrix_name()+"\',"+null+",\'matrix\')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/matrix.svg\">&nbsp;"+mn.getMatrix_name().replaceAll("---"," ")+"</li>";
				}
				else {
					graphTree += "<li id=\""+mn.getMatrix_name().replaceAll(" ", "---")+mn.getId()+"\" class=\"model_list\" onclick=\"drawMatrixFromXML('"+mn.getMatrix_name()+"','"+mn.getMatrix_element1()+"','"+mn.getMatrix_element2()+"','"+mn.getMatrix_relation()+"','"+mn.getParentID()+"')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/matrix.svg\">&nbsp;"+mn.getMatrix_name().replaceAll("---", " ")+"</li>";
				}
			}
			for(navigationFiles gn: navigationNames) {
//				if(role_details.isGraphDelete()==true) {
					graphTree += "<li id=\""+gn.getNavigationName().replaceAll(" ", "---")+gn.getId()+"\" class=\"model_list\" onclick=\"drawNavigationFromDB(\'"+gn.getNavigationName()+"\',\'"+gn.getId()+"\','"+userRoleStr+"')\" oncontextmenu=\"on_context_menu_remove_navigation(\'"+gn.getId()+"\',\'"+gn.getNavigationName().replaceAll(" ", "---")+gn.getId()+"\', \'"+folder.getFolder_name()+folder.getId()+"\',\'"+gn.getNavigationName().replaceAll(" ", "---")+"\')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/navigation.svg\">&nbsp;"+messageSource.getMessage(gn.getNavigationName(),null,locale)+"</li>";
//				}
//				else {
//					graphTree += "<li id=\""+gn.getNavigationName().replaceAll(" ", "---")+gn.getId()+"\" class=\"model_list\" onclick=\"getDBlist(\'"+gn.getNavigationName()+"\',\'"+gn.getId()+"\','"+userRoleStr+"')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/modelImage.svg\">&nbsp;"+gn.getNavigationName()+"</li>";
//				}
			}		
			for(timeLineGraph rm: roadMapNames) {
				if(role_details.isGraphDelete()==true)
				{
					System.out.println("parent folder roadmap");
					
//				graphTree += "<li id=\""+rm.getId()+"\" class=\"model_list\" onclick=\"getRoadmap(\'"+rm.getroadmapName()+"\',\'"+rm.getId()+"\',\'"+rm.getCompanyName()+"\',\'"+rm.getParentID()+"\')\" oncontextmenu=\"on_context_menu_remove_roadmap(\'"+rm.getId()+"\',\'"+rm.getroadmapName()+rm.getId()+"\', \'"+folder.getFolder_name()+folder.getId()+"\',\'"+rm.getroadmapName()+"\',\'roadmap\')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/road.svg\">&nbsp;"+messageSource.getMessage(rm.getroadmapName(),null,locale)+"</li>";
					graphTree += "<li id=\""+rm.getroadmapName().replaceAll(" ", "---")+rm.getId()+"\" class=\"model_list\" onclick=\"getRoadmap(\'"+rm.getroadmapName()+"\',\'"+rm.getId()+"\',\'"+rm.getCompanyName()+"\',\'"+rm.getParentID()+"\')\" oncontextmenu=\"on_context_menu_remove_roadmap(\'"+rm.getId()+"\',\'"+rm.getroadmapName()+rm.getId()+"\', \'"+folder.getFolder_name().replaceAll(" ", "---")+folder.getId()+"\',\'"+rm.getroadmapName()+"\',\'"+rm.getCompanyName()+"\',\'"+rm.getParentID()+"\',\'"+folder.getFolder_name()+"\')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/road.svg\">&nbsp;"+messageSource.getMessage(rm.getroadmapName(),null,locale)+"</li>";
				}
				else 
				{
					graphTree += "<li id=\""+rm.getroadmapName().replaceAll(" ", "---")+rm.getId()+"\" class=\"model_list\" onclick=\"getRoadmap(\'"+rm.getroadmapName()+"\',\'"+rm.getId()+"\',\'"+rm.getCompanyName()+"\',\'"+rm.getParentID()+"\')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/road.svg\">&nbsp;"+messageSource.getMessage(rm.getroadmapName(),null,locale)+"</li>";
				}
			}
			
			graphTree += "</ul>";
			graphTree += "</li>";
		}
//		
        
		
//		for(String f_key:allForeignKeys) {
//			List<graphFolders> foldersList = enterpriseDAO.getGraphFolders(f_key);
//			for(graphFolders folder:foldersList) {
//				String id= folder.getId();
//				String folderName = folder.getFolder_name();
//				String parentID = folder.getParent_id();
//				
//				
//				if(Integer.parseInt(parentID)!=previousFolderParent) {
//					graphTree+="<ul class=\"nested\">";
//					graphTree+="<li><span class=\"caret\">"+folderName+"</span></li>";
//					
//					graphTree+="</ul></li>";
//					parentIDindex++;
//				}else
//				//graphTree+="<ul class=\"nested\">";
//				graphTree+="<li><span class=\"caret\">"+folderName+"</span>";
//				//graphTree+="</ul>";
//				previousFolderParent= Integer.parseInt(parentID);
//			}
//			System.out.println(foldersList);
//		}
		
		
		graphTree+= "</ul>";
		/*
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			username = userDetail.getUsername();
		}
		List<String> graphNames = enterpriseDAO.getGraphNames(username);
		System.out.println(graphNames);
		String tree = "";
		for (String gn : graphNames) {
				tree+= "<li id=\'"+gn+"\' class=\"model_list\" onclick=\"getDBlist(\'"+gn+"\')\" oncontextmenu=\"on_context_menu_remove_graph('"+gn+"')\"><img draggable=\"false\" alt=\"circle\" width=\"20px\" height=\"20px\" src=\"resources/images/modelImage.svg\">"+gn+"</li>";
		}
		return tree;*/
		byte[] utfBytes = graphTree.getBytes("utf-8");
		return utfBytes;
		//return graphTree;
	}
	
	@RequestMapping(value = "/getRemovedGraphNames")
	public @ResponseBody byte[] getRemovedGraphNames(HttpSession session) throws UnsupportedEncodingException {
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			username = userDetail.getUsername();
		}
		String tree = "";
		String company_name = (String) session.getAttribute("company_name");
		List<graphFolders> foldersList = enterpriseDAO.getGraphFolders("0",username,"1", company_name);
		String ulID = foldersList.get(0).getFolder_name()+foldersList.get(0).getId();
		String parentFolderName = foldersList.get(0).getFolder_name();
		String parentFolderID = foldersList.get(0).getId();
		List<String> folderNamesAdded = new ArrayList<String>();
		List<String> folderNamesAddedIDs = new ArrayList<String>();
		List<graphFiles> graphNames = enterpriseDAO.getGraphRowData(username, company_name);
		List<catalogFiles> catalogDetails = enterpriseDAO.getDeletedCatalogDetails(username);
		List<matrixFiles> matrixDetails = enterpriseDAO.getDeletedMatrixDetails(username);
		List<navigationFiles> navigationDetails = enterpriseDAO.getDeletedNavigationDetails(username);
		
		List<graphFolders> removedFolder = enterpriseDAO.getGraphRemovedFolders(username, company_name);
		List<timeLineGraph> roadmapNames = enterpriseDAO.getRoadmapRowData(username, company_name);
		
		for(graphFolders gf: removedFolder) {
			tree+="<li id=\""+gf.getFolder_name().replaceAll(" ", "---")+gf.getId()+"2\" class=\"model_list "+gf.getFolder_name()+"\" style=\"padding-left: 40px\" oncontextmenu=\"on_context_menu_restore('"+gf.getId()+"', '"+gf.getFolder_name().replaceAll("\\s","---")+gf.getId()+"', '"+gf.getFolder_name()+"','"+ulID+"','folder','"+parentFolderName+"','"+parentFolderID+"');\"><i class=\"fa fa-folder\" aria-hidden=\"true\"></i>&nbsp;"+gf.getFolder_name()+"</li>";
			//tree+="<li id=\""+gf.getFolder_name()+gf.getId()+"2\" class=\"model_list "+gf.getFolder_name()+"\" oncontextmenu=\"on_context_menu_restore('"+gf.getId()+"', '"+gf.getFolder_name()+gf.getId()+"', '"+gf.getFolder_name()+"');\"><i class=\"fa fa-folder\" aria-hidden=\"true\"></i>&nbsp;"+removedFolder.get(0).getFolder_name()+"</li>";
			folderNamesAdded.add(removedFolder.get(0).getFolder_name());
			folderNamesAddedIDs.add(removedFolder.get(0).getId());
		}
		for(graphFiles gf: graphNames) {
	//		List<graphFolders> removedFolder = enterpriseDAO.getGraphRemovedFolders(gf.getParentID());
			List<String> folderName = enterpriseDAO.getRowWithCondition("graphs","folders","folder_name","id",gf.getParentID());
			List<String> folderID = enterpriseDAO.getRowWithCondition("graphs","folders","id","id",gf.getParentID());
			
	//		System.out.println("gf"+gf);
	//		System.out.println("folderName"+folderName);
	//		System.out.println("folderID"+folderID);
	//		if (removedFolder.size() != 0) {
	//			if(!folderNamesAdded.contains(folderName.get(0))) {
			if(!folderNamesAddedIDs.contains(gf.getParentID())) {
				if(gf.getIsFiltered().equals("true")){
					tree+="<li id=\""+gf.getModelName().replaceAll(" ", "---")+gf.getId()+"2\" class=\"model_list\" style=\"padding-left: 40px\" oncontextmenu=\"on_context_menu_restore('"+gf.getId()+"','"+gf.getModelName().replaceAll("\\s","---")+"','"+folderName.get(0)+folderID.get(0)+"','"+gf.getModelName()+gf.getId()+"')\"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/modelImageFiltered.svg\">&nbsp;"+gf.getModelName()+"</li>";
				}else {
					tree+="<li id=\""+gf.getModelName().replaceAll(" ", "---")+gf.getId()+"2\" class=\"model_list\" style=\"padding-left: 40px\" oncontextmenu=\"on_context_menu_restore('"+gf.getId()+"','"+gf.getModelName().replaceAll("\\s","---")+"','"+folderName.get(0)+folderID.get(0)+"','"+gf.getModelName()+gf.getId()+"')\"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/modelImage.svg\">&nbsp;"+gf.getModelName()+"</li>";
				}
			}
	//			}
					
	//		}else {
	//			System.out.println(folderName);
	//			tree+="<li id=\""+gf.getModelName()+gf.getId()+"2\" class=\"model_list\" oncontextmenu=\"on_context_menu_restore('"+gf.getId()+"','"+gf.getModelName()+"','"+folderName.get(0)+folderID.get(0)+"','"+gf.getModelName()+gf.getId()+"')\"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/modelImage.svg\">&nbsp;"+gf.getModelName()+"</li>";
	//		}
	//			if(removedFolder.get(0).getFolder_name().equals(folderName.get(0))) {
	//				tree+="<li>"+removedFolder.get(0).getFolder_name()+"</li>";
	//			}else {
	//				System.out.println(folderName);
	//				tree+="<li id=\""+gf.getModelName()+gf.getId()+"2\" class=\"model_list\" oncontextmenu=\"on_context_menu_restore('"+gf.getId()+"','"+gf.getModelName()+"','"+folderName.get(0)+folderID.get(0)+"','"+gf.getModelName()+gf.getId()+"')\"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/modelImage.svg\">&nbsp;"+gf.getModelName()+"</li>";
	//			}
		}
		for(catalogFiles cf:catalogDetails) {
	//		System.out.println(cf);
			String folderName = enterpriseDAO.getFolderNameFromID(cf.getParentID()).replaceAll("\\s","---");
												//<li id="'+liID+'2" class="model_list '+parentFolder+'file" oncontextmenu="recycle_bin_context_menu_catalog_matrix(\''+modelID+'\', \''+liID+'\',\''+folderName+'\', \''+modelName+'\', \''+parentFolder+'\', \''+catalog_or_matrix+'\');"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/catalog.svg\">&nbsp;'+modelName+'</li>');
									//<li id="oiu162" class="model_list LT---Folder1file					" oncontextmenu="recycle_bin_context_menu_catalog_matrix('16', 'oiu16','LT---Folder120', 'oiu', 'LT---Folder1', 'catalog');"><img style="width:20px; height:20px" draggable="false" src="resources/images/catalog.svg">&nbsp;oiu</li>
			cf.setModelName(cf.getModelName().replaceAll("\\s","---"));
			tree+="<li id=\""+cf.getModelName()+cf.getId()+"2\" class=\"model_list "+folderName+"file\" style=\"padding-left: 40px\" oncontextmenu=\"recycle_bin_context_menu_catalog_matrix(\'"+cf.getId()+"\', \'"+cf.getModelName()+cf.getId()+"\',\'"+folderName+cf.getParentID()+"\', \'"+cf.getModelName().replaceAll("---"," ")+"\', \'"+folderName+"\', \'catalog\');\"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/catalog.svg\">&nbsp;"+cf.getModelName().replaceAll("---"," ")+"</li>";
		}
		
		for(matrixFiles mf:matrixDetails) {
			String folderName = enterpriseDAO.getFolderNameFromID(mf.getParentID()).replaceAll("\\s","---");
			tree+="<li id=\""+mf.getMatrix_name()+mf.getId()+"2\" class=\"model_list "+folderName+"file\" style=\"padding-left: 40px\" oncontextmenu=\"recycle_bin_context_menu_catalog_matrix('"+mf.getId()+"', '"+mf.getMatrix_name()+mf.getId()+"','"+folderName+mf.getParentID()+"', '"+mf.getMatrix_name()+"', '"+folderName+"', 'matrix');\"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/matrix.svg\">&nbsp;"+mf.getMatrix_name().replaceAll("---"," ")+"</li>";
		}
		for(timeLineGraph rm: roadmapNames) {
			List<String> folderName = enterpriseDAO.getRowWithRoadCondition("graphs","folders","folder_name","id",rm.getParentID());
			List<String> folderID = enterpriseDAO.getRowWithRoadCondition("graphs","folders","id","id",rm.getParentID());
			
			tree+="<li id=\""+rm.getroadmapName().replaceAll(" ", "---")+rm.getId()+"2\" class=\"model_list\" style=\"padding-left: 40px\" oncontextmenu=\"on_context_menu_restoreRoadmap('"+rm.getId()+"','"+rm.getroadmapName()+"','"+folderName.get(0)+folderID.get(0)+"','"+rm.getroadmapName()+rm.getId()+"','folder','"+rm.getCompanyName()+"','"+rm.getParentID()+"','"+folderID.get(0)+"')\"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/road.svg\">&nbsp;"+rm.getroadmapName()+"</li>";
	//		tree+="<li id=\""+rm.getroadmapName().replaceAll(" ", "---")+rm.getId()+"2\" class=\"model_list\" oncontextmenu=\"on_context_menu_restore('"+rm.getId()+"','"+rm.getroadmapName()+"','"+folderName.get(0)+folderID.get(0)+"','"+rm.getroadmapName()+rm.getId()+"')\"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/road.svg\">&nbsp;"+rm.getroadmapName()+"</li>";
		}
		
		for(navigationFiles nv:navigationDetails) {
	//		System.out.println(cf);
			String folderName = enterpriseDAO.getFolderNameFromID(nv.getParentID()).replaceAll("\\s","---");
												//<li id="'+liID+'2" class="model_list '+parentFolder+'file" oncontextmenu="recycle_bin_context_menu_catalog_matrix(\''+modelID+'\', \''+liID+'\',\''+folderName+'\', \''+modelName+'\', \''+parentFolder+'\', \''+catalog_or_matrix+'\');"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/catalog.svg\">&nbsp;'+modelName+'</li>');
									//<li id="oiu162" class="model_list LT---Folder1file					" oncontextmenu="recycle_bin_context_menu_catalog_matrix('16', 'oiu16','LT---Folder120', 'oiu', 'LT---Folder1', 'catalog');"><img style="width:20px; height:20px" draggable="false" src="resources/images/catalog.svg">&nbsp;oiu</li>
			nv.setNavigationName(nv.getNavigationName().replaceAll("\\s","---"));
			tree+="<li id=\""+nv.getNavigationName()+nv.getId()+"2\" class=\"model_list "+folderName+"file\" style=\"padding-left: 40px\" oncontextmenu=\"on_context_menu_restore_navigation(\'"+nv.getId()+"\', \'"+nv.getNavigationName().replaceAll("---"," ")+"\',\'"+folderName+nv.getParentID()+"\', \'"+nv.getNavigationName().replaceAll("---"," ")+nv.getId()+"\', \'"+folderName+"\', \'navigation\');\"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/navigation.svg\">&nbsp;"+nv.getNavigationName().replaceAll("---"," ")+"</li>";
		}		
	
		byte[] treeUtfBytes = tree.getBytes("utf-8");
	
		return treeUtfBytes;
	}
	
	
	@RequestMapping(value = "getDeletedTree", method = RequestMethod.GET)
	public @ResponseBody byte[] getDeletedTree(HttpSession session) throws JAXBException, FileNotFoundException, UnsupportedEncodingException {
		String tree = "";
		roleDetails role_details = (roleDetails) session.getAttribute("role_details");
		/////
		ReloadableResourceBundleMessageSource messageSource=new ReloadableResourceBundleMessageSource();
		messageSource.setBasename("classpath:net/lt/eaze/resources/locale/messages");
		messageSource.setDefaultEncoding("UTF-8");
		messageSource.setUseCodeAsDefaultMessage(true);
		Locale locale = LocaleContextHolder.getLocale();
		
		String app_elements = messageSource.getMessage("elements",null,locale);
		String app_relationships = messageSource.getMessage("relationships",null,locale);
		String app_relationship_connectors = messageSource.getMessage("relationship_connectors",null,locale);
		
		List<Element> elementList = unif.getElements();
		tree +="<li tabindex=\"-1\" class=\"\" id=\"lt_element\"><p style=\"margin-bottom:0px;\" class=\"caret\">"+app_elements+"</p>";
		tree +="<ul class=\"nested\" id=\"deletedElements\" style=\"padding-left: 50px\">";
		for (Element e : elementList) {
			String element = e.getElementName();
			String elementIcon = element.replaceAll("\\s+", "-").toLowerCase() + ".svg";
			element = element.replaceAll("\\s+", "_");
			List<String> name = enterpriseDAO.getSelfGeneratedForGivenAttribute(dbName, element,"Name");
			List<String> rowsList = enterpriseDAO.getDeletedRows(dbName, element, name.get(0));
			//System.out.println(rowsList);
			if(rowsList.size()==0)
				continue;
			for(String rl: rowsList) {
				if(role_details.isElementDelete()==true) {
				tree+= "<li id=\""+rl.replaceAll("\\s+", "---").replaceAll("[><!@$%^&)(,.;}?{= +':`\\\\~/]","_")+"removed\"   style=\"cursor:pointer\"  oncontextmenu=\"on_context_menu_restore_obj('"+element+"','"+rl+"')\"><span title=\""+rl+"\" draggable=\"false\" ondragstart=\"drag(event,'"+rl+"','resources/js/examples/editors/images/images1/"+elementIcon+"')\"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/js/examples/editors/images/images1/"+elementIcon+"\" >&nbsp;"+rl+"</span>";
				tree += "</li>";
				}else {
					tree+= "<li id=\""+rl.replaceAll("\\s+", "---").replaceAll("[><!@$%^&)(,.;}?{= +':`\\\\~/]","_")+"removed\"   style=\"cursor:pointer\"><span title=\""+rl+"\" draggable=\"false\" ondragstart=\"drag(event,'"+rl+"','resources/js/examples/editors/images/images1/"+elementIcon+"')\"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/js/examples/editors/images/images1/"+elementIcon+"\" >&nbsp;"+rl+"</span>";
					tree += "</li>";
				}
			}
		}
		tree +="</ul>";
		tree +="</li>";
		
		////Relationship
		tree +="<li tabindex=\"-1\" class=\"layers\" id=\"lt_relationships\"><p style=\"margin-bottom:0px;\" class=\"caret\">"+app_relationships+"</p>";
		tree +="<ul class=\"nested\" id=\"deletedRelationships\" style=\"padding-left: 50px\">";
		List<Relationships> elementAttributesList1 = unif.getRelations();
		//List<String> layers = new ArrayList<String>();
//		System.out.println("getcomplete_tree_relation_elementAttributesList"+ elementAttributesList1);
		for (Relationships rl : elementAttributesList1) {		
			String element = rl.getRelationshipName().replaceAll("\\s+", "_");
			String elementIcon = rl.getRelationshipName().replaceAll("\\s+", "-").toLowerCase() + ".svg";
			
			List<String> name = enterpriseDAO.getSelfGeneratedForGivenAttribute(dbName, element,"Name");
				//List<addRowsModel> rowsList = enterpriseDAO.getRowWithCondition(dbName, element, name.get(0));
				List<String> rowsList = enterpriseDAO.getDeletedRows(dbName, element, name.get(0));
				for(String rl2: rowsList) {
					if(role_details.isRelationshipDelete()==true) {
					tree+= "<li id=\""+rl2.replaceAll("\\s+", "---")+"removed\" class=\""+rl2.replaceAll("\\s+", "---")+"removed\"  style=\"cursor:pointer\" oncontextmenu=\"on_context_menu_restore_obj_relationship('"+element+"','"+rl2+"', '"+elementIcon+"')\"><span title=\""+rl2+"\" draggable=\"false\" ondragstart=\"drag(event,'"+rl2+"','http://localhost:8080/resources/images/nodes.png/nodes.png')\"><img style=\"width:15px; height:15px\" draggable=\"false\" src=\"resources/images/nodes.png\" >&nbsp;"+rl2+"</span>";
					tree += "</li>";
					}else {
						tree+= "<li id=\""+rl2.replaceAll("\\s+", "---")+"removed\" class=\""+rl2.replaceAll("\\s+", "---")+"removed\"  style=\"cursor:pointer\"><span title=\""+rl2+"\" draggable=\"false\" ondragstart=\"drag(event,'"+rl2+"','http://localhost:8080/resources/images/nodes.png/nodes.png')\"><img style=\"width:15px; height:15px\" draggable=\"false\" src=\"resources/images/nodes.png\" >&nbsp;"+rl2+"</span>";
						tree += "</li>";
					}
				}
		}
		tree +="</ul>";
		tree +="</li>";
		
//		/// Relationship_Connector
//		tree +="<li tabindex=\"-1\" class=\"layers\" id=\"lt_relation_connectors\"><p style=\"margin-bottom:0px;\" class=\"caret\">"+app_relationship_connectors+"</p>";
//		tree +="<ul class=\"nested\" id=\"deletedRelationshipConnectors\">";
//		List<Relationship_Connector> elementAttributesList2 = unif.getRelationship_connectors();
//		for (Relationship_Connector rl : elementAttributesList2) {
//			String element = rl.getRelationshipConnectorName().replaceAll("\\s+", "_");
//			String elementIcon = rl.getRelationshipConnectorName().replaceAll("\\s+", "-").toLowerCase() + ".svg";
//			
//			List<String> name = enterpriseDAO.getSelfGeneratedForGivenAttribute(dbName, element,"Name");
//				//List<addRowsModel> rowsList = enterpriseDAO.getRowWithCondition(dbName, element, name.get(0));
//				List<String> rowsList = enterpriseDAO.getDeletedRows(dbName, element, name.get(0));
//				for(String rl2: rowsList) {
//					if(role_details.isConnectorDelete()==true) {
//					tree+= "<li id=\""+rl2.replaceAll("\\s+", "---")+"removed\" class=\""+rl2.replaceAll("\\s+", "---")+"removed\"  style=\"cursor:pointer\" oncontextmenu=\"on_context_menu_restore_obj_relationship_connector('"+element+"','"+rl2+"', '"+elementIcon+"')\"><span title=\""+rl2+"\" draggable=\"false\" ondragstart=\"drag(event,'"+rl2+"','http://localhost:8080/resources/images/nodes.png/nodes.png')\"><img style=\"width:15px; height:15px\" draggable=\"false\" src=\"resources/images/nodes.png\" >&nbsp;"+rl2+"</span>";
//					tree += "</li>";
//					}else {
//						tree+= "<li id=\""+rl2.replaceAll("\\s+", "---")+"removed\" class=\""+rl2.replaceAll("\\s+", "---")+"removed\"  style=\"cursor:pointer\"><span title=\""+rl2+"\" draggable=\"false\" ondragstart=\"drag(event,'"+rl2+"','http://localhost:8080/resources/images/nodes.png/nodes.png')\"><img style=\"width:15px; height:15px\" draggable=\"false\" src=\"resources/images/nodes.png\" >&nbsp;"+rl2+"</span>";
//				tree += "</li>";
//		}
//				}
//		}
////		for (Relationship_Connector rl : elementAttributesList2) {
////				tree+= "<li style=\"cursor:pointer\"><span title=\""+rl.getRelationshipConnectorName()+"\" draggable=\"true\" ><img style=\"width:15px; height:15px\" draggable=\"false\" src=\"resources/images/teamwork.png\" >&nbsp;"+rl.getRelationshipConnectorName()+"</span>";
////				tree += "</li>";
////		}
//		tree +="</ul>";
//		tree +="</li>";
		
		/////
//		return tree;
		byte[] utfBytes = tree.getBytes("utf-8");
		return utfBytes;
	}

	
	@RequestMapping(value = "getDeletedTreeForMypage", method = RequestMethod.GET)
	public @ResponseBody byte[] getDeletedTreeForMypage(HttpSession session) throws JAXBException, FileNotFoundException, UnsupportedEncodingException {
		String tree = "";
		String username = "";
		Collection<? extends GrantedAuthority> userRole = null;
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			userRole = userDetail.getAuthorities();
			username = userDetail.getUsername();
			JAXBContext context = JAXBContext.newInstance(net.lt.eaze.model_metamodel2.Schema.class);
			String path = session.getServletContext().getRealPath("/");
			unif = (net.lt.eaze.model_metamodel2.Schema) session.getAttribute("unif");
			dbName = unif.getDbName();
		}
		roleDetails role_details = (roleDetails) session.getAttribute("role_details");
		/////
		ReloadableResourceBundleMessageSource messageSource=new ReloadableResourceBundleMessageSource();
		messageSource.setBasename("classpath:net/lt/eaze/resources/locale/messages");
		messageSource.setDefaultEncoding("UTF-8");
		messageSource.setUseCodeAsDefaultMessage(true);
		Locale locale = LocaleContextHolder.getLocale();
		
		String app_elements = messageSource.getMessage("elements",null,locale);
		String app_relationships = messageSource.getMessage("relationships",null,locale);
		String app_relationship_connectors = messageSource.getMessage("relationship_connectors",null,locale);
		
		List<Element> elementList = unif.getElements();
		tree +="<li tabindex=\"-1\" class=\"\" id=\"lt_element_mypage\"><p style=\"margin-bottom:0px;\" class=\"caret\">"+app_elements+"</p>";
		tree +="<ul class=\"nested\" id=\"deletedElementsMyPage\" style=\"padding-left: 50px\">";
		for (Element e : elementList) {
			String element = e.getElementName();
			String elementIcon = element.replaceAll("\\s+", "-").toLowerCase() + ".svg";
			element = element.replaceAll("\\s+", "_");
			List<String> name = enterpriseDAO.getSelfGeneratedForGivenAttribute(dbName, element,"Name");
			List<String> rowsList = enterpriseDAO.getDeletedRowsForMyPage(dbName, element, name.get(0), username);
			if(rowsList.size()==0)
				continue;
			for(String rl: rowsList) {
				String id = rl.replaceAll("\\s+", "---").replaceAll("[><!@$%^&)(,.;}?{= +':`\\\\~/]","_")+"removed";
				if(role_details.isElementDelete()==true) {
					tree+= "<li id=\""+id+"\"   style=\"cursor:pointer\"  oncontextmenu=\"on_context_menu_restore_obj('"+element+"','"+rl+"')\"><span title=\""+rl+"\" draggable=\"false\" ondragstart=\"drag(event,'"+rl+"','resources/js/examples/editors/images/images1/"+elementIcon+"')\"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/js/examples/editors/images/images1/"+elementIcon+"\" >&nbsp;"+rl+"</span>";
					tree += "</li>";
				}else {
					tree+= "<li id=\""+id+"\"   style=\"cursor:pointer\"><span title=\""+rl+"\" draggable=\"false\" ondragstart=\"drag(event,'"+rl+"','resources/js/examples/editors/images/images1/"+elementIcon+"')\"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/js/examples/editors/images/images1/"+elementIcon+"\" >&nbsp;"+rl+"</span>";
					tree += "</li>";
				}
			}
		}
		tree +="</ul>";
		tree +="</li>";
		
		////Relationship
		tree +="<li tabindex=\"-1\" class=\"layers\" id=\"lt_relationships_mypage\"><p style=\"margin-bottom:0px;\" class=\"caret\">"+app_relationships+"</p>";
		tree +="<ul class=\"nested\" id=\"deletedRelationshipsMyPage\" style=\"padding-left: 50px\">";
		List<Relationships> elementAttributesList1 = unif.getRelations();
		for (Relationships rl : elementAttributesList1) {		
			String element = rl.getRelationshipName().replaceAll("\\s+", "_");
			String elementIcon = rl.getRelationshipName().replaceAll("\\s+", "-").toLowerCase() + ".svg";
			
			List<String> name = enterpriseDAO.getSelfGeneratedForGivenAttribute(dbName, element,"Name");
				List<String> rowsList = enterpriseDAO.getDeletedRowsForMyPage(dbName, element, name.get(0), username);
				for(String rl2: rowsList) {
					
					String id =  rl2.replaceAll("\\s+", "---").replaceAll("[><!@$%^&)(,.;}?{= +':`\\\\~/]","_")+"removed";
					
					if(role_details.isRelationshipDelete()==true) {
						tree+= "<li id=\""+id+"\" class=\""+rl2.replaceAll("\\s+", "---")+"removed\"  style=\"cursor:pointer\" oncontextmenu=\"on_context_menu_restore_obj_relationship('"+element+"','"+rl2+"', '"+elementIcon+"')\"><span title=\""+rl2+"\" draggable=\"false\" ondragstart=\"drag(event,'"+rl2+"','http://localhost:8080/resources/images/nodes.png/nodes.png')\"><img style=\"width:15px; height:15px\" draggable=\"false\" src=\"resources/images/nodes.png\" >&nbsp;"+rl2+"</span>";
						tree += "</li>";
					}else {
						tree+= "<li id=\""+id+"\" class=\""+rl2.replaceAll("\\s+", "---")+"removed\"  style=\"cursor:pointer\"><span title=\""+rl2+"\" draggable=\"false\" ondragstart=\"drag(event,'"+rl2+"','http://localhost:8080/resources/images/nodes.png/nodes.png')\"><img style=\"width:15px; height:15px\" draggable=\"false\" src=\"resources/images/nodes.png\" >&nbsp;"+rl2+"</span>";
						tree += "</li>";
					}
				}
		}
		tree +="</ul>";
		tree +="</li>";
		
		byte[] utfBytes = tree.getBytes("utf-8");
		return utfBytes;
	}

	@RequestMapping(value = "getCompleteTree", method = RequestMethod.GET)
	public @ResponseBody byte[] getCompleteTree(HttpSession session) throws JAXBException, FileNotFoundException, UnsupportedEncodingException {
		String tree = "";
		roleDetails role_details = (roleDetails) session.getAttribute("role_details");
//		System.out.println("\n\n\nrole_details: "+role_details.isElementCreate()+"\n\n\n");
		
		ReloadableResourceBundleMessageSource messageSource=new ReloadableResourceBundleMessageSource();
		messageSource.setBasename("classpath:net/lt/eaze/resources/locale/messages");
		messageSource.setDefaultEncoding("UTF-8");
		messageSource.setUseCodeAsDefaultMessage(true);
		Locale locale = LocaleContextHolder.getLocale();

			
		String username = "";
		Collection<? extends GrantedAuthority> userRole = null;
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
//			System.out.println(userDetail);
			userRole = userDetail.getAuthorities();
			username = userDetail.getUsername();
			JAXBContext context = JAXBContext.newInstance(net.lt.eaze.model_metamodel2.Schema.class);
			String path = session.getServletContext().getRealPath("/");
			unif = (net.lt.eaze.model_metamodel2.Schema) session.getAttribute("unif");
			dbName = unif.getDbName();
		}

		List<Element> elementList = unif.getElements();
		List<Element_Attributes> elementAttributesList = unif.getElement_attributes();
		List<String> layers = new ArrayList<String>();
		List<String> elementNamesList = new ArrayList<String>();
		for (Element e : elementList) {
			elementNamesList.add("'"+e.getElementName().replaceAll("\\s+", "_")+"'");
			String layer = e.getElementLayer();
			if (!layers.contains(layer)) {
				layers.add(layer);
			}
		}
		HashMap<String, String> selfGeneratedValueForTypeAllElements = enterpriseDAO.getSelfGeneratedForAllAttributes(dbName,elementNamesList, "Type");
		// System.out.println("selfGeneratedValueForTyp1e:" +selfGeneratedValueForTypeAllElements);
		// System.out.println("length: " +selfGeneratedValueForTypeAllElements.size());
		
		String app_elements = messageSource.getMessage("elements",null,locale);
		String app_relationships = messageSource.getMessage("relationships",null,locale);
		String app_relationship_connectors = messageSource.getMessage("relationship_connectors",null,locale);
		
		tree +="<li tabindex=\"-1\" class=\"layers\" id=\"lt_element\"><p style=\"margin-bottom:0px;\"  class=\"caret\">"+app_elements+"</p>";
		tree +="<ul class=\"nested\" id=\"\">";
		int element_no = 1;
		int queryCount = 0;
		int specificQueryType = 0;
		for (String l1 : layers) {
			tree += "<li tabindex=\"-1\" class=\"layers\"><p style=\"margin-bottom:0px;\" title=\""+messageSource.getMessage(l1.replaceAll("\\s+", "_"),null,locale)+"\" class=\"caret\">" + messageSource.getMessage(l1.replaceAll("\\s+", "_"),null,locale) + "</p>";
			tree += "<ul id=\"" + l1.replaceAll("\\s+", "_") + "\" class=\"nested\">";
			for (Element e : elementList) {
				if (l1.equals(e.getElementLayer())) {
					boolean typeExists = false;
					String element = e.getElementName();
					String elementIcon = element.replaceAll("\\s+", "-").toLowerCase() + ".svg";
					String types = "";
					for (Element_Attributes ea : elementAttributesList) {
						if (element.equals(ea.getConceptName()) && ea.getAttrributeName().equals("Type")) {
							typeExists = true;
							if (ea.getAllowableValues() == null) {
								types = "Other";
							} else {
								types = ea.getAllowableValues();
								if (!types.contains("Other"))
									types += ";Other";
							}
						}
					}
					if(typeExists == true) {
						tree += "<li tabindex=\"-1\" class=\"elements\"><p style=\"margin-bottom:0px;\" title=\""+messageSource.getMessage(element.replaceAll("\\s+", "_"),null,locale)+"\" class=\"caret\">" + messageSource.getMessage(element.replaceAll("\\s+", "_"),null,locale) + "</p>";
						tree += "<ul id=\"" + element.replaceAll("\\s+", "_") + "\" class=\"nested\">";
					}else {
						if(role_details.isElementCreate()==true)
							tree += "<li tabindex=\"-1\" class=\"elements\"><p style=\"margin-bottom:0px;\" title=\""+messageSource.getMessage(element.replaceAll("\\s+", "_"),null,locale)+"\" class=\"caret\" oncontextmenu=\"on_context_menu('" + element + "')\">" + messageSource.getMessage(element.replaceAll("\\s+", "_"),null,locale) + "</p>";
						else
							tree += "<li tabindex=\"-1\" class=\"elements\"><p style=\"margin-bottom:0px;\" title=\""+messageSource.getMessage(element.replaceAll("\\s+", "_"),null,locale)+"\" class=\"caret\">" + element + "</p>";
						tree += "<ul id=\"" + element.replaceAll("\\s+", "_") + "\" class=\"nested\">";
					}

					
					String[] typesList = types.split(";");
					element = element.replaceAll("\\s+", "_");
					String name = "ATT_01";
					if(typeExists == false) {
						List<String> rowsList = enterpriseDAO.getRows1(dbName, element, name);
						queryCount++;
						for(String rl: rowsList) {
							if(role_details.isElementDelete()==true)
								tree+= "<li id=\""+rl.replaceAll("\\s+", "---").replaceAll("[><!@$%^&)(,.;}?{= +':`\\\\~/]","_")+"\" class=\"objectlist\"  style=\"cursor:pointer\" onclick=\"showData(\'"+element+"\',\'"+rl+"\')\" oncontextmenu=\"on_context_menu_remove('"+element+"','"+rl+"', 'deletedElements')\"><p style=\"margin-bottom:0px; min-width:min-content;\" title=\""+rl+"\" draggable=\"true\" ondragstart=\"drag(event,'"+rl+"','resources/js/examples/editors/images/images1/"+elementIcon+"')\"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/js/examples/editors/images/images1/"+elementIcon+"\" >&nbsp;"+messageSource.getMessage(rl.replaceAll("\\s+", "_"),null,locale)+"</p>";
							else
								tree+= "<li id=\""+rl.replaceAll("\\s+", "---").replaceAll("[><!@$%^&)(,.;}?{= +':`\\\\~/]","_")+"\"  class=\"objectlist\" style=\"cursor:pointer\" onclick=\"showData(\'"+element+"\',\'"+rl+"\')\"><p style=\"margin-bottom:0px; min-width:min-content;\" title=\""+rl+"\" draggable=\"true\" ondragstart=\"drag(event,'"+rl+"','resources/js/examples/editors/images/images1/"+elementIcon+"')\"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/js/examples/editors/images/images1/"+elementIcon+"\" >&nbsp;"+messageSource.getMessage(rl.replaceAll("\\s+", "_"),null,locale)+"</p>";
							tree += "</li>";
						}
					}
					else {
						String selfGeneratedValueForType =  selfGeneratedValueForTypeAllElements.get(element);
						HashMap<String, List<String>> rowsMap = enterpriseDAO.getRowsWithTypes(dbName, element, name,selfGeneratedValueForType);
						
						// System.out.println("Elapsed  rowsMap Time: "+ Duration.between(inst_old, inst_old2).toString());
						queryCount++;
						for (String tl : typesList) {
							
							if (!tl.equals("Null")) {
								if(role_details.isElementCreate()==true)
									tree += "<li  tabindex=\"-1\" class=\"sub_elements\" ><p style=\"margin-bottom:0px;\" title=\""+messageSource.getMessage(tl.replaceAll("\\s+", "_"),null,locale)+"\" class=\"caret\" oncontextmenu=\"on_context_menu('" + element + "','" + tl + "')\">"+messageSource.getMessage(tl.replaceAll("\\s+", "_"),null,locale)+"</p>";
								else
									tree += "<li  tabindex=\"-1\" class=\"sub_elements\" ><p style=\"margin-bottom:0px;\" title=\""+messageSource.getMessage(tl.replaceAll("\\s+", "_"),null,locale)+"\" class=\"caret\">"+messageSource.getMessage(tl.replaceAll("\\s+", "_"),null,locale)+"</p>";
								tree += "<ul id=\""+tl.replaceAll("\\s+", "_")+"_"+""+element+"\" class=\"nested\">";
								List<String> rowValues = new ArrayList<String>();
									if( (tl.equals("Others") || tl.equals("Other") )) {
										if(rowsMap.get("Null")!=null)
											rowValues.addAll(rowsMap.get("Null"));
										
										if(rowsMap.get("Others")!=null)
										rowValues.addAll(rowsMap.get("Others"));
										
										if(rowsMap.get("Other")!=null)
											rowValues.addAll(rowsMap.get("Other"));
										
									}else {
										rowValues = rowsMap.get(tl);
									}
									if(rowValues != null) {
										for (String rl : rowValues) {
											if(role_details.isElementDelete()==true)
												tree+= "<li id=\""+rl.replaceAll("\\s+", "---").replaceAll("[><!@$%^&)(,.;}?{= +':`\\\\~/]","_")+"\"  class=\""+tl.replaceAll("\\s+", "_")+" objectlist\" style=\"cursor:pointer\" onclick=\"showData(\'"+element+"\',\'"+rl+"\')\" oncontextmenu=\"on_context_menu_remove('"+element+"','"+rl+"', 'deletedElements')\"><p style=\"margin-bottom:0px; min-width:min-content;\" title=\""+rl+"\" draggable=\"true\" ondragstart=\"drag(event,'"+rl+"','resources/js/examples/editors/images/images1/"+elementIcon+"')\"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/js/examples/editors/images/images1/"+elementIcon+"\" >&nbsp;"+rl+"</p>";
											else
												tree+= "<li id=\""+rl.replaceAll("\\s+", "---").replaceAll("[><!@$%^&)(,.;}?{= +':`\\\\~/]","_")+"\"  class=\""+tl.replaceAll("\\s+", "_")+" objectlist\" style=\"cursor:pointer\" onclick=\"showData(\'"+element+"\',\'"+rl+"\')\"><p style=\"margin-bottom:0px; min-width:min-content;\" title=\""+rl+"\" draggable=\"true\" ondragstart=\"drag(event,'"+rl+"','resources/js/examples/editors/images/images1/"+elementIcon+"')\"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/js/examples/editors/images/images1/"+elementIcon+"\" >&nbsp;"+messageSource.getMessage(rl.replaceAll("\\s+", "_"),null,locale)+"</p>";
											tree += "</li>";
										}
									}
								tree += "</ul>";
								tree += "</li>";
							}
						}
					}

					tree += "</ul>";
					tree += "</li>";
				}
			}
			tree += "</ul>";
			tree += "</li>";
		}
		tree +="</ul>";
		tree +="</li>";
		
		tree +="<li tabindex=\"-1\" class=\"layers\" id=\"lt_relationships\"><p style=\"margin-bottom:0px;\" class=\"caret\">"+app_relationships+"</p>";
		tree +="<ul class=\"nested\" id=\"\">";
		List<Relationships> elementAttributesList1 = unif.getRelations();
		//List<String> layers = new ArrayList<String>();
		for (Relationships rl : elementAttributesList1) {

			tree+= "<li id=\""+rl.getRelationshipName().replaceAll("\\s+", "_")+"\" style=\"cursor:pointer\"><p style=\"margin-bottom:0px;\" title=\""+messageSource.getMessage(rl.getRelationshipName().replaceAll("\\s+", "_"),null,locale)+"\" draggable=\"false\" class=\"caret\" >&nbsp;"+messageSource.getMessage(rl.getRelationshipName().replaceAll("\\s+", "_"),null,locale)+"</p>";
			tree += "<ul id=\"" + rl.getRelationshipName().replaceAll("\\s+", "_") + "\" class=\"nested " + rl.getRelationshipName().replaceAll("\\s+", "_") + "\">";
				
			String element = rl.getRelationshipName().replaceAll("\\s+", "_");
			String elementIcon = rl.getRelationshipName().replaceAll("\\s+", "-").toLowerCase() + ".svg";
			
			String name = "ATT_01";
				List<String> rowsList = enterpriseDAO.getRows1(dbName, element, name);
				queryCount++;
				for(String rl2: rowsList) {
					if(role_details.isRelationshipDelete()==true)
						tree+= "<li id=\""+rl2.replaceAll("\\s+", "---")+"\"   style=\"cursor:pointer\" onclick=\"showData(\'"+element+"\',\'"+rl2+"\')\" oncontextmenu=\"on_context_menu_remove_relationship('"+element+"','"+rl2+"', 'deletedRelationships')\"><p style=\"margin-bottom:0px;  min-width:min-content;\" title=\""+rl2+"\" draggable=\"false\" class=\"objectlist\" ondragstart=\"drag(event,'"+rl2+"','http://localhost:8080/resources/images/nodes.png/nodes.png')\"><img style=\"width:15px; height:15px\" draggable=\"false\" src=\"resources/images/nodes.png\" >&nbsp;"+messageSource.getMessage(rl2.replaceAll("\\s+", "_"),null,locale)+"</p>";
					else
						tree+= "<li id=\""+rl2.replaceAll("\\s+", "---")+"\"   style=\"cursor:pointer\" onclick=\"showData(\'"+element+"\',\'"+rl2+"\')\"><p style=\"margin-bottom:0px; min-width:min-content;\" title=\""+rl2+"\" class=\"objectlist\" draggable=\"false\" ondragstart=\"drag(event,'"+rl2+"','http://localhost:8080/resources/images/nodes.png/nodes.png')\"><img style=\"width:15px; height:15px\" draggable=\"false\" src=\"resources/images/nodes.png\" >&nbsp;"+messageSource.getMessage(rl2.replaceAll("\\s+", "_"),null,locale)+"</p>";
					tree += "</li>";
				}
			tree += "</ul>";
			tree += "</li>";
			
		}
		tree +="</ul>";
		tree +="</li>";
		
		List<Relationship_Connector> elementAttributesList2 = unif.getRelationship_connectors();
		if(elementAttributesList2.size()>0) {
		tree +="<li tabindex=\"-1\" class=\"layers\" id=\"lt_relation_connectors\"><p style=\"margin-bottom:0px;\" class=\"caret\">"+app_relationship_connectors+"</p>";
		tree +="<ul class=\"nested\" id=\"\">";
			
		
		for (Relationship_Connector rl1 : elementAttributesList2) {
			String element = rl1.getRelationshipConnectorName();
			
			tree+= "<li id=\""+rl1.getRelationshipConnectorName().replaceAll("\\s+", "_")+"\" style=\"cursor:pointer\"><p style=\"margin-bottom:0px;\" title=\""+messageSource.getMessage(rl1.getRelationshipConnectorName().replaceAll("\\s+", "_"),null,locale)+"\"  draggable=\"true\" class=\"caret\" >&nbsp;"+messageSource.getMessage(rl1.getRelationshipConnectorName().replaceAll("\\s+", "_"),null,locale)+"</p>"; //oncontextmenu=\"on_context_menu('" + element + "')\"
			tree += "<ul id=\"" + rl1.getRelationshipConnectorName().replaceAll("\\s+", "_") + "\" class=\"nested " + rl1.getRelationshipConnectorName().replaceAll("\\s+", "_") + "\">";
				
			element = element.replaceAll("\\s+", "_");
			String elementIcon = rl1.getRelationshipConnectorName().replaceAll("\\s+", "-").toLowerCase() + ".svg";
			
//			List<String> name = enterpriseDAO.getSelfGeneratedForGivenAttribute(dbName, element,"Name");
			String name = "ATT_01";
				//List<addRowsModel> rowsList = enterpriseDAO.getRowWithCondition(dbName, element, name.get(0));
				List<String> rowsList = enterpriseDAO.getRows1(dbName, element, name);
				queryCount++;
				for(String rl3: rowsList) {
					if(role_details.isConnectorDelete()==true)
						tree+= "<li id=\""+rl3.replaceAll("\\s+", "---")+"\"   style=\"cursor:pointer\" onclick=\"showData(\'"+element+"\',\'"+rl3+"\')\" oncontextmenu=\"on_context_menu_remove_relationship_connector('"+element+"','"+rl3+"', 'deletedRelationshipConnectors')\"><p style=\"margin-bottom:0px; min-width:min-content;\" title=\""+rl3+"\" class=\"caret\" draggable=\"true\" ondragstart=\"drag(event,'"+rl3+"','http://localhost:8080/resources/images/nodes.png/teamwork.png')\"><img style=\"width:15px; height:15px\" draggable=\"false\" src=\"resources/images/nodes.png\" >&nbsp;"+messageSource.getMessage(rl3.replaceAll("\\s+", "_"),null,locale)+"</p>";
					else
						tree+= "<li id=\""+rl3.replaceAll("\\s+", "---")+"\"   style=\"cursor:pointer\" onclick=\"showData(\'"+element+"\',\'"+rl3+"\')\"><p style=\"margin-bottom:0px; min-width:min-content;\" title=\""+rl3+"\" class=\"caret\" draggable=\"true\" ondragstart=\"drag(event,'"+rl3+"','http://localhost:8080/resources/images/nodes.png/teamwork.png')\"><img style=\"width:15px; height:15px\" draggable=\"false\" src=\"resources/images/nodes.png\" >&nbsp;"+messageSource.getMessage(rl3.replaceAll("\\s+", "_"),null,locale)+"</p>";
					tree += "</li>";
				}
			
				//tree+= "<li style=\"cursor:pointer\"><span title=\""+rl.getRelationshipName().replaceAll("\\s+", "_")+"\" draggable=\"true\" ><img style=\"width:15px; height:15px\" draggable=\"false\" src=\"resources/images/nodes.png\" >&nbsp;"+rl.getRelationshipName()+"</span>";	
				//tree += "</li>";
			
			tree += "</ul>";
			tree += "</li>";
		}
		tree +="</ul>";
		tree +="</li>";
		}
		
//		return tree;
		//System.out.println("queryCount: "+queryCount);
		//System.out.println("loopCount: "+specificQueryType);
		byte[] utfBytes = tree.getBytes("utf-8");
		return utfBytes;
	}

	
	
	@RequestMapping(value = "getCompleteTreeForMyPage", method = RequestMethod.GET)
	public @ResponseBody byte[] getCompleteTreeForMyPage(HttpSession session) throws JAXBException, FileNotFoundException, UnsupportedEncodingException {
		String tree = "";
		roleDetails role_details = (roleDetails) session.getAttribute("role_details");
//		System.out.println("\n\n\nrole_details: "+role_details.isElementCreate()+"\n\n\n");
		
		ReloadableResourceBundleMessageSource messageSource=new ReloadableResourceBundleMessageSource();
		messageSource.setBasename("classpath:net/lt/eaze/resources/locale/messages");
		messageSource.setDefaultEncoding("UTF-8");
		messageSource.setUseCodeAsDefaultMessage(true);
		Locale locale = LocaleContextHolder.getLocale();

			
		String username = "";
		Collection<? extends GrantedAuthority> userRole = null;
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
//			System.out.println(userDetail);
			userRole = userDetail.getAuthorities();
			username = userDetail.getUsername();
			JAXBContext context = JAXBContext.newInstance(net.lt.eaze.model_metamodel2.Schema.class);
			String path = session.getServletContext().getRealPath("/");
			unif = (net.lt.eaze.model_metamodel2.Schema) session.getAttribute("unif");
			dbName = unif.getDbName();
		}

		List<Element> elementList = unif.getElements();
		List<Element_Attributes> elementAttributesList = unif.getElement_attributes();
		List<String> layers = new ArrayList<String>();
		List<String> elementNamesList = new ArrayList<String>();
		for (Element e : elementList) {
			elementNamesList.add("'"+e.getElementName().replaceAll("\\s+", "_")+"'");
			String layer = e.getElementLayer();
			if (!layers.contains(layer)) {
				layers.add(layer);
			}
		}
		HashMap<String, String> selfGeneratedValueForTypeAllElements = enterpriseDAO.getSelfGeneratedForAllAttributes(dbName,elementNamesList, "Type");
		// System.out.println("selfGeneratedValueForTyp1e:" +selfGeneratedValueForTypeAllElements);
		// System.out.println("length: " +selfGeneratedValueForTypeAllElements.size());
		
		String app_elements = messageSource.getMessage("elements",null,locale);
		String app_relationships = messageSource.getMessage("relationships",null,locale);
		String app_relationship_connectors = messageSource.getMessage("relationship_connectors",null,locale);
		
		tree +="<li tabindex=\"-1\" class=\"layers\" id=\"lt_element_mypage\"><p style=\"margin-bottom:0px; width:max-content; min-width: 100%;\"  class=\"caret\">"+app_elements+"</p>";
		tree +="<ul class=\"nested\" id=\"\">";
		int element_no = 1;
		int queryCount = 0;
		int specificQueryType = 0;
		for (String l1 : layers) {
			tree += "<li tabindex=\"-1\" class=\"layers\"><p style=\"margin-bottom:0px;\" title=\""+messageSource.getMessage(l1.replaceAll("\\s+", "_"),null,locale)+"\" class=\"caret\">" + messageSource.getMessage(l1.replaceAll("\\s+", "_"),null,locale) + "</p>";
			tree += "<ul id=\"" + l1.replaceAll("\\s+", "_") + "\" class=\"nested\">";
			for (Element e : elementList) {
				if (l1.equals(e.getElementLayer())) {
					boolean typeExists = false;
					String element = e.getElementName();
					String elementIcon = element.replaceAll("\\s+", "-").toLowerCase() + ".svg";
					String types = "";
					for (Element_Attributes ea : elementAttributesList) {
						if (element.equals(ea.getConceptName()) && ea.getAttrributeName().equals("Type")) {
							typeExists = true;
							if (ea.getAllowableValues() == null) {
								types = "Other";
							} else {
								types = ea.getAllowableValues();
								if (!types.contains("Other"))
									types += ";Other";
							}
						}
					}
					if(typeExists == true) {
						tree += "<li tabindex=\"-1\" class=\"elements\"><p style=\"margin-bottom:0px;\" title=\""+messageSource.getMessage(element.replaceAll("\\s+", "_"),null,locale)+"\" class=\"caret\">" + messageSource.getMessage(element.replaceAll("\\s+", "_"),null,locale) + "</p>";
						tree += "<ul id=\"" + element.replaceAll("\\s+", "_") + "\" class=\"nested\" style=\"margin-bottom:0px;\" >";
					}else {
						if(role_details.isElementCreate()==true)
							tree += "<li tabindex=\"-1\" class=\"elements\"><p style=\"margin-bottom:0px;\" title=\""+messageSource.getMessage(element.replaceAll("\\s+", "_"),null,locale)+"\" class=\"caret\" oncontextmenu=\"on_context_menu_myPage_object('" + element + "')\">" + messageSource.getMessage(element.replaceAll("\\s+", "_"),null,locale) + "</p>";
						else
							tree += "<li tabindex=\"-1\" class=\"elements\"><p style=\"margin-bottom:0px;\" title=\""+messageSource.getMessage(element.replaceAll("\\s+", "_"),null,locale)+"\" class=\"caret\">" + messageSource.getMessage(element.replaceAll("\\s+", "_"),null,locale) + "</p>";
						tree += "<ul id=\"" + element.replaceAll("\\s+", "_") + "\" class=\"nested\">";
					}

					
					String[] typesList = types.split(";");
					element = element.replaceAll("\\s+", "_");
					String name = "ATT_01";
					if(typeExists == false) {
						List<String> rowsList = enterpriseDAO.getTreeRowsForMyPage(dbName, element, name, username);////////////////////
						queryCount++;
						for(String rl: rowsList) {
							
							String id = rl.replaceAll("\\s+", "---").replaceAll("[><!@$%^&)(,.;}?{= +':`\\\\~/]","_")+"mypage";
							
							if(role_details.isElementDelete()==true)
								tree+= "<li id=\""+id+"\" class=\"myPageObjectlist\"  style=\"cursor:pointer\" onclick=\"showDataForMyPage(\'"+element+"\',\'"+rl+"\')\" oncontextmenu=\"on_context_menu_remove('"+element+"','"+rl+"', 'deletedElements')\"><p style=\"margin-bottom:0px; min-width:min-content;\" title=\""+rl+"\" draggable=\"true\" ondragstart=\"drag(event,'"+rl+"','resources/js/examples/editors/images/images1/"+elementIcon+"')\"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/js/examples/editors/images/images1/"+elementIcon+"\" >&nbsp;"+messageSource.getMessage(rl.replaceAll("\\s+", "_"),null,locale)+"</p>";
							else
								tree+= "<li id=\""+id+"\"  class=\"myPageObjectlist\" style=\"cursor:pointer\" onclick=\"showDataForMyPage(\'"+element+"\',\'"+rl+"\')\"><p style=\"margin-bottom:0px; min-width:min-content;\" title=\""+rl+"\" draggable=\"true\" ondragstart=\"drag(event,'"+rl+"','resources/js/examples/editors/images/images1/"+elementIcon+"')\"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/js/examples/editors/images/images1/"+elementIcon+"\" >&nbsp;"+messageSource.getMessage(rl.replaceAll("\\s+", "_"),null,locale)+"</p>";
							tree += "</li>";
						}
					}
					else {
						String selfGeneratedValueForType =  selfGeneratedValueForTypeAllElements.get(element);
						HashMap<String, List<String>> rowsMap = enterpriseDAO.getRowsWithTypesForMypage(dbName, element, name,selfGeneratedValueForType, username); ////////////////////
						
						// System.out.println("Elapsed  rowsMap Time: "+ Duration.between(inst_old, inst_old2).toString());
						queryCount++;
						for (String tl : typesList) {
							
							if (!tl.equals("Null")) {
								if(role_details.isElementCreate()==true)
									tree += "<li  tabindex=\"-1\" class=\"sub_elements\" ><p style=\"margin-bottom:0px;\" title=\""+messageSource.getMessage(tl.replaceAll("\\s+", "_"),null,locale)+"\" class=\"caret\" oncontextmenu=\"on_context_menu_myPage_object('" + element + "','" + tl + "')\">"+messageSource.getMessage(tl.replaceAll("\\s+", "_"),null,locale)+"</p>";
								else
									tree += "<li  tabindex=\"-1\" class=\"sub_elements\" ><p style=\"margin-bottom:0px;\" title=\""+messageSource.getMessage(tl.replaceAll("\\s+", "_"),null,locale)+"\" class=\"caret\">"+messageSource.getMessage(tl.replaceAll("\\s+", "_"),null,locale)+"</p>";
								tree += "<ul id=\""+tl+"_"+""+element+"\" class=\"nested\">";
								List<String> rowValues = new ArrayList<String>();
									if( (tl.equals("Others") || tl.equals("Other") )) {
										if(rowsMap.get("Null")!=null)
											rowValues.addAll(rowsMap.get("Null"));
										
										if(rowsMap.get("Others")!=null)
										rowValues.addAll(rowsMap.get("Others"));
										
										if(rowsMap.get("Other")!=null)
											rowValues.addAll(rowsMap.get("Other"));
										
									}else {
										rowValues = rowsMap.get(tl);
									}
									if(rowValues != null) {
										for (String rl : rowValues) {
											
											String id = rl.replaceAll("\\s+", "---").replaceAll("[><!@$%^&)(,.;}?{= +':`\\\\~/]","_")+"mypage";
											if(role_details.isElementDelete()==true)
												tree+= "<li id=\""+id+"\"  class=\""+tl+" myPageObjectlist\" style=\"cursor:pointer\" onclick=\"showDataForMyPage(\'"+element+"\',\'"+rl+"\')\" oncontextmenu=\"on_context_menu_remove('"+element+"','"+rl+"', 'deletedElements')\"><p style=\"margin-bottom:0px; min-width:min-content;\" title=\""+rl+"\" draggable=\"true\" ondragstart=\"drag(event,'"+rl+"','resources/js/examples/editors/images/images1/"+elementIcon+"')\"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/js/examples/editors/images/images1/"+elementIcon+"\" >&nbsp;"+messageSource.getMessage(rl.replaceAll("\\s+", "_"),null,locale)+"</p>";
											else
												tree+= "<li id=\""+id+"\"  class=\""+tl+" myPageObjectlist\" style=\"cursor:pointer\" onclick=\"showDataForMyPage(\'"+element+"\',\'"+rl+"\')\"><p style=\"margin-bottom:0px; min-width:min-content;\" title=\""+rl+"\" draggable=\"true\" ondragstart=\"drag(event,'"+rl+"','resources/js/examples/editors/images/images1/"+elementIcon+"')\"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/js/examples/editors/images/images1/"+elementIcon+"\" >&nbsp;"+messageSource.getMessage(rl.replaceAll("\\s+", "_"),null,locale)+"</p>";
											tree += "</li>";
										}
									}
								tree += "</ul>";
								tree += "</li>";
							}
						}
					}

					tree += "</ul>";
					tree += "</li>";
				}
			}
			tree += "</ul>";
			tree += "</li>";
		}
		tree +="</ul>";
		tree +="</li>";
		
		tree +="<li tabindex=\"-1\" class=\"layers\" id=\"lt_relationships\"><p style=\"margin-bottom:0px; width:max-content; min-width: 100%;\" class=\"caret\">"+app_relationships+"</p>";
		tree +="<ul class=\"nested\" id=\"\">";
		List<Relationships> elementAttributesList1 = unif.getRelations();
		//List<String> layers = new ArrayList<String>();
		for (Relationships rl : elementAttributesList1) {
			
			
			String id = rl.getRelationshipName().replaceAll("\\s+", "_").replaceAll("[><!@$%^&)(,.;}?{= +':`\\\\~/]","_")+"mypage";

			tree+= "<li id=\""+ id +"\" style=\"cursor:pointer\"><p style=\"margin-bottom:0px;\" title=\""+messageSource.getMessage(rl.getRelationshipName().replaceAll("\\s+", "_"),null,locale)+"\" draggable=\"false\" class=\"caret\" >&nbsp;"+messageSource.getMessage(rl.getRelationshipName().replaceAll("\\s+", "_"),null,locale)+"</p>";
			tree += "<ul id=\"" + id + "\" class=\"nested " + rl.getRelationshipName().replaceAll("\\s+", "_") + "\">";
				
			String element = rl.getRelationshipName().replaceAll("\\s+", "_");
			String elementIcon = rl.getRelationshipName().replaceAll("\\s+", "-").toLowerCase() + ".svg";
			
			String name = "ATT_01";
				List<String> rowsList = enterpriseDAO.getRows1(dbName, element, name);
				queryCount++;
				for(String rl2: rowsList) {
					
					String id1 = rl2.replaceAll("\\s+", "---").replaceAll("[><!@$%^&)(,.;}?{= +':`\\\\~/]","_")+"mypage";
					
					if(role_details.isRelationshipDelete()==true)
						tree+= "<li id=\""+id1+"\"   style=\"cursor:pointer\" onclick=\"showData(\'"+element+"\',\'"+rl2+"\')\" oncontextmenu=\"on_context_menu_remove_relationship('"+element+"','"+rl2+"', 'deletedRelationships')\"><p style=\"margin-bottom:0px;  min-width:min-content;\" title=\""+rl2+"\" draggable=\"false\" class=\"objectlist\" ondragstart=\"drag(event,'"+rl2+"','http://localhost:8080/resources/images/nodes.png/nodes.png')\"><img style=\"width:15px; height:15px\" draggable=\"false\" src=\"resources/images/nodes.png\" >&nbsp;"+messageSource.getMessage(rl2.replaceAll("\\s+", "_"),null,locale)+"</p>";
					else
						tree+= "<li id=\""+id1+"\"   style=\"cursor:pointer\" onclick=\"showData(\'"+element+"\',\'"+rl2+"\')\"><p style=\"margin-bottom:0px; min-width:min-content;\" title=\""+rl2+"\" class=\"objectlist\" draggable=\"false\" ondragstart=\"drag(event,'"+rl2+"','http://localhost:8080/resources/images/nodes.png/nodes.png')\"><img style=\"width:15px; height:15px\" draggable=\"false\" src=\"resources/images/nodes.png\" >&nbsp;"+messageSource.getMessage(rl2.replaceAll("\\s+", "_"),null,locale)+"</p>";
					tree += "</li>";
				}
			tree += "</ul>";
			tree += "</li>";
			
		}
		tree +="</ul>";
		tree +="</li>";
		
		List<Relationship_Connector> elementAttributesList2 = unif.getRelationship_connectors();
		if(elementAttributesList2.size()>0) {
		tree +="<li tabindex=\"-1\" class=\"layers\" id=\"lt_relation_connectors\"><p style=\"margin-bottom:0px; min-width: 100%;\" class=\"caret\">"+app_relationship_connectors+"</p>";
		tree +="<ul class=\"nested\" id=\"\">";
			
		
		for (Relationship_Connector rl1 : elementAttributesList2) {
			String element = rl1.getRelationshipConnectorName();
			
			
			String id = rl1.getRelationshipConnectorName().replaceAll("\\s+", "_").replaceAll("[><!@$%^&)(,.;}?{= +':`\\\\~/]","_")+"mypage";
			
			tree+= "<li id=\""+ id +"\" style=\"cursor:pointer\"><p style=\"margin-bottom:0px;\" title=\""+messageSource.getMessage(rl1.getRelationshipConnectorName().replaceAll("\\s+", "_"),null,locale)+"\"  draggable=\"true\" class=\"caret\" >&nbsp;"+messageSource.getMessage(rl1.getRelationshipConnectorName().replaceAll("\\s+", "_"),null,locale)+"</p>"; //oncontextmenu=\"on_context_menu('" + element + "')\"
			tree += "<ul id=\"" + id + "\" class=\"nested " + rl1.getRelationshipConnectorName().replaceAll("\\s+", "_") + "\">";
				
			element = element.replaceAll("\\s+", "_");
			String elementIcon = rl1.getRelationshipConnectorName().replaceAll("\\s+", "-").toLowerCase() + ".svg";
			
//			List<String> name = enterpriseDAO.getSelfGeneratedForGivenAttribute(dbName, element,"Name");
			String name = "ATT_01";
				//List<addRowsModel> rowsList = enterpriseDAO.getRowWithCondition(dbName, element, name.get(0));
				List<String> rowsList = enterpriseDAO.getRows1(dbName, element, name);
				queryCount++;
				for(String rl3: rowsList) {
					String id1 = rl3.replaceAll("\\s+", "---").replaceAll("[><!@$%^&)(,.;}?{= +':`\\\\~/]","_")+"mypage"; 
					if(role_details.isConnectorDelete()==true)
						tree+= "<li id=\""+ id1 +"\"   style=\"cursor:pointer\" onclick=\"showDataForMyPage(\'"+element+"\',\'"+rl3+"\')\" oncontextmenu=\"on_context_menu_remove_relationship_connector('"+element+"','"+rl3+"', 'deletedRelationshipConnectors')\"><p style=\"margin-bottom:0px; min-width:min-content;\" title=\""+rl3+"\" class=\"caret\" draggable=\"true\" ondragstart=\"drag(event,'"+rl3+"','http://localhost:8080/resources/images/nodes.png/teamwork.png')\"><img style=\"width:15px; height:15px\" draggable=\"false\" src=\"resources/images/nodes.png\" >&nbsp;"+messageSource.getMessage(rl3.replaceAll("\\s+", "_"),null,locale)+"</p>";
					else
						tree+= "<li id=\""+ id1 +"\"   style=\"cursor:pointer\" onclick=\"showDataForMyPage(\'"+element+"\',\'"+rl3+"\')\"><p style=\"margin-bottom:0px; min-width:min-content;\" title=\""+rl3+"\" class=\"caret\" draggable=\"true\" ondragstart=\"drag(event,'"+rl3+"','http://localhost:8080/resources/images/nodes.png/teamwork.png')\"><img style=\"width:15px; height:15px\" draggable=\"false\" src=\"resources/images/nodes.png\" >&nbsp;"+messageSource.getMessage(rl3.replaceAll("\\s+", "_"),null,locale)+"</p>";
					tree += "</li>";
				}
			
				//tree+= "<li style=\"cursor:pointer\"><span title=\""+rl.getRelationshipName().replaceAll("\\s+", "_")+"\" draggable=\"true\" ><img style=\"width:15px; height:15px\" draggable=\"false\" src=\"resources/images/nodes.png\" >&nbsp;"+rl.getRelationshipName()+"</span>";	
				//tree += "</li>";
			
			tree += "</ul>";
			tree += "</li>";
		}
		tree +="</ul>";
		tree +="</li>";
		}
//		
////		return tree;
//		//System.out.println("queryCount: "+queryCount);
//		//System.out.println("loopCount: "+specificQueryType);
		byte[] utfBytes = tree.getBytes("utf-8");
		return utfBytes;
	}
	

	
//	@RequestMapping(value = "getCompleteRelationsTree", method = RequestMethod.GET)
//	public @ResponseBody String getCompleteRelationsTree(HttpSession session) throws JAXBException, FileNotFoundException {
////		System.out.println("chkeck");
//		String tree = "";
//
//		JAXBContext context = JAXBContext.newInstance(net.lt.eaze.model_metamodel2.Schema.class);
//		String path = session.getServletContext().getRealPath("/");
//		Unmarshaller um = context.createUnmarshaller();
//		net.lt.eaze.model_metamodel2.Schema unif = (net.lt.eaze.model_metamodel2.Schema) um
//				.unmarshal(new FileReader(path + "/" + "amf1.xml"));
//		dbName = unif.getDbName();
//		
//		List<Relationships> elementAttributesList = unif.getRelations();
//		//List<String> layers = new ArrayList<String>();
//		System.out.println("getcomplate_tree_relation_elementAttributesList"+ elementAttributesList);
//		for (Relationships rl : elementAttributesList) {
//			tree+= "<li id=\""+rl.getRelationshipName().replaceAll("\\s+", "_")+"\"   style=\"cursor:pointer\"><span title=\""+rl+"\" draggable=\"true\" ><img style=\"width:15px; height:15px\" draggable=\"false\" src=\"resources/images/nodes.png\" >&nbsp;"+rl.getRelationshipName()+"</span>";
//			tree += "</li>";
//		}
//		//System.out.println(tree);
//		return tree;
//	}
	
//	@RequestMapping(value = "getCompleteRelationConnectorsTree", method = RequestMethod.GET)
//	public @ResponseBody String getCompleteRelationConnectorsTree(HttpSession session) throws JAXBException, FileNotFoundException {
////		System.out.println("chkeck");
//		String tree = "";
//
//		JAXBContext context = JAXBContext.newInstance(net.lt.eaze.model_metamodel2.Schema.class);
//		String path = session.getServletContext().getRealPath("/");
//		Unmarshaller um = context.createUnmarshaller();
//		net.lt.eaze.model_metamodel2.Schema unif = (net.lt.eaze.model_metamodel2.Schema) um
//				.unmarshal(new FileReader(path + "/" + "amf1.xml"));
//		dbName = unif.getDbName();
//		
//		List<Relationship_Connector> elementAttributesList = unif.getRelationship_connectors();
//		//List<String> layers = new ArrayList<String>();
//		//System.out.println("getcomplate_tree_relation_elementAttributesList"+ elementAttributesList);
//		for (Relationship_Connector rl : elementAttributesList) {
//			tree+= "<li id=\""+rl.getRelationshipConnectorName().replaceAll("\\s+", "_")+"\" class=\"caret\"  style=\"cursor:pointer\"><span title=\""+rl+"\" draggable=\"true\" >&nbsp;"+rl.getRelationshipConnectorName()+"</span>";
//			tree += "<ul class=\"nested\">";
//			// loop
////			for (Relationship_Connector rl1 : elementAttributesList) {
//				tree+= "<li style=\"cursor:pointer\"><span title=\""+rl+"\" draggable=\"true\" ><img style=\"width:15px; height:15px\" draggable=\"false\" src=\"resources/images/teamwork.png\" >&nbsp;"+rl.getRelationshipConnectorName()+"</span>";
//				tree += "</li>";
////			}
//			tree += "</ul>";
//			tree += "</li>";
//		}
//		//System.out.println(tree);
//		return tree;
//	}
	// Complete_tree_for_modal	
	@RequestMapping(value = "getCompleteTreeModal", method = RequestMethod.GET)
	public @ResponseBody String getCompleteTreeModal(HttpSession session) throws JAXBException, FileNotFoundException {
		//System.out.println("chkeck");
		
		ReloadableResourceBundleMessageSource messageSource=new ReloadableResourceBundleMessageSource();
		messageSource.setBasename("classpath:net/lt/eaze/resources/locale/messages");
		messageSource.setDefaultEncoding("UTF-8");
		messageSource.setUseCodeAsDefaultMessage(true);
		Locale locale = LocaleContextHolder.getLocale();
		
		String tree = "";

		JAXBContext context = JAXBContext.newInstance(net.lt.eaze.model_metamodel2.Schema.class);
		String path = session.getServletContext().getRealPath("/");
		Unmarshaller um = context.createUnmarshaller();
		net.lt.eaze.model_metamodel2.Schema unif = (net.lt.eaze.model_metamodel2.Schema) um
				.unmarshal(new FileReader(path + "/" + "amf.xml"));
		dbName = unif.getDbName();
		List<Element> elementList = unif.getElements();
		List<Element_Attributes> elementAttributesList = unif.getElement_attributes();
		List<String> layers = new ArrayList<String>();
		for (Element e : elementList) {
			String layer = e.getElementLayer();
			if (!layers.contains(layer)) {
				layers.add(layer);
			}
		}
		for (String l1 : layers) {
			tree += "<li tabindex=\"-1\" class=\"layers\"><span title=\""+l1+"\" class=\"caret\">" + messageSource.getMessage(l1.replaceAll("\\s+", "_"),null,locale) + "</span>";
			tree += "<ul id=\"" + l1.replaceAll("\\s+", "_") + "\" class=\"nested\">";
			for (Element e : elementList) {
				if (l1.equals(e.getElementLayer())) {
					String element = e.getElementName();
					String elementIcon = element.replaceAll("\\s+", "-").toLowerCase() + ".svg";
					tree += "<li tabindex=\"-1\" class=\"elements\"><span title=\""+element+"\" class=\"caret\">" + messageSource.getMessage(element.replaceAll("\\s+", "_"),null,locale) + "</span>";
					tree += "<ul id=\"" + element.replaceAll("\\s+", "_") + "\" class=\"nested\">";

					String types = "";
					for (Element_Attributes ea : elementAttributesList) {
						if (element.equals(ea.getConceptName()) && ea.getAttrributeName().equals("Type")) {
							if (ea.getAllowableValues() == null) {
								System.out.println(ea.getConceptName() + " Null Hai");
								types = "Other";
							} else {
								types = ea.getAllowableValues();
								if (!types.contains("Other"))
									types += ";Other";
							}
						}
					}
					String[] typesList = types.split(";");

					for (String tl : typesList) {
						if (!tl.equals("Null")) {
							element = element.replaceAll("\\s+", "_");
//							tree += "<li  tabindex=\"-1\" class=\"sub_elements\" ><span title=\""+tl+"\" class=\"caret\" oncontextmenu=\"\">" + tl + "</span>";
							tree += "<li  tabindex=\"-1\" class=\"sub_elements\" ><span title=\""+messageSource.getMessage(tl.replaceAll("\\s+", "_"),null,locale)+"\" class=\"caret\" oncontextmenu=\"\">"+messageSource.getMessage(tl.replaceAll("\\s+", "_"),null,locale)+"</span>";
							tree += "<ul id=\""+tl+"_"+""+element+"\" class=\"nested\">";
							List<String> name = enterpriseDAO.getSelfGeneratedForGivenAttribute(dbName, element,
									"Name");
							List<String> selfGeneratedValue = enterpriseDAO.getSelfGeneratedForGivenAttribute(dbName,
									element, "Type");
							System.out.println(element);
							if (selfGeneratedValue.size() > 0) {
								List<addRowsModel> rowsList = enterpriseDAO.getRowsForType(dbName, element, name.get(0),
										selfGeneratedValue.get(0), tl);
								for (addRowsModel rl : rowsList) {
									tree+= "<li id=\""+rl.getRowValue().replaceAll("\\s+", "_")+"\"  class=\""+tl+"\" style=\"cursor:pointer\" onclick=\"\" oncontextmenu=\"\"><span title=\""+rl.getRowValue()+"\"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/js/examples/editors/images/images1/"+elementIcon+"\" >&nbsp;"+messageSource.getMessage(rl.getRowValue().replaceAll("\\s+", "_"),null,locale)+"</span>";
									tree += "</li>";
								}
							}

							tree += "</ul>";
							tree += "</li>";
						}
					}

					tree += "</ul>";
					tree += "</li>";
				}
			}
			tree += "</ul>";
			tree += "</li>";
		}
		System.out.println(tree);
		return tree;
	}
	

	
	@RequestMapping(value = "/get_databases", method = RequestMethod.GET)
	public @ResponseBody List<String> get_databases() {
		System.out.println("COMING HERE");
		List<String> dbList = enterpriseDAO.getDatabases();
		return dbList;
	}

	@RequestMapping(value = "/get_layers", method = RequestMethod.GET)
	public @ResponseBody List<String> get_layers(HttpSession session) throws JAXBException, FileNotFoundException {
		// MultipartFile file = (MultipartFile) ne0w File("demo_metamodel2");
		JAXBContext context = JAXBContext.newInstance(net.lt.eaze.model_metamodel2.Schema.class);
		String path = session.getServletContext().getRealPath("/");
		Unmarshaller um = context.createUnmarshaller();
		net.lt.eaze.model_metamodel2.Schema unif = (net.lt.eaze.model_metamodel2.Schema) um
				.unmarshal(new FileReader(path + "/" + "amf.xml"));
		dbName = unif.getDbName();
		List<Element> elementList = unif.getElements();
		List<String> layers = new ArrayList<String>();
		for (Element e : elementList) {
			String layer = e.getElementLayer();
			if (!layers.contains(layer)) {
				layers.add(layer);
			}
		}
		System.out.println(layers);
		return layers;
	}

	@RequestMapping(value = "/getElements", method = RequestMethod.GET)
	public @ResponseBody List<String> getElements(String layer, HttpSession session)
			throws JAXBException, FileNotFoundException {
		// MultipartFile file = (MultipartFile) ne0w File("demo_metamodel2");
		JAXBContext context = JAXBContext.newInstance(net.lt.eaze.model_metamodel2.Schema.class);
		String path = session.getServletContext().getRealPath("/");
		Unmarshaller um = context.createUnmarshaller();
		net.lt.eaze.model_metamodel2.Schema unif = (net.lt.eaze.model_metamodel2.Schema) um
				.unmarshal(new FileReader(path + "/" + "amf.xml"));
		List<Element> elementList = unif.getElements();
		List<String> elements = new ArrayList<String>();
		for (Element e : elementList) {
			if (layer.equals(e.getElementLayer())) {
				elements.add(e.getElementName());
			}
		}
		return elements;
	}

	@RequestMapping(value = "/getDateForElement", method = RequestMethod.GET)
	public @ResponseBody List<String> getDateForElement() {
//		String dbName = "amf2_metamodel";
		String tableName = "attributes_information";
		
		System.out.println("dbName"+dbName);
		System.out.println("tableName:"+tableName);
		
		List<String> GanttElement = enterpriseDAO.GanttElement(dbName, tableName);
//		List<String> last_time_updated = enterpriseDAO.getRowWithCondition(dbName, tableName, "last_time_updated", "ATT_01", row_name);
		System.out.println("GanttElement "+GanttElement);
		return GanttElement;
	}
	
	@RequestMapping(value = "/getDateForStartDate", method = RequestMethod.GET)
	public @ResponseBody List<String> getDateForStartDate(String Element_Name) {
//		String dbName = "amf2_metamodel";
		String tableName = Element_Name;
		
		System.out.println("dbName"+dbName);
		System.out.println("tableName:"+tableName);
		
		List<String> GanttElement = enterpriseDAO.GanttStartDate(dbName, tableName);
//		List<String> last_time_updated = enterpriseDAO.getRowWithCondition(dbName, tableName, "last_time_updated", "ATT_01", row_name);
		System.out.println("StartDate: "+GanttElement);
		return GanttElement;
	}
	
	@RequestMapping(value = "/getDateForLegend", method = RequestMethod.GET)
	public @ResponseBody List<String> getDateForLegend(String Element_Name) {
//		String dbName = "amf2_metamodel";
		String tableName = Element_Name;
		
		System.out.println("dbName"+dbName);
		System.out.println("tableName:"+tableName);
		
		List<String> GanttElement = enterpriseDAO.GanttLegend(dbName, tableName);
//		List<String> last_time_updated = enterpriseDAO.getRowWithCondition(dbName, tableName, "last_time_updated", "ATT_01", row_name);
		System.out.println("GanttElement "+GanttElement);
		return GanttElement;
	}
	
	@RequestMapping(value = "/getDateForGanttChartStartDate", method = RequestMethod.GET)
	public @ResponseBody List<String> getDateForGanttChartStartDate(String ElementVal, String StartDateVal) {
		System.out.println("ElementVal0101: "+ElementVal);
//		String dbName = "amf2_metamodel";
		String tableName = "attributes_information";
		
		System.out.println("dbName"+dbName);
		System.out.println("tableName:"+tableName);
		
		List<String> GanttElement = enterpriseDAO.SGAGanttStartDate(dbName, tableName, ElementVal, StartDateVal);
//		List<String> last_time_updated = enterpriseDAO.getRowWithCondition(dbName, tableName, "last_time_updated", "ATT_01", row_name);
		System.out.println("GanttElement "+GanttElement);
		return GanttElement;
	}
	
	@RequestMapping(value = "/getDateForGanttChartEndDate", method = RequestMethod.GET)
	public @ResponseBody List<String> getDateForGanttChartEndDate(String ElementVal, String EndDateVal) {
//		String dbName = "amf2_metamodel";
		String tableName = "attributes_information";
		
		System.out.println("dbName"+dbName);
		System.out.println("tableName:"+tableName);
		
		List<String> GanttElement = enterpriseDAO.SGAGanttEndDate(dbName, tableName, ElementVal, EndDateVal);
//		List<String> last_time_updated = enterpriseDAO.getRowWithCondition(dbName, tableName, "last_time_updated", "ATT_01", row_name);
		System.out.println("GanttElement "+GanttElement);
		return GanttElement;
	}
	
	@RequestMapping(value = "/getDateForGanttChartLegend", method = RequestMethod.GET)
	public @ResponseBody List<String> getDateForGanttChartLegend(String ElementVal, String LegendVal) {
//		String dbName =;
		String tableName = "attributes_information";
	
		System.out.println("dbName"+dbName);
		System.out.println("tableName:"+tableName);
		
		List<String> GanttElement = enterpriseDAO.SGAGanttLegend(dbName, tableName, ElementVal, LegendVal);
//		List<String> last_time_updated = enterpriseDAO.getRowWithCondition(dbName, tableName, "last_time_updated", "ATT_01", row_name);
		System.out.println("GanttElement "+GanttElement);
		return GanttElement;
	}
//	10/nov/2021 starts here

/////////////////////////////////////////
	
	/* 
	 * 
	 * 	@RequestMapping(value = "getCatalogTableFromXML")
	public @ResponseBody HashMap<String,String> getCatalogTableFromXML(@RequestParam String catalog_id, HttpSession session) throws JAXBException, FileNotFoundException {
	String thead = "";
	String tbody = "";
	HashMap<String, String> allData = new HashMap<String,String>();
	List<String> namesArray = new ArrayList<String>(); 
	int indexForRowNames = 0;
	List<ArrayList<String>> tableCompleteData = new ArrayList<ArrayList<String>>(); 
	String xml_link = enterpriseDAO.getXML_linkFromDB(catalog_id);
	System.out.println("xml link: "+xml_link);
	JAXBContext context = JAXBContext.newInstance(Catalog.class);
	Unmarshaller um = context.createUnmarshaller();
	Catalog ct = (Catalog) um.unmarshal(new FileReader(xml_link));

	List<thead> theadsList = ct.getTheads();
	int indexForAutoSize = 0;
	for(thead th_list: theadsList) {
		List<String> th = th_list.getTh();
		int thIndex = 0;
		for(String obj:th) {
			thead+="<th>"+obj+"</th>";
		}
	}
	List<tbody> tbodyList = ct.getTbodies();
	int dataRowsIndex = 1;
	for(tbody td_list: tbodyList) {
		List<tr> tr = td_list.getTr();
		for(tr obj:tr) {
			int tdIndex = 0;
			tbody += "<tr>";
//			Row dataRows = sheet.createRow(dataRowsIndex++);
			List<String> td_List = obj.getTd();
			for(String obj1:td_List) {
				tbody += "<td>"+obj1+"</td>";
			}
			tbody += "</tr>";
		}
	}
	allData.put("thead",thead);
	allData.put("tbody",tbody);
	return allData;
}
	 * 
	 */
	
	@RequestMapping(value = "/getMatrixTableFromXml", method = RequestMethod.POST)
	public @ResponseBody HashMap<String,String> getMatrixTableFromXml(@RequestParam String matrix_id) throws JAXBException, FileNotFoundException {

		ReloadableResourceBundleMessageSource messageSource=new ReloadableResourceBundleMessageSource();
		messageSource.setBasename("classpath:net/lt/eaze/resources/locale/messages");
		messageSource.setDefaultEncoding("UTF-8");
		messageSource.setUseCodeAsDefaultMessage(true);
		Locale locale = LocaleContextHolder.getLocale();
		
		String thead = "";
		String tbody = "";
		HashMap<String, String> allData = new HashMap<String,String>();
		List<String> namesArray = new ArrayList<String>(); 
		int indexForRowNames = 0;
		List<ArrayList<String>> tableCompleteData = new ArrayList<ArrayList<String>>(); 
		String xml_link = enterpriseDAO.getMatrix_XML_linkFromDB(matrix_id);
		System.out.println("xml link: "+xml_link);
		JAXBContext context = JAXBContext.newInstance(saveMatrix.class);
		Unmarshaller um = context.createUnmarshaller();
		saveMatrix ct = (saveMatrix) um.unmarshal(new FileReader(xml_link));
		System.out.println("ct: "+ct);
		List<net.lt.eaze.matrix.thead> theadsList = ct.getTheads();
		String matrix_relation = ct.getRelation();
		int indexForAutoSize = 0;
		for(net.lt.eaze.matrix.thead th_list: theadsList) {
			List<String> th = th_list.getTh();
			int thIndex = 0;
			for(String obj:th) {
				System.out.println("obj: "+obj);
				thead+="<th style=\"text-align:center;line-height:14px;\">"+messageSource.getMessage(obj.replaceAll("\\s+", "_"),null,locale)+"</th>";
			}
		}
		List<net.lt.eaze.matrix.tbody> tbodyList = ct.getTbodies();
		int dataRowsIndex = 1;
		int idCount = 0;
		for(net.lt.eaze.matrix.tbody td_list: tbodyList) {
			List<net.lt.eaze.matrix.tr> tr = td_list.getTr();
			System.out.println("tr: "+tr);
			for(net.lt.eaze.matrix.tr obj:tr) {
				int trIndex = 0;
				int tdIndex = 0;
				String rowObject = "";
				tbody += "<tr>";
//				Row dataRows = sheet.createRow(dataRowsIndex++);
				List<String> td_List = obj.getTd();
				System.out.println("td_List: "+td_List);
				String columnObject = "";
				if(td_List==null)
					continue;
				for(String obj1:td_List) {
					String td_id = columnObject+rowObject+idCount++;
					td_id = td_id.replaceAll("\\s+", "_");
					columnObject = theadsList.get(0).getTh().get(trIndex++);
					if(tdIndex==0) {
						rowObject = obj1.replaceAll("<strong>","").replaceAll("</strong>", "");
						tbody += "<td style=\"text-align:left;line-height:14px;\" id=\""+td_id+"\"onclick=\"openRelationshipObjectForm(null,null,'"+columnObject+"','"+rowObject+"','"+matrix_relation+"','"+td_id+"')\">"+messageSource.getMessage(obj1.replaceAll("\\s+", "_"),null,locale)+"</td>";
					}else {
					if(obj1.length()>0) {
							tbody += "<td style=\"text-align:center;line-height:14px;\" id=\""+td_id+"\"onclick=\"openRelationshipObjectForm(null,null,'"+columnObject+"','"+rowObject+"','"+matrix_relation+"','"+td_id+"')\">"+messageSource.getMessage(obj1.replaceAll("\\s+", "_"),null,locale)+"</td>";
					}else {
							tbody += "<td>"+messageSource.getMessage(obj1.replaceAll("\\s+", "_"),null,locale)+"</td>";
					}
					}
					tdIndex++;
				}	
				tbody += "</tr>";
			}
		}
		allData.put("thead",thead);
		allData.put("tbody",tbody);
		return allData;
	}
	
//	10/nov/2021 ends here
	
	@RequestMapping(value = "/getMatrixTable", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, String> getMatrixTable(@RequestParam String matrix_element1,
			String matrix_element2, String matrix_relation, String matrix_name,int existing,boolean allRelations, HttpSession session)
			throws JAXBException, FileNotFoundException {
			System.out.println("matrix_relation: "+matrix_relation);
//		dbName = "mim_metamodel";
//			String path = session.getServletContext().getRealPath("/");
//			String[] splitString = path.split("\\.metadata");
//			Locale locale = LocaleContextHolder.getLocale();
//			
////			For Local
//			String filePath = splitString[0] + remainingString;
//			File folder = new File(filePath);
//			File[] listOfFiles = folder.listFiles();
//			for (File file : listOfFiles) {
//			    if (file.isFile()) {
//			        try (OutputStream output = new FileOutputStream(filePath+"\\"+file.getName(), true)) {
//			            Properties prop = new Properties();
//			            // set the properties value
//			            prop.setProperty(matrix_name.replaceAll(" ", "_"), matrix_name);
//			            // save properties to project root folder
//			            prop.store(output, null);
//			            output.close();
//			        } catch (IOException io) {
//			            io.printStackTrace();
//			        }
//			    }
//			}
			
//			For Online
//			File folder = new File(path);
//			File[] listOfFiles = folder.listFiles();
//			for (File file : listOfFiles) {
//			    if (file.isFile()) {
//			        try (OutputStream output = new FileOutputStream(path+"\\"+file.getName(), true)) {
//			            Properties prop = new Properties();
//			            // set the properties value
//			            prop.setProperty(matrix_name.replaceAll(" ", "_"), matrix_name);
//			            // save properties to project root folder
//			            prop.store(output, null);
//			            output.close();
//			        } catch (IOException io) {
//			            io.printStackTrace();
//			        }
//			    }
//			}
//			
			String username = "";
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			if (!(auth instanceof AnonymousAuthenticationToken)) {
				UserDetails userDetail = (UserDetails) auth.getPrincipal();
				System.out.println(userDetail);
				username = userDetail.getUsername();
			}
			String company_name = (String) session.getAttribute("company_name");
			int matrixName = enterpriseDAO.validateMatrixName(matrix_name, company_name);
			HashMap<String, String> allData = new HashMap<String,String>();
			if(matrixName == 1 && existing == 0) {
				return null;
			}
			else {
			String thead = "";
			String tbody = "";
			System.out.println("matrix_relation: "+matrix_relation);
			matrix_element1 = matrix_element1.replaceAll("\\s+", "_");
			matrix_element2 = matrix_element2.replaceAll("\\s+", "_");
			List<RelationsModel> getAllRelationsForMatrix = enterpriseDAO.getAllRelationsForMatrix(dbName,matrix_element1,matrix_element2,matrix_relation,allRelations);
			System.out.println("getRelatiionsForMatrix: "+getAllRelationsForMatrix);
			List<String> name = enterpriseDAO.getSelfGeneratedForGivenAttribute(dbName, matrix_element1,"Name");
			List<String> matrix_element1_rows = enterpriseDAO.getRows1(dbName, matrix_element1, name.get(0));
			List<String> name1 = enterpriseDAO.getSelfGeneratedForGivenAttribute(dbName, matrix_element2,"Name");
			List<String> matrix_element2_rows = enterpriseDAO.getRows1(dbName, matrix_element2, name1.get(0));
			System.out.println(matrix_element1_rows);
			System.out.println(matrix_element2_rows);
			int firstMatrixSize = matrix_element1_rows.size();
			int secondMatrixSize = matrix_element2_rows.size();
			String extracell = "Element Objects";
			// thead+="<th style=\"text-align:center;line-height:14px;\">"+extracell+"</th>";
			thead+="<th style=\"text-align:center;line-height:14px;\" title="+messageSource.getMessage(extracell.replaceAll("\\s+", "_"),null,locale)+">"+extracell+"</th>";
			int count = 0;
			int matrixClassCount = 0;
			List<String> selfGeneratedAtrributesForAccess = enterpriseDAO.getAccessTypeAttributeNames(dbName);
			List<String> FROM_selfGeneratedValue = null;
			List<String> TO_selfGeneratedValue = null;
			if(matrix_relation.equals("Access")) {
				FROM_selfGeneratedValue = enterpriseDAO.getSelfGeneratedForGivenAttribute(dbName, matrix_relation, "From");
				TO_selfGeneratedValue = enterpriseDAO.getSelfGeneratedForGivenAttribute(dbName, matrix_relation, "To");
			}
			for(String j : matrix_element1_rows) {
				// thead+="<th style=\"text-align:center;line-height:14px;\">"+j+"</th>";
				thead+="<th style=\"text-align:center;line-height:14px;\" title="+j+">"+j+"</th>";
			}
			for(String j : matrix_element2_rows) {
				tbody += "<tr>";
				for(int a=0; a<firstMatrixSize;a++) {
					if(a==0) {
						tbody += "<td class=\"matirixFirstTd\" style=\"text-align:left;line-height:14px;\" ><strong>"
							+ matrix_element2_rows.get(count) + "</strong></td>";
					}
//					List<String> relationList = enterpriseDAO.getExistingRelationshipsForMatrix(dbName, matrix_element1,
//								matrix_element2, matrix_element2_rows.get(count), matrix_element1_rows.get(a), matrix_relation);
						String idVar = "matrixID_"+matrixClassCount++;
					String imageName = "";
//					List<String> imageNameList=new ArrayList<String>(); 
//					imageNameList.add("read.png");
//					imageNameList.add("write.png");
//					imageNameList.add("readwrite.png");
					boolean relationshipExists = false;
					for(RelationsModel rm:getAllRelationsForMatrix) {
//						System.out.println("rm.getSourceAttValue(): "+rm.getSourceAttValue());
//						System.out.println("matrix_element2_rows.get(a): "+matrix_element2_rows.get(count));
//						System.out.println("rm.getTargetAttValue(): "+rm.getTargetAttValue());
//						System.out.println("matrix_element1_rows.get(a): "+matrix_element1_rows.get(a));
						if( (rm.getSourceAttValue().equals(matrix_element2_rows.get(count)) && rm.getTargetAttValue().equals(matrix_element1_rows.get(a)) ) || (rm.getSourceAttValue().equals(matrix_element1_rows.get(a)) && rm.getTargetAttValue().equals(matrix_element2_rows.get(count)) ) ){
							relationshipExists = true;
							break;
						}
					}
					if(relationshipExists == true) {
//						String td_id = matrix_element1_rows.get(a)+matrix_element2_rows.get(count)+j+a;
//						System.out.println("td_id"+td_id);
//						td_id = td_id.replaceAll("\\s+", "_");						
						tbody+="<td style=\"text-align:center;line-height:14px;\" style=\"text-align: center;\"><img style=\"width:14px; height:14px\" draggable=\"false\" src=\"resources/js/examples/editors/images/images1/check.png\"></td>";
					/*
					if(relationList.size()>0) {
						if(matrix_relation.equals("Access")) {
							String td_id = matrix_element1_rows.get(a)+matrix_element2_rows.get(count)+j+a;
							td_id = td_id.replaceAll("\\s+", "_");
							for(String obj:selfGeneratedAtrributesForAccess) {
									List<String> x = enterpriseDAO.getRelTableData(dbName, matrix_relation,
											FROM_selfGeneratedValue.get(0), TO_selfGeneratedValue.get(0),
											matrix_element1_rows.get(a), matrix_element2_rows.get(count), obj);
								if(x.get(0).equals("on")) {
									List<String> actualVal = enterpriseDAO.getActualValue(dbName,matrix_relation,obj);
									if(actualVal.get(0).equals("Read")) {
										imageName = "read.png";
									}else if(actualVal.get(0).equals("Write")){
										imageName = "write.png";
									}else if(actualVal.get(0).equals("Read/Write")){
										imageName = "readwrite.png";
									}
								}
							}
							if(!imageName.equals("")) {
									tbody += "<td  style=\"text-align:center;line-height:14px;\" id=\"" + td_id
											+ "\" onclick=\"openRelationshipObjectForm('" + matrix_element1 + "','"
											+ matrix_element2 + "','" + matrix_element1_rows.get(a) + "','"
											+ matrix_element2_rows.get(count) + "','" + matrix_relation + "','" + td_id
											+ "');\" style=\"text-align: center;\"><img style=\"width:14px; height:14px\" draggable=\"false\" src=\"resources/js/examples/editors/images/images1/check.png\"><img style=\"width:14px; height:14px; float:right\" draggable=\"false\" src=\"resources/js/examples/editors/images/images1/"
											+ imageName + "\"></td>";
								} else {
									tbody += "<td  style=\"text-align:center;line-height:14px;\" id=\"" + td_id
											+ "\" onclick=\"openRelationshipObjectForm('" + matrix_element1 + "','"
											+ matrix_element2 + "','" + matrix_element1_rows.get(a) + "','"
											+ matrix_element2_rows.get(count) + "','" + matrix_relation + "','" + td_id
											+ "');\" style=\"text-align: center;\"><img style=\"width:14px; height:14px\" draggable=\"false\" src=\"resources/js/examples/editors/images/images1/check.png\"></td>";
							}
							
							} else {
							tbody+="<td style=\"text-align:center;line-height:14px;\" style=\"text-align: center;\"><img style=\"width:14px; height:14px\" draggable=\"false\" src=\"resources/js/examples/editors/images/images1/check.png\"></td>";
						}
						*/
					}else {
						tbody+="<td></td>";
					}
//					tbody+="<td><input class=\"tags-input\" id=\""+idVar+"\"type=\"text\"  data-role=\"tagsinput\"/><select class=\"form-control\" onchange=\"addInMatrixInput(this,'"+idVar+"')\"><option selected=\"selected\" disabled>--- Select ---</option><option>C</option><option>R</option><option>U</option><option>D</option></select></td>";
					}	
					tbody += "</tr>";
				count++;			
			}

			allData.put("thead",thead);
			allData.put("tbody",tbody);
				return allData;				
			}
		}
	
	@RequestMapping(value = "openRelationshipForm", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, ArrayList<String>> openRelationshipForm(@RequestParam String rowElement, String columnElement,String rowObject, String columnObject,String relation){

		String tableName = relation;
		String formData = "";
		String tabsDivs = "";
		String elementIcon = tableName.replaceAll("\\s+", "-").replaceAll("_+", "-").toLowerCase() + ".svg";
		tableName = tableName.replaceAll("_", " ");
		String element_name = tableName;
		
		String previousPageTitle = "";
		tableName = tableName.replaceAll("\\s+", "_");
		
		List<attributesInformationModel> attributeDetailsList = enterpriseDAO.getAllAttributeDetails(dbName,tableName);
		List<String> allActualValues = new ArrayList<String>();
		List<String> allIds = new ArrayList<String>();
		List<String> row_id = new ArrayList<String>();
		List<String> row_name = new ArrayList<String>();
		List<String> checkboxIds = new ArrayList<String>();
		List<String> CurrenttabID_list = new ArrayList<String>();
		List<String> AllRelRowIDs = new ArrayList<String>();
		List<String> editButtonId = new ArrayList<String>();
		List<String> object_name_id = new ArrayList<String>();
		List<String> relationsClassList = new ArrayList<String>();
		List<String> AllRelTableIDs = new ArrayList<String>();
		

		previousPageTitle = "";
		String previousGroup = "";
		String attributeType = "";
		String targetRelationship_Element = "";
		String sourceRelationship_Element = "";
		String actualAttribute = "";
		String isGrouped = "";
		String groupStyle = "";
		String groupCaption = "";
		String attributeFormat = "";
		String pageNumber = "";
		String pageTitle = "";
		String isPageGrouped = "";
		String groupPageTitle = "";
		String groupPageID = "";
		String allowableValues = "";
		String attributeValue = "";
		String attributeTip = "";
		String bidirectionRelationshipPair = "";
		String relElement = "";
		String maximumNumberofObjectOccurrence = "";
		String inputTagId = "";
		String relationsClass = tableName+"_Relationship";
		relationsClassList.add(relationsClass);
		boolean relationshipTabCreated = false;
		List<String> currentGroupRelElement = new ArrayList<String>();
		String sharedInputString = "";
		int sharedInputsCreated = 0;
		
		ReloadableResourceBundleMessageSource messageSource=new ReloadableResourceBundleMessageSource();
		messageSource.setBasename("classpath:net/lt/eaze/resources/locale/messages");
		messageSource.setDefaultEncoding("UTF-8");
		messageSource.setUseCodeAsDefaultMessage(true);
		Locale locale = LocaleContextHolder.getLocale();
		
		int indexOfNext = 1;
		String CurrenttabID = tabID + tabsID_count++;
		CurrenttabID_list.add(CurrenttabID);
		tabsDivs += "<div id=\"" + CurrenttabID + "\">";
		tabsDivs += "<ul>";
		List<String> selfGeneratedValue = enterpriseDAO.getSelfGeneratedForGivenAttribute(dbName, tableName, "Name");
		List<String> FROM_selfGeneratedValue = enterpriseDAO.getSelfGeneratedForGivenAttribute(dbName, tableName, "From");
		List<String> TO_selfGeneratedValue = enterpriseDAO.getSelfGeneratedForGivenAttribute(dbName, tableName, "To");
		row_name = enterpriseDAO.getRelTableData(dbName,tableName,FROM_selfGeneratedValue.get(0),TO_selfGeneratedValue.get(0),rowObject,columnObject,selfGeneratedValue.get(0));
		List<String> last_time_updated = enterpriseDAO.getRowWithCondition(dbName, tableName, "last_time_updated", "ATT_01", row_name.get(0));
		formData += "<form id=\'"+CurrenttabID+"'\">";
		formData +="&nbsp;&nbsp;<img style=\"width:30px; height:30px\" draggable=\"false\" src=\"resources/js/examples/editors/images/images1/"+elementIcon+"\">";
		formData += "&nbsp;&nbsp;<label title=\""+row_name.get(0)+"\" id= \"object_name_"+tabsID_count+"\" style=\"font-size:18px\"> "+messageSource.getMessage(row_name.get(0).replaceAll("\\s+", "_"),null,locale)+" </label>";
		object_name_id.add("object_name_"+tabsID_count);
		formData += "&nbsp;<label style=\"font-size:18px\"> ["+messageSource.getMessage(element_name.replaceAll("\\s+", "_"),null,locale)+"] </label>";
		formData += "<button id=\"btnedit"+tabsID_count+"\" disabled=\"\" class=\"btn btn-Submit  submit-data\" type=\"button\"><span class=\"fa fa-floppy-o fa-lg\" aria-hidden=\"true\"></span></button>";
		editButtonId.add("btnedit"+tabsID_count);
		int loopSize = attributeDetailsList.size();
		String radioClass = "";
		
//		for (attributesInformationModel attributeDetails : attributeDetailsList) {
		for(int i=0;i<loopSize;i++) {
			attributesInformationModel attributeDetails = attributeDetailsList.get(i);
			String att_name = attributeDetails.getActualAttribute();
			if (!(att_name.equals("id"))) {
				attributesInformationModel attributeDetailsForNext = attributeDetailsList.get(indexOfNext);
				List<String> x = new ArrayList<String>();
				String a = attributeDetails.getSelfGeneratedAttribute();
				attributeType = attributeDetails.getAttributeType();
				targetRelationship_Element = attributeDetails.getTargetRelationship_Element();
				sourceRelationship_Element = attributeDetails.getSourceRelationship_Element();
				actualAttribute = attributeDetails.getActualAttribute();
				isGrouped = attributeDetails.getIsGrouped();
				groupStyle = attributeDetails.getGroupStyle();
				groupCaption = attributeDetails.getGroupCaption();
				attributeFormat = attributeDetails.getAttributeFormat();
				pageNumber = attributeDetails.getPageNumber();
				pageTitle = attributeDetails.getPageTitle();
				isPageGrouped = attributeDetails.getIsPageGrouped();
				groupPageTitle = attributeDetails.getGroupPageTitle();
				groupPageID = attributeDetails.getGroupPageID();
				allowableValues = attributeDetails.getAllowableValues();
				attributeTip = attributeDetails.getAttributeTip();
				bidirectionRelationshipPair = attributeDetails.getBidirectionRelationshipPair();

				if (targetRelationship_Element.equals("N/A")) {
					relElement = sourceRelationship_Element;
				} else {
					relElement = targetRelationship_Element;
				}

				if (allActualValues.contains(actualAttribute)) {
					int arr_size = allActualValues.size();
					Map<String, Integer> frequency = methods.findRepeating(allActualValues, arr_size);
					for (Entry<String, Integer> entry : frequency.entrySet()) {
						if (actualAttribute.equals(entry.getKey()))
							attributeValue = actualAttribute + "_" + entry.getValue();
					}
				} else
					attributeValue = actualAttribute;
				attributeValue = attributeValue.replaceAll("[\\(\\)\\[\\]\\{\\}]", "_");
				attributeValue = attributeValue.replaceAll("\\/", "_");
				


				if (!(previousPageTitle.equals(pageTitle))) {
					String pageClass = "";
					String style = "";
					if(groupPageTitle.equals("Relationship")) {
						pageClass = "class=\""+relationsClass+"\"";
						style = "style=\"margin-left:20px;\"";
						//tabsDivs += "<li><a title=\"Relationships\" class=\"fullTab\" onclick=\"show_or_hide_relationships=('"+element_name+"_Relationship')\">Relationships</a></li>";
						if(relationshipTabCreated == false) {
							tabsDivs += "<li><a title=\""+messageSource.getMessage(pageTitle.replaceAll("\\s+", "_"),null,locale)+"\" class=\"fullTab "+groupPageTitle+"\" onclick=\"show_or_hide_relationships('"+relationsClass+"');\"href=\"javascript:show_or_hide_relationships();\">Relationships&nbsp&nbsp<i id=\"arrowToggle\" class=\"arrow down\"></i></a></li>";	
							relationshipTabCreated = true;
						}
					}
					formData += "<div id=\"tabs-" + pageNumber.replace(".0", "") + "\">";

					tabsDivs += "<li "+pageClass+style+"><a title=\""+messageSource.getMessage(pageTitle.replaceAll("\\s+", "_"),null,locale)+"\" class=\"fullTab\" href=\"#tabs-" + pageNumber.replace(".0", "") + "\">"
							+ pageTitle + "</a></li>";
				}
				String temp = "";
				if(!groupStyle.equals("Shared")) {
					temp = "<div class=\"form-group\">";
					allActualValues.add(actualAttribute);
				}
				if(groupStyle.equals("Shared") &&  (attributeType.equals("Relationship")) ) {
					maximumNumberofObjectOccurrence = attributeDetails.getMaximumNumberofObjectOccurrence();
					currentGroupRelElement.add(relElement+"---"+maximumNumberofObjectOccurrence);
					String currentRelType =  attributeDetails.getRelationship();
					List<String> currentRelTableID = new ArrayList<String>();
					if(targetRelationship_Element.equals("N/A")) {
						relElement = sourceRelationship_Element;
						x = enterpriseDAO.getRelValueFromRelTable(dbName,sourceRelationship_Element.replaceAll("\\s+", "_"),tableName,"Source_Attribute_Value",row_name.get(0),"Bidirection_Relationship_Pair",bidirectionRelationshipPair,"Destination_Attribute_Value");
//						currentRelTableID = enterpriseDAO.getRelTableIDs(dbName, currentRelType, row_name.get(0), x.);
						List<String> RelRowID = enterpriseDAO.getRelValueFromRelTable(dbName,sourceRelationship_Element.replaceAll("\\s+", "_"),tableName,"Source_Attribute_Value",row_name.get(0),"Bidirection_Relationship_Pair",bidirectionRelationshipPair,"id");
						AllRelRowIDs.addAll(RelRowID);
					}
					else {
						relElement = targetRelationship_Element;
						x = enterpriseDAO.getRelValueFromRelTable(dbName,tableName,targetRelationship_Element.replaceAll("\\s+", "_"),"Destination_Attribute_Value",row_name.get(0),"Bidirection_Relationship_Pair",bidirectionRelationshipPair,"Source_Attribute_Value");
						List<String> RelRowID = enterpriseDAO.getRelValueFromRelTable(dbName,tableName,targetRelationship_Element.replaceAll("\\s+", "_"),"Destination_Attribute_Value",row_name.get(0),"Bidirection_Relationship_Pair",bidirectionRelationshipPair,"id");
						AllRelRowIDs.addAll(RelRowID);
					}
//					System.out.println("X= "+x);
					String relElementIcon = relElement.replaceAll(" ", "-").replaceAll("_", "-").toLowerCase() + ".svg";
					if (x.size() != 0) {
						String fromColumn = enterpriseDAO.getSelfGeneratedForGivenAttribute(dbName, currentRelType, "From").get(0);
						String toColumn = enterpriseDAO.getSelfGeneratedForGivenAttribute(dbName, currentRelType, "To").get(0);
						for (String object : x) {
							sharedInputString += "<tr><td class=\"elementIcon\" style=\"width: 5px !important\"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/js/examples/editors/images/images1/"+relElementIcon+"\" ></td><td class=\"object_name_form\">"+messageSource.getMessage(object.replaceAll("\\s+", "_"),null,locale)+"</td></tr>";
							sharedInputsCreated++;
							if(targetRelationship_Element.equals("N/A")) {
								System.out.println("if");
								currentRelTableID = enterpriseDAO.getRelTableIDs(dbName, currentRelType,fromColumn,toColumn, object, row_name.get(0));
							}
							else {
								System.out.println("else");
								currentRelTableID = enterpriseDAO.getRelTableIDs(dbName, currentRelType,fromColumn,toColumn, row_name.get(0), object);
							}
							AllRelTableIDs.addAll(currentRelTableID);
						}
					}
					
					
					if (!(groupCaption.equals(attributeDetailsForNext.getGroupCaption())) || i == loopSize - 1) {
						allActualValues.add(groupCaption);
						inputTagId = groupCaption.replaceAll("\\s+", "_").replace('?', '_')+"21"+tabsID_count;
						allIds.add(inputTagId);
//						System.out.println("Group Relationship Elements: "+currentGroupRelElement);
						maximumNumberofObjectOccurrence = attributeDetails.getMaximumNumberofObjectOccurrence();
						temp += "<div align=\"right\"><i onclick=\"showRelationsObjects('"+tableName+"','"+row_name.get(0)+"','"+currentGroupRelElement +"', '"
								+ inputTagId+"','"+maximumNumberofObjectOccurrence+"', 'btnedit"+tabsID_count+"');\" class=\"fa fa-plus-square plus_and_info_button\" > </i></div>";
						temp += "<table id=\""+inputTagId+"\" class=\"table table-striped table-bordered\" style=\"width:100%\">";
						temp += "<thead class=\"formTablehead\"> <tr> <th style=\"width: 5px !important\">Type</th> <th>Name</th></tr> </thead>";
						/*
						 * temp += "<tbody class=\"table_data\">" +
						 * "<tr><td class = \"first_td\"></td><td class=\"object_name_form\"></td></tr>"
						 * + "</tbody>";
						 */
						temp += "<tbody class=\"table_data\">";
						if(!sharedInputString.equals("")) {
							temp += sharedInputString;
							for(int j=0;j<4-sharedInputsCreated;j++) {
								temp += "<tr><td class = \"first_td elementIcon\"></td><td class=\"object_name_form\"></td></tr>";
							}
						}else {
							for(int j=0;j<4;j++) {
								temp += "<tr><td class = \"first_td elementIcon\"></td><td class=\"object_name_form\"></td></tr>";
							}
						}
						
						temp += "</tbody>";
						temp += "</table>";
						currentGroupRelElement.clear();
						sharedInputString = "";
						sharedInputsCreated = 0;
					}
				}else {
					inputTagId = attributeValue.replaceAll("\\s+", "_").replace('?', '_')+"21"+tabsID_count;
					allIds.add(inputTagId);
					temp += "<span style=\"float:left; \">" + actualAttribute
							+ "</span><span title=\"Information\" style=\"float:left;margin-left:5px;\"><i onclick=\"information_modal('"
							+ actualAttribute + "','" + attributeTip
							+ "')\" class=\"fa fa-info-circle plus_and_info_button\"></i></span>";
					if (attributeType.equals("Relationship")) {
						maximumNumberofObjectOccurrence = attributeDetails.getMaximumNumberofObjectOccurrence();
						if(targetRelationship_Element.equals("N/A")) {
							relElement = sourceRelationship_Element;
							x = enterpriseDAO.getRelValueFromRelTable(dbName,sourceRelationship_Element.replaceAll("\\s+", "_"),tableName,"Source_Attribute_Value",row_name.get(0),"Bidirection_Relationship_Pair",bidirectionRelationshipPair,"Destination_Attribute_Value");
							List<String> RelRowID = enterpriseDAO.getRelValueFromRelTable(dbName,sourceRelationship_Element.replaceAll("\\s+", "_"),tableName,"Source_Attribute_Value",row_name.get(0),"Bidirection_Relationship_Pair",bidirectionRelationshipPair,"id");
							AllRelRowIDs.addAll(RelRowID);
						}
						else {
							relElement = targetRelationship_Element;
							x = enterpriseDAO.getRelValueFromRelTable(dbName,tableName,targetRelationship_Element.replaceAll("\\s+", "_"),"Destination_Attribute_Value",row_name.get(0),"Bidirection_Relationship_Pair",bidirectionRelationshipPair,"Source_Attribute_Value");
							List<String> RelRowID = enterpriseDAO.getRelValueFromRelTable(dbName,tableName,targetRelationship_Element.replaceAll("\\s+", "_"),"Destination_Attribute_Value",row_name.get(0),"Bidirection_Relationship_Pair",bidirectionRelationshipPair,"id");
							AllRelRowIDs.addAll(RelRowID);
						}
						currentGroupRelElement.add(relElement+"---"+maximumNumberofObjectOccurrence);
						System.out.println("X2= "+x);
						if (x.size() == 0) {
							x.add("");
						}
						String relElementIcon = relElement.replaceAll(" ", "-").replaceAll("_", "-").toLowerCase() + ".svg";
						temp += "<div align=\"right\"><i onclick=\"showRelationsObjects('"+tableName+"','"+row_name.get(0)+"','" + currentGroupRelElement + "','"
								+ inputTagId+"','"+maximumNumberofObjectOccurrence+"', 'btnedit"+tabsID_count+"');\" class=\"fa fa-plus-square plus_and_info_button\" > </i></div>";
						//temp += "<input id=\"" + inputTagId+ "\" disabled=\"disabled\" class=\"form-control\" value=\"" + x.get(0) + "\">";
						temp += "<table id=\""+inputTagId+"\" class=\"table table-striped table-bordered\" style=\"width:100%\">";
						temp += "<thead class=\"formTablehead\"> <tr> <th style=\"width: 5px !important\">Type</th> <th>Name</th></tr> </thead>";
						temp += "<tbody class=\"table_data\">";
						int relCreated=0;
						if(x.get(0).equals("")) {
							for(int j=0;j<4;j++) {
								temp += "<tr><td class = \"first_td elementIcon\"></td><td class=\"object_name_form\"></td></tr>";
							}
						}
						else {
							for (String object : x) {
								temp += "<tr><td class=\"elementIcon\" style=\"width: 5px !important\"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/js/examples/editors/images/images1/"+relElementIcon+"\" ></td><td class=\"object_name_form\">"+object+"</td></tr>";
								relCreated++;
							}
						}
						if(relCreated<4) {
							for(int j=0;j<4-relCreated;j++) {
								temp += "<tr><td class = \"first_td elementIcon\"></td><td class=\"object_name_form\"></td></tr>";
							}
						}
						relCreated = 0;
						
						temp += "</tbody>";
						temp += "</table>";
						currentGroupRelElement.clear();
					} else {
						if (enterpriseDAO.getRelTableData(dbName,tableName,FROM_selfGeneratedValue.get(0),TO_selfGeneratedValue.get(0),rowObject,columnObject,a).size()>0){
							x = enterpriseDAO.getRelTableData(dbName,tableName,FROM_selfGeneratedValue.get(0),TO_selfGeneratedValue.get(0),rowObject,columnObject,a);
						}else {
							x.add("");
						}
						if (a.equals(selfGeneratedValue.get(0))) {
							row_name.add(x.get(0));
							row_id = enterpriseDAO.getRowWithCondition(dbName, tableName,"id",selfGeneratedValue.get(0),row_name.get(0));
						}
						if (attributeFormat.equals("List")) {
							String valuesString = allowableValues;
							String[] arrayString = new String[0];
							if (valuesString != null)
								arrayString = valuesString.split(";");
							temp += "<select class=\"form-control\" id=\""+inputTagId+ "\" >";
							//temp += "<option disabled=\"disabled\" selected> -- Select -- </option>";
							if (x.size() == 1 && x.get(0).equals("")) {
								temp += "<option disabled=\"disabled\" selected> "+ messageSource.getMessage("select_dropdown".replaceAll("\\s+", "_"),null,locale)+" </option>";
							}
							for (String val1 : arrayString) {
								if (val1.equals(x.get(0))) {
									temp += "<option selected value=\"" + val1 + "\">" + messageSource.getMessage(val1.replaceAll("\\s+", "_"),null,locale) + "</option>";
								} else
									temp += "<option value=\"" + val1 + "\">" + messageSource.getMessage(val1.replaceAll("\\s+", "_"),null,locale) + "</option>";
							}
							temp += "</select>";
						} else if (attributeFormat.equals("CheckBox")) {
							String temp2 = "";
							if (x.get(0).equals("True")) {
								temp2 = "Checked";
							}
							checkboxIds.add(inputTagId);
							temp += "&nbsp;&nbsp;&nbsp;<input id=\""+ inputTagId+"\" type=\"checkbox\" name=\"" + attributeValue + "\" style=\"margin-top:3px\" required=\"required\"  value=\"" + x.get(0) + "\" " + temp2 + ">";
						} else if (attributeFormat.equals("Time")) {
							temp += "<input class=\"form-control time_class\" id=\""+inputTagId+"\" type=\"time\" name=\""
									+ attributeValue + "\" required=\"required\" value=\"" + x.get(0) + "\">";
						} else if (attributeFormat.equals("Date")) {
							temp += "<input class=\"form-control date_class\" id=\""+inputTagId+ "\" type=\"date\" name=\""
									+ attributeValue + "\" required=\"required\" value=\"" + x.get(0) + "\">";
						} else if (attributeFormat.equals("Rich Text")) {
							temp += "<textarea rows=\"4\" class=\"form-control\" id=\""+inputTagId+ "\" name=\""
									+ attributeValue + "\" >" + x.get(0) + "</textarea>";
						} 
						  else if (attributeFormat.equals("Radio")) {
							  	radioClass = "groupCaption".replaceAll("\\s+", "_")+tabsID_count;
								String temp2 = "";
								String val = "value = \"off\"";
								if(x.get(0).equals("on")) {
									temp2 = "checked=\"checked\"";
									val = "value = \"on\"";
								}
								temp += "&nbsp;&nbsp;&nbsp;<input type=\"radio\" id=\""+inputTagId+ "\" radioForAccess=\""+attributeValue+"\" class=\""+radioClass+"\" onchange=\"changeRadioValue('"+inputTagId+"','"+radioClass+"')\" name=\""
										+ groupCaption + "\" "+val+" "+temp2+"/>";
						}
						else {
							temp += "<input class=\"form-control\" id=\""+inputTagId+"\" type=\"text\" name=\""
									+ attributeValue + "\" required=\"required\" value=\"" + x.get(0) + "\">";
						}
					}
				}
				if(!groupStyle.equals("Shared"))
					temp += "</div>";
				if (isGrouped.equals("Yes")) {
					if (!(previousGroup.equals(groupCaption))) {
						if(!groupStyle.equals("Shared")) {
							formData += "<div class=\"border_class\">";
							formData += "<h3>" + messageSource.getMessage(groupCaption.replaceAll("\\s+", "_"),null,locale) + "</h3>";
						}
						else {
							formData += "<div class=\"form-group\">";
							formData += "<span style=\"float:left;\">" + messageSource.getMessage(groupCaption.replaceAll("\\s+", "_"),null,locale) + "</span>";
						}
					}
					formData += temp;
					if (!(groupCaption.equals(attributeDetailsForNext.getGroupCaption())) || i == loopSize - 1) {
						if(!groupStyle.equals("Shared"))
							formData += "</div>";
						else 
							formData += "</div>";
					}
					previousGroup = groupCaption;
				} else {
					formData += temp;
				}
				if (!(pageTitle.equals(attributeDetailsForNext.getPageTitle())) || i == loopSize - 1) {
					formData += "</div>";
				}
				previousPageTitle = pageTitle;
			}
			if (indexOfNext < attributeDetailsList.size() - 1)
				indexOfNext++;
		}
		formData += "</form>";
		formData += "</div>";

		tabsDivs += "</ul>";
		formData = tabsDivs + formData;

		HashMap<String, ArrayList<String>> allData = new HashMap<String, ArrayList<String>>();

		List<String> formData1 = new ArrayList<String>();
		formData1.add(formData);
		
		List<String> radioClassArr = new ArrayList<String>();
		radioClassArr.add(radioClass);
		
		allData.put("formData", (ArrayList<String>) formData1);
		allData.put("checkboxIds", (ArrayList<String>) checkboxIds);
		allData.put("attributeNames", (ArrayList<String>) allActualValues);
		allData.put("allIds", (ArrayList<String>) allIds);
		allData.put("row_id", (ArrayList<String>) row_id);
		allData.put("CurrenttabID", (ArrayList<String>) CurrenttabID_list);
		allData.put("row_name", (ArrayList<String>) row_name);
		allData.put("AllRelRowIDs", (ArrayList<String>) AllRelRowIDs);
		allData.put("editButtonId", (ArrayList<String>) editButtonId);
		allData.put("object_name_id", (ArrayList<String>) object_name_id);
		allData.put("relationsClassList", (ArrayList<String>) relationsClassList);
		allData.put("last_time_updated", (ArrayList<String>) last_time_updated);
		allData.put("AllRelTableIDs", (ArrayList<String>) AllRelTableIDs);
		allData.put("radioClass", (ArrayList<String>) radioClassArr);

		return allData;
	
	}
	
	//
	@RequestMapping(value = "getColumnElements")
	public @ResponseBody List<String> getColumnElements(@RequestParam String rowElement){
		rowElement = rowElement.replaceAll("\\s+", "_");
		String colElement = null;
		List<String> colElements = enterpriseDAO.getColumn_or_RowElements(dbName,rowElement,colElement);
		return colElements;
	}
	
	@RequestMapping(value = "getRowElements")
	public @ResponseBody List<String> getRowElements(@RequestParam String colElement){
		colElement = colElement.replaceAll("\\s+", "_");
		String rowElement = null;
		List<String> rowElements = enterpriseDAO.getColumn_or_RowElements(dbName,rowElement,colElement);
		return rowElements;
	}
	
	@RequestMapping(value = "getRelationsForMatrix")
	public @ResponseBody List<String> getRelationsForMatrix(@RequestParam String colElement,String rowElement){
		colElement = colElement.replaceAll("\\s+", "_");
		rowElement = rowElement.replaceAll("\\s+", "_");
		List<String> relationships = enterpriseDAO.getRelationsForMatrix(dbName,rowElement,colElement);
		return relationships;
	}
	
//	@RequestMapping(value = "getCatalogTableFromXML")
//	public @ResponseBody HashMap<String,String> getCatalogTableFromXML(@RequestParam String catalog_id, HttpSession session) throws JAXBException, FileNotFoundException {
//	String thead = "";
//	String tbody = "";
//	HashMap<String, String> allData = new HashMap<String,String>();
//	List<String> namesArray = new ArrayList<String>(); 
//	int indexForRowNames = 0;
//	List<ArrayList<String>> tableCompleteData = new ArrayList<ArrayList<String>>();
//	List<List<String>> link_and_elementName =  enterpriseDAO.getXML_link_and_element_name_FromDB(catalog_id);
//	String elementName = link_and_elementName.get(0).get(0);
//	String xml_link = link_and_elementName.get(1).get(0);
//	System.out.println("xml link: "+xml_link);
//	JAXBContext context = JAXBContext.newInstance(Catalog.class);
//	Unmarshaller um = context.createUnmarshaller();
//	Catalog ct = (Catalog) um.unmarshal(new FileReader(xml_link));
//
//	ReloadableResourceBundleMessageSource messageSource=new ReloadableResourceBundleMessageSource();
//	messageSource.setBasename("classpath:net/lt/eaze/resources/locale/messages");
//	messageSource.setDefaultEncoding("UTF-8");
//	messageSource.setUseCodeAsDefaultMessage(true);
//	Locale locale = LocaleContextHolder.getLocale();
//	
//	List<thead> theadsList = ct.getTheads();
//	int indexForAutoSize = 0;
//	for(thead th_list: theadsList) {
//		List<String> th = th_list.getTh();
//		int thIndex = 0;
//		for(String obj:th) {
////			thead+="<th>"+obj+"</th>";
//			thead+="<th>"+messageSource.getMessage(obj.replaceAll("\\s+", "_"),null,locale)+"</th>";
//		}
//	}
//	List<tbody> tbodyList = ct.getTbodies();
//	int dataRowsIndex = 1;
//	for(tbody td_list: tbodyList) {
//		List<tr> tr = td_list.getTr();
//		// System.out.println("tr: "+tr);
//		if(tr != null ) {
//		for(tr obj:tr) {
//			int tdIndex = 0;
//			tbody += "<tr>";
////			Row dataRows = sheet.createRow(dataRowsIndex++);
//			List<String> td_List = obj.getTd();
//			int td_list_index = td_List.size();
//			for(int i=0;i<td_list_index;i++) {
//				String obj1 = td_List.get(i);
//				if(i==0) {
//					tbody += "<td style=\"cursor:pointer;\" onclick=\"updateFormModal('"+obj1+"','"+elementName+"',"+null+")\">"+obj1+"</td>";
//				}else {
//					tbody+="<td>"+obj1+"</td>";
//				}
//			}
////			for(String obj1:td_List) {
//////				tbody += "<td>"+obj1+"</td>";
////				tbody+="<td>"+obj1+"</td>";
////			}
//			tbody += "</tr>";
//		}
//	}
//	}
//	String company_name = (String) session.getAttribute("company_name");
//	List<String> scriptNames = enterpriseDAO.getCatalogScripts(catalog_id, company_name);
//	String scriptNamesStr = "";
//	if(scriptNames.size()>0) {
//		for(String obj:scriptNames) {
//			scriptNamesStr+=obj+";";
//		}
//		scriptNamesStr = scriptNamesStr.substring(0, scriptNamesStr.length() - 1);
//	}
//	allData.put("scriptNames",scriptNamesStr);
//	allData.put("thead",thead);
//	allData.put("tbody",tbody);
//	return allData;
//}
	
	@RequestMapping(value = "getCatalogTableFromXML")
	public @ResponseBody HashMap<String, ArrayList<ArrayList<String>>> getCatalogTableFromXML(@RequestParam String catalog_id, HttpSession session) throws JAXBException, FileNotFoundException {
	String thead = "";
	String tbody = "";
	HashMap<String, ArrayList<ArrayList<String>>> allData = new HashMap<String, ArrayList<ArrayList<String>> >();
	
	ArrayList<ArrayList<String>> header = new ArrayList<ArrayList<String>>();
	ArrayList<String> tempHeader = new ArrayList<String>();
	ArrayList<ArrayList<String>> rowData = new ArrayList<ArrayList<String>>();
	
	List<String> namesArray = new ArrayList<String>(); 
	int indexForRowNames = 0;
	List<ArrayList<String>> tableCompleteData = new ArrayList<ArrayList<String>>();
	List<List<String>> link_and_elementName =  enterpriseDAO.getXML_link_and_element_name_FromDB(catalog_id);
	String elementName = link_and_elementName.get(0).get(0);
	String xml_link = link_and_elementName.get(1).get(0);
	System.out.println("xml link: "+xml_link);
	JAXBContext context = JAXBContext.newInstance(Catalog.class);
	Unmarshaller um = context.createUnmarshaller();
	Catalog ct = (Catalog) um.unmarshal(new FileReader(xml_link));

	ReloadableResourceBundleMessageSource messageSource=new ReloadableResourceBundleMessageSource();
	messageSource.setBasename("classpath:net/lt/eaze/resources/locale/messages");
	messageSource.setDefaultEncoding("UTF-8");
	messageSource.setUseCodeAsDefaultMessage(true);
	Locale locale = LocaleContextHolder.getLocale();
	
	List<thead> theadsList = ct.getTheads();
	int indexForAutoSize = 0;
	for(thead th_list: theadsList) {
		List<String> th = th_list.getTh();
		int thIndex = 0;
		for(String obj:th) {
//			thead+="<th>"+obj+"</th>";
			thead+="<th>"+messageSource.getMessage(obj.replaceAll("\\s+", "_"),null,locale)+"</th>";
//			System.out.println("header: "+messageSource.getMessage(obj.replaceAll("\\s+", "_"),null,locale));
			
			tempHeader.add(messageSource.getMessage(obj.replaceAll("\\s+", "_"),null,locale));
		}
	}
	
	header.add(tempHeader);
	
	// System.out.println("agTableColumnDefs: "+header);
	List<tbody> tbodyList = ct.getTbodies();
	int dataRowsIndex = 1;
	for(tbody td_list: tbodyList) {
		List<tr> tr = td_list.getTr();
		// System.out.println("tr: "+tr);
		if(tr != null ) {
		for(tr obj:tr) {
			int tdIndex = 0;
			tbody += "<tr>";
//			Row dataRows = sheet.createRow(dataRowsIndex++);
			List<String> td_List = obj.getTd();
			int td_list_index = td_List.size();
				
				ArrayList<String> tempRowData = new ArrayList<String>();
				
			for(int i=0;i<td_list_index;i++) {
				String obj1 = td_List.get(i);
				if(i==0) {
					tbody += "<td style=\"cursor:pointer;\" onclick=\"updateFormModal('"+obj1+"','"+elementName+"',"+null+")\">"+obj1+"</td>";
				}else {
					tbody+="<td>"+obj1+"</td>";
				}
					
					tempRowData.add(obj1);
			}
				rowData.add(tempRowData);
	
			tbody += "</tr>";
		}
	}
	}
	
//	System.out.println("header: "+header.size());
	
	
//	List<HashMap<String, String>> arrayOfObject = new ArrayList<HashMap<String, String>>();
//	
//	for(int i=0; i<rowData.size(); i++) {
//		
//		List<String> currentRow = rowData.get(i);
//		HashMap<String, String> tempHashMap = new HashMap<String,String>();
//		
//		for(int j=0; j<currentRow.size(); j++) {
//			String headerItem = header.get(0).get(j);
//			String bodyItem = currentRow.get(j);
//		
//			tempHashMap.put(headerItem, bodyItem);
//			
//		}
//		arrayOfObject.add(tempHashMap);
//		
//	}
		
//	for(int i=0; i<arrayOfObject.size(); i++) {
//		System.out.println("arrayOfObject: "+arrayOfObject.get(i));
//		System.out.println("");
//		
//	}
	
	ArrayList<ArrayList<String>> scriptNamesStrArrayOfArray = new ArrayList<ArrayList<String>>();
	ArrayList<String> scriptNamesStrArray = new ArrayList<String>();
	String company_name = (String) session.getAttribute("company_name");
	List<String> scriptNames = enterpriseDAO.getCatalogScripts(catalog_id, company_name);
	String scriptNamesStr = "";
	if(scriptNames.size()>0) {
		for(String obj:scriptNames) {
			scriptNamesStr+=obj+";";
		}
		scriptNamesStr = scriptNamesStr.substring(0, scriptNamesStr.length() - 1);
		
		/////////////////////////////////////////////////////////
		scriptNamesStrArray.add(scriptNamesStr);
		scriptNamesStrArrayOfArray.add(scriptNamesStrArray);
		/////////////////////////////////////////////////////////		
	}
//	allData.put("scriptNames",scriptNamesStr);
//	allData.put("thead",thead);
//	allData.put("tbody",tbody);
//	allData.put("ag-table-header",header.toString());
//	allData.put("ag-table-body",arrayOfObject.toString());
	allData.put("scriptNames", scriptNamesStrArrayOfArray);
	allData.put("header", header);
	allData.put("rowData", rowData);
	return allData;
}
	
	
	@RequestMapping(value = "getCatalogTable")
	public @ResponseBody HashMap<String, ArrayList<ArrayList<String>>> getCatalogTable(@RequestParam String tableName, String catalog_name, HttpSession session) throws JAXBException, FileNotFoundException {
		
		String path = session.getServletContext().getRealPath("/");
		String[] splitString = path.split("\\.metadata");
		
		ReloadableResourceBundleMessageSource messageSource=new ReloadableResourceBundleMessageSource();
		messageSource.setBasename("classpath:net/lt/eaze/resources/locale/messages");
		messageSource.setDefaultEncoding("UTF-8");
		messageSource.setUseCodeAsDefaultMessage(true);
		Locale locale = LocaleContextHolder.getLocale();
		
//		For Local
//		String filePath = splitString[0] + remainingString;
//		File folder = new File(filePath);
//		File[] listOfFiles = folder.listFiles();
//		for (File file : listOfFiles) {
//		    if (file.isFile()) {
//		        try (OutputStream output = new FileOutputStream(filePath+"\\"+file.getName(), true)) {
//		            Properties prop = new Properties();
//		            // set the properties value
//		            prop.setProperty(catalog_name.replaceAll(" ", "_"), catalog_name);
//		            // save properties to project root folder
//		            prop.store(output, null);
//		            output.close();
//		        } catch (IOException io) {
//		            io.printStackTrace();
//		        }
//		    }
//		}
		
//		For Online
//		File folder = new File(path);
//		File[] listOfFiles = folder.listFiles();
//		for (File file : listOfFiles) {
//		    if (file.isFile()) {
//		        try (OutputStream output = new FileOutputStream(path+"\\"+file.getName(), true)) {
//		            Properties prop = new Properties();
//		            // set the properties value
//		            prop.setProperty(catalog_name.replaceAll(" ", "_"), catalog_name);
//		            // save properties to project root folder
//		            prop.store(output, null);
//		            output.close();
//		        } catch (IOException io) {
//		            io.printStackTrace();
//		        }
//		    }
//		}
		
		String thead = "";
		
		ArrayList<ArrayList<String>> header = new ArrayList<ArrayList<String>>();
		ArrayList<String> tempHeader = new ArrayList<String>();
		ArrayList<ArrayList<String>> rowData = new ArrayList<ArrayList<String>>();
		
		String tbody = "";
		// HashMap<String, String> allData = new HashMap<String,String>();
		HashMap<String, ArrayList<ArrayList<String>>> allData = new HashMap<String, ArrayList<ArrayList<String>> >();
		List<String> namesArray = new ArrayList<String>(); 
		int indexForRowNames = 0;
		List<ArrayList<String>> tableCompleteData = new ArrayList<ArrayList<String>>(); 
		int queryCount = 0;
		int getrowsloop = 0;
		int sharedRelQueries = 0;
		int nonSharedRelQueries = 0;
		List<attributesInformationModel> attributeDetailsList = enterpriseDAO.getAllAttributeDetails(dbName,tableName.replaceAll("\\s+", "_"));
		queryCount++;
		List<RelationsModel> RelationshipTable = enterpriseDAO.getRelationshipTableForImpex(dbName, tableName.replaceAll("\\s", "_"), tableName.replaceAll("\\s", "_"));
		queryCount++;
		int loopSize = attributeDetailsList.size();
		int indexOfNext = 1;
		String targetRelationship_Element = "";
		String sourceRelationship_Element = "";
		String bidirectionRelationshipPair = "";
		
		List<String> currentGroupRelElements = new ArrayList<String>();
		List<String> currentGroupBidirectionalCodes = new ArrayList<String>();
		for(int i=0;i<loopSize;i++) {
			attributesInformationModel attributeDetails = attributeDetailsList.get(i);
			List<String> x = new ArrayList<String>();
			String att_name = attributeDetails.getActualAttribute();
			attributesInformationModel attributeDetailsForNext = attributeDetailsList.get(indexOfNext);
			String groupStyle = attributeDetails.getGroupStyle();
			String attributeType = attributeDetails.getAttributeType();
			String groupCaption = attributeDetails.getGroupCaption();
		    String selfGeneratedValue = attributeDetails.getSelfGeneratedAttribute(); 
		    String relType = attributeDetails.getRelationship();
		    targetRelationship_Element = attributeDetails.getTargetRelationship_Element();
			sourceRelationship_Element = attributeDetails.getSourceRelationship_Element();
			bidirectionRelationshipPair = attributeDetails.getBidirectionRelationshipPair();
			if(!groupStyle.equals("Shared")) {
				thead+="<th>"+att_name+"</th>";
				tempHeader.add(messageSource.getMessage(att_name.replaceAll("\\s+", "_"),null,locale));
			}
			if(groupStyle.equals("Shared") && (attributeType.equals("Relationship")) ) {
				
				
				// new code starts
				
				String currentRelType =  attributeDetails.getRelationship();
				if(targetRelationship_Element.equals("N/A")) {
					currentGroupRelElements.add(sourceRelationship_Element);
				}else {
					currentGroupRelElements.add(targetRelationship_Element);
				}
				currentGroupBidirectionalCodes.add("'"+bidirectionRelationshipPair+"'");
				
				int namesArrLength = namesArray.size();
				
				//new code ends 
				
				if (!(groupCaption.equals(attributeDetailsForNext.getGroupCaption())) || i == loopSize - 1) {
					thead+="<th>"+groupCaption+"</th>";
					tempHeader.add(messageSource.getMessage(groupCaption.replaceAll("\\s+", "_"),null,locale));
					List<String> currentGroupAllRelations = new ArrayList<String>();
					for(int j=0;j<namesArrLength; j++) {
						String row_name =  namesArray.get(j);
//						List<String> x1 = new ArrayList<String>();
						if(targetRelationship_Element.equals("N/A")) {
							String target = "'"+tableName.replaceAll("\\s+", "_")+"'";
							String source = "(";
							
							for(String t:currentGroupRelElements) {
								source+="'"+t+"' OR ";
							}
							source = source.substring(0, source.length() - 4);
							source+=")";
							//
							List<String> rowsList = enterpriseDAO.catalogRelationElementsForShared(dbName,"Destination_Attribute_Value", source, target, "Source_Attribute_Value", row_name, relType,currentGroupBidirectionalCodes.toString());
							sharedRelQueries++;
							queryCount++;
							if(rowsList.size()==0) {
								rowsList.add("");
							}
							String a = "";
							for(String row:rowsList) {
								a+=row+"<br>";
							}
							a = a.substring(0, a.length() - 4);
							currentGroupAllRelations.add(a);
						}
						else {
							String source = "'"+tableName.replaceAll("\\s+", "_")+"'";
							String target = "(";
							
							for(String t:currentGroupRelElements) {
								target+="'"+t+"' OR ";
							}
							target = target.substring(0, target.length() - 4);
							target+=")";
							//
							List<String> rowsList = enterpriseDAO.catalogRelationElementsForShared(dbName,"Source_Attribute_Value", source, target, "Destination_Attribute_Value", row_name, relType,currentGroupBidirectionalCodes.toString());
							sharedRelQueries++;
							queryCount++;
							if(rowsList.size()==0) {
								rowsList.add("");
							}
							String a = "";
							for(String row:rowsList) {
								a+=row+"<br>";
							}
							a = a.substring(0, a.length() - 4);
							currentGroupAllRelations.add(a);
						}
						
					}
					tableCompleteData.add((ArrayList<String>) currentGroupAllRelations);
					currentGroupRelElements.clear();
					currentGroupBidirectionalCodes.clear();
				}
				
			}else {
				if (attributeType.equals("Relationship")) {
					int namesArrLength = namesArray.size();
					List<String> currentRelations = new ArrayList<String>();
					for (int j = 0; j < namesArrLength; j++) {
						String row_name = namesArray.get(j);
						if (targetRelationship_Element.equals("N/A")) {
							String target = "'" + tableName.replaceAll("\\s+", "_") + "'";
							String source = "'"+sourceRelationship_Element+"'";
							List<String> rowsList = new ArrayList<String>();
							for(int ind=0; ind<RelationshipTable.size(); ind++) {
								//if( (source.equals(RelationshipTable.get(j).getSourceRelElement())) && (target.equals(RelationshipTable.get(j).getTargetRelElement())) && (relType.equals(RelationshipTable.get(j).getRelationshipType())) && (bidirectionRelationshipPair.equals(RelationshipTable.get(j).getBidirectionRelationshipPair())) && (RelationshipTable.get(j).getTargetAttValue().equals(target)) ) {
								if( (sourceRelationship_Element.equals(RelationshipTable.get(ind).getSourceRelElement())) && (tableName.replaceAll("\\s+", "_").equals(RelationshipTable.get(ind).getTargetRelElement())) && (relType.equals(RelationshipTable.get(ind).getRelationshipType())) && (bidirectionRelationshipPair.equals(RelationshipTable.get(ind).getBidirectionRelationshipPair())) && (RelationshipTable.get(ind).getSourceAttValue().equals(row_name)) ) {	
								String tempCellValue = RelationshipTable.get(ind).getTargetAttValue().toString();
									rowsList.add(tempCellValue);
								}
							}
//							List<String> rowsList = enterpriseDAO.catalogRelationElements(dbName,"Destination_Attribute_Value", source, target, "Source_Attribute_Value", row_name,relType,bidirectionRelationshipPair);
							if (rowsList.size() == 0) {
								rowsList.add("");
							}
							String a = "";
							for (String row : rowsList) {
								a += row + "<br>";
							}
							a = a.substring(0, a.length() - 4);
							currentRelations.add(a);
						} else {
							String source = "'" + tableName.replaceAll("\\s+", "_") + "'";
							String target = "'"+targetRelationship_Element+"'";
							
							List<String> rowsList = new ArrayList<String>();
							for(int ind=0; ind<RelationshipTable.size(); ind++) {
								if( (tableName.replaceAll("\\s+", "_").equals(RelationshipTable.get(ind).getSourceRelElement())) && (targetRelationship_Element.equals(RelationshipTable.get(ind).getTargetRelElement())) && (relType.equals(RelationshipTable.get(ind).getRelationshipType())) && (bidirectionRelationshipPair.equals(RelationshipTable.get(ind).getBidirectionRelationshipPair())) && (RelationshipTable.get(ind).getTargetAttValue().equals(row_name)) ) {
									String tempCellValue = RelationshipTable.get(ind).getSourceAttValue().toString();
									rowsList.add(tempCellValue);
								}
							}
//							List<String> rowsList = enterpriseDAO.catalogRelationElements(dbName,"Source_Attribute_Value", source, target, "Destination_Attribute_Value", row_name,relType,bidirectionRelationshipPair);
							if (rowsList.size() == 0) {
								rowsList.add("");
							}
							String a = "";
							for (String row : rowsList) {
								a += row + "<br>";
							}
							a = a.substring(0, a.length() - 4);
							currentRelations.add(a);
						}
			
					}
					tableCompleteData.add((ArrayList<String>) currentRelations);
				}
				else {
					List<String> rowsList = enterpriseDAO.getRows1(dbName, tableName.replaceAll("\\s+", "_"),selfGeneratedValue);
					getrowsloop++;
					queryCount++;
					tableCompleteData.add((ArrayList<String>) rowsList);
					if(att_name.equals("Name")) {
						namesArray = rowsList;
					}
					
				}
			}
			if (indexOfNext < attributeDetailsList.size() - 1)
				indexOfNext++;
		}
		header.add(tempHeader);
		int dataLength = tableCompleteData.get(0).size();

		for(int i = 0; i<dataLength; i++) {
			ArrayList<String> tempRowData = new ArrayList<String>();
			
			tbody += "<tr>";
			for(ArrayList<String> d : tableCompleteData){
				String val = d.get(i);
				val = val.replaceAll("##", ";");
				if(val.equals("1900-01-01")) {
					val = "";
				}
				if(namesArray.contains(val)) {
					tbody += "<td style=\"cursor:pointer;\" onclick=\"updateFormModal('"+val+"','"+tableName+"',"+null+")\">"+val+"</td>";
					tempRowData.add(val);
				}else {
					tbody += "<td>"+val+"</td>";
					tempRowData.add(val);					
				}
			}
			
			rowData.add(tempRowData);
			
			tbody += "</tr>";
		}
		// allData.put("thead",thead);
		// allData.put("tbody",tbody);
		allData.put("header", header);
		allData.put("rowData", rowData);
		return allData;
	}	
	
	@RequestMapping(value = "getCatalogTable_rtl")
	public @ResponseBody HashMap<String,String> getCatalogTable_rtl(@RequestParam String tableName, String catalog_name, HttpSession session) throws JAXBException, FileNotFoundException {
		
//		String path = session.getServletContext().getRealPath("/");
//		String[] splitString = path.split("\\.metadata");
////		Locale locale = LocaleContextHolder.getLocale();
//		
////		For Local
//		String filePath = splitString[0] + remainingString;
//		File folder = new File(filePath);
//		File[] listOfFiles = folder.listFiles();
//		for (File file : listOfFiles) {
//		    if (file.isFile()) {
//		        try (OutputStream output = new FileOutputStream(filePath+"\\"+file.getName(), true)) {
//		            Properties prop = new Properties();
//		            // set the properties value
//		            prop.setProperty(catalog_name.replaceAll(" ", "_"), catalog_name);
//		            // save properties to project root folder
//		            prop.store(output, null);
//		            output.close();
//		        } catch (IOException io) {
//		            io.printStackTrace();
//		        }
//		    }
//		}
		
		ReloadableResourceBundleMessageSource messageSource=new ReloadableResourceBundleMessageSource();
		messageSource.setBasename("classpath:net/lt/eaze/resources/locale/messages");
		messageSource.setDefaultEncoding("UTF-8");
		messageSource.setUseCodeAsDefaultMessage(true);
		Locale locale = LocaleContextHolder.getLocale();
		
//		For Online
//		File folder = new File(path);
//		File[] listOfFiles = folder.listFiles();
//		for (File file : listOfFiles) {
//		    if (file.isFile()) {
//		        try (OutputStream output = new FileOutputStream(path+"\\"+file.getName(), true)) {
//		            Properties prop = new Properties();
//		            // set the properties value
//		            prop.setProperty(catalog_name.replaceAll(" ", "_"), catalog_name);
//		            // save properties to project root folder
//		            prop.store(output, null);
//		            output.close();
//		        } catch (IOException io) {
//		            io.printStackTrace();
//		        }
//		    }
//		}
		
		String thead = "";
		String tbody = "";
		HashMap<String, String> allData = new HashMap<String,String>();
		List<String> namesArray = new ArrayList<String>(); 
		int indexForRowNames = 0;
		List<ArrayList<String>> tableCompleteData = new ArrayList<ArrayList<String>>(); 
		List<attributesInformationModel> attributeDetailsList = enterpriseDAO.getAllAttributeDetails(dbName,tableName.replaceAll("\\s+", "_"));
		int loopSize = attributeDetailsList.size();
		int indexOfNext = 1;
		String targetRelationship_Element = "";
		String sourceRelationship_Element = "";
		String bidirectionRelationshipPair = "";
		
		List<String> currentGroupRelElements = new ArrayList<String>();
		List<String> currentGroupBidirectionalCodes = new ArrayList<String>();
		for(int i=0;i<loopSize;i++) {
			attributesInformationModel attributeDetails = attributeDetailsList.get(i);
			List<String> x = new ArrayList<String>();
			String att_name = attributeDetails.getActualAttribute();
			attributesInformationModel attributeDetailsForNext = attributeDetailsList.get(indexOfNext);
			String groupStyle = attributeDetails.getGroupStyle();
			String attributeType = attributeDetails.getAttributeType();
			String groupCaption = attributeDetails.getGroupCaption();
		    String selfGeneratedValue = attributeDetails.getSelfGeneratedAttribute(); 
		    String relType = attributeDetails.getRelationship();
		    targetRelationship_Element = attributeDetails.getTargetRelationship_Element();
			sourceRelationship_Element = attributeDetails.getSourceRelationship_Element();
			bidirectionRelationshipPair = attributeDetails.getBidirectionRelationshipPair();
			if(!groupStyle.equals("Shared")) {
				thead+="<th>"+messageSource.getMessage(att_name.replaceAll("\\s+", "_"),null,locale)+"</th>";
			}
			if(groupStyle.equals("Shared") && (attributeType.equals("Relationship")) ) {
				
				
				// new code starts
				
				String currentRelType =  attributeDetails.getRelationship();
				if(targetRelationship_Element.equals("N/A")) {
					currentGroupRelElements.add(sourceRelationship_Element);
				}else {
					currentGroupRelElements.add(targetRelationship_Element);
				}
				currentGroupBidirectionalCodes.add("'"+bidirectionRelationshipPair+"'");
				
				int namesArrLength = namesArray.size();
				
				//new code ends 
				
				if (!(groupCaption.equals(attributeDetailsForNext.getGroupCaption())) || i == loopSize - 1) {
					thead+="<th>"+messageSource.getMessage(groupCaption.replaceAll("\\s+", "_"),null,locale)+"</th>";
					List<String> currentGroupAllRelations = new ArrayList<String>();
					for(int j=0;j<namesArrLength; j++) {
						String row_name =  namesArray.get(j);
//						List<String> x1 = new ArrayList<String>();
						if(targetRelationship_Element.equals("N/A")) {
							String target = "'"+tableName.replaceAll("\\s+", "_")+"'";
							String source = "(";
							
							for(String t:currentGroupRelElements) {
								source+="'"+t+"' OR ";
							}
							source = source.substring(0, source.length() - 4);
							source+=")";
							//
							List<String> rowsList = enterpriseDAO.catalogRelationElementsForShared(dbName,"Destination_Attribute_Value", source, target, "Source_Attribute_Value", row_name, relType,currentGroupBidirectionalCodes.toString());
							if(rowsList.size()==0) {
								rowsList.add("");
							}
							String a = "";
							for(String row:rowsList) {
								a+=row+"<br>";
							}
							a = a.substring(0, a.length() - 4);
							System.out.println("a: "+a);
							currentGroupAllRelations.add(a);
						}
						else {
							String source = "'"+tableName.replaceAll("\\s+", "_")+"'";
							String target = "(";
							
							for(String t:currentGroupRelElements) {
								target+="'"+t+"' OR ";
							}
							target = target.substring(0, target.length() - 4);
							target+=")";
							//
							List<String> rowsList = enterpriseDAO.catalogRelationElementsForShared(dbName,"Source_Attribute_Value", source, target, "Destination_Attribute_Value", row_name, relType,currentGroupBidirectionalCodes.toString());
							if(rowsList.size()==0) {
								rowsList.add("");
							}
							String a = "";
							for(String row:rowsList) {
								a+=row+"<br>";
							}
							a = a.substring(0, a.length() - 4);
							System.out.println("a: "+a);
							currentGroupAllRelations.add(a);
						}
						
					}
					tableCompleteData.add((ArrayList<String>) currentGroupAllRelations);
					currentGroupRelElements.clear();
					currentGroupBidirectionalCodes.clear();
				}
				
			}else {
				if (attributeType.equals("Relationship")) {
			
					
				}
				else {
					List<String> rowsList = enterpriseDAO.getRows1(dbName, tableName.replaceAll("\\s+", "_"),selfGeneratedValue);
					tableCompleteData.add((ArrayList<String>) rowsList);
					if(att_name.equals("Name")) {
						namesArray = rowsList;
					}
					
				}
			}
			if (indexOfNext < attributeDetailsList.size() - 1)
				indexOfNext++;
		}
		int dataLength = tableCompleteData.get(0).size();

		for(int i = 0; i<dataLength; i++) {
			
			tbody += "<tr>";
			for(ArrayList<String> d : tableCompleteData){
				System.out.println("d: "+d);
				tbody += "<td>"+d.get(i)+"</td>";
			}
			
			tbody += "</tr>";
		}
//		System.out.println(tbody);
		allData.put("thead",thead);
		allData.put("tbody",tbody);
		return allData;
	}	
	
//	@RequestMapping(value = "/saveMatrixToXML", method = RequestMethod.POST)
//	public @ResponseBody String saveMatrixToXML(@RequestBody Matrix matrix,HttpSession session) throws JAXBException{
//		System.out.println("Matrix: "+matrix);
//		String username = "";
//		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//		if (!(auth instanceof AnonymousAuthenticationToken)) {
//			UserDetails userDetail = (UserDetails) auth.getPrincipal();
//			System.out.println(userDetail);
//			userDetail = (UserDetails) auth.getPrincipal();
//			username = userDetail.getUsername();
//		}
//		String path = session.getServletContext().getRealPath("/");
//		String XML_FILE = path + "/"+matrix.getMatrixName() + ".xml";
//		JAXBContext context = JAXBContext.newInstance(Matrix.class);
//		Marshaller m = context.createMarshaller();
//		m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, Boolean.TRUE);
//		m.marshal(matrix, new File(XML_FILE));
//		enterpriseDAO.insertMatrixInDb(username,matrix,XML_FILE.replace("\\", "\\\\"));
//		return "";
//	}
	
	@RequestMapping(value = "/saveCatalogToXML", method = RequestMethod.POST)
	public @ResponseBody String saveCatalogToXML(@RequestBody Catalog catalog,HttpSession session) throws JAXBException{
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			userDetail = (UserDetails) auth.getPrincipal();
			username = userDetail.getUsername();
		}
		String path = session.getServletContext().getRealPath("/");
		String XML_FILE = path + "/"+catalog.getCatalogName() + ".xml";
		JAXBContext context = JAXBContext.newInstance(Catalog.class);
		Marshaller m = context.createMarshaller();
		m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, Boolean.TRUE);
		m.marshal(catalog, new File(XML_FILE));
		String company_name = (String) session.getAttribute("company_name");
		int response = enterpriseDAO.insertCatalogInDb(username,catalog,XML_FILE.replace("\\", "\\\\"), company_name);
			System.out.println("response: "+response);
		if(response == 000) {
			return "Already Exists!";
		}else {
			
			return "";
		}
	}
	
	@RequestMapping(value = "/downloadCatalogAsExcel", method = RequestMethod.POST)
	public @ResponseBody byte[] downloadCatalogAsExcel(@RequestBody Catalog catalog,HttpSession session) throws JAXBException, FileNotFoundException, DecoderException{
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			userDetail = (UserDetails) auth.getPrincipal();
			username = userDetail.getUsername();
		}
		String path = session.getServletContext().getRealPath("/");
		String EXCEL_FILE = path+catalog.getCatalogName() + ".xlsx";
		String FileNameWithoutPath = catalog.getCatalogName() + ".xlsx";
		XSSFWorkbook workbook = new XSSFWorkbook();
		
	////// PAGE TITLE STYLE ***
		byte[] rgbB = null; // get byte array from hex string
		XSSFColor color = new XSSFColor(rgbB, null);
		String rgbS = "0d286b";// Dark Blue Color
		rgbB = Hex.decodeHex(rgbS); // get byte array from hex string
		color = new XSSFColor(rgbB, null); // IndexedColorMap has no usage until now. So it can be set null.
		rgbB = Hex.decodeHex("169038"); // get byte array from hex string
		color = new XSSFColor(rgbB, null);
		XSSFCellStyle titleCellStyle = (XSSFCellStyle) workbook.createCellStyle();

		XSSFFont titleFont = workbook.createFont();
//			titleFont.setColor(HSSFColor.HSSFColorPredefined.WHITE.getIndex());
		titleFont.setFontHeightInPoints((short) 14);
		titleFont.setBold(true);

//			titleCellStyle.setFillForegroundColor(color);
//			titleCellStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND);
		titleCellStyle.setAlignment(HorizontalAlignment.CENTER);
		titleCellStyle.setVerticalAlignment(VerticalAlignment.CENTER);
		titleCellStyle.setFont(titleFont);/////////
		
		XSSFCellStyle cellLineBreak = (XSSFCellStyle) workbook.createCellStyle();
		cellLineBreak.setWrapText(true);
		cellLineBreak.setVerticalAlignment(VerticalAlignment.CENTER);
		
		XSSFSheet sheet = null;
		sheet = workbook.createSheet(catalog.getElementName());
		String sheetName = catalog.getElementName();
		Row attributeRow = sheet.createRow(0);
		List<thead> theadsList = catalog.getTheads();
		int indexForAutoSize = 0;
		for(thead th_list: theadsList) {
			List<String> th = th_list.getTh();
			int thIndex = 0;
			indexForAutoSize = th.size();
			for(String obj:th) {
				Cell cell = attributeRow.createCell(thIndex++);
				cell.setCellValue((String) obj);
				cell.setCellStyle(titleCellStyle);
				
			}
		}
		List<tbody> tbodyList = catalog.getTbodies();
		int dataRowsIndex = 1;
		for(tbody td_list: tbodyList) {
			List<tr> td = td_list.getTr();
			for(tr obj:td) {
				int tdIndex = 0;
				Row dataRows = sheet.createRow(dataRowsIndex++);
				List<String> td_List = obj.getTd();
				for(String obj1:td_List) {
					obj1 = obj1.replaceAll("<br>", "\n");
					Cell cell = dataRows.createCell(tdIndex++);
					cell.setCellValue((String) obj1);
					cell.setCellStyle(cellLineBreak);
				}
			}
		}
		for(int i=0;i<indexForAutoSize;i++) {
			sheet.autoSizeColumn(i);
		}
		
		//writing file
		
		try {
			FileOutputStream outputStream = new FileOutputStream(EXCEL_FILE);
			workbook.write(outputStream);
			workbook.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		System.out.println("Done");
		
		System.out.println("FileNameWithoutPath: "+FileNameWithoutPath);
		byte[] FileNameWithoutPathInByte = null;
		try {
			FileNameWithoutPathInByte = FileNameWithoutPath.getBytes("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
		return FileNameWithoutPathInByte;
	}
	
	@RequestMapping(value = "/downloadCatalogExcelFile", method = RequestMethod.GET)
	public @ResponseBody ResponseEntity<Object> downloadCatalogExcelFile(@RequestParam String EXCEL_FILE,
			HttpSession session) throws JAXBException, FileNotFoundException {
		// System.out.println("here");
		// System.out.println("EXCEL_FILE: "+EXCEL_FILE);
		String path = session.getServletContext().getRealPath("/");
		EXCEL_FILE = path+EXCEL_FILE;
		File file = new File(EXCEL_FILE);
		// System.out.println("EXCEL_FILE_Name: "+file.getName());
		InputStreamResource resource = new InputStreamResource(new FileInputStream(file));
		String fileName;
		try {
			fileName = URLEncoder.encode(file.getName(),"UTF-8");
		} catch (UnsupportedEncodingException e) {
			fileName = file.getName();
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 

		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Disposition", String.format("attachment; filename=\"%s\"", fileName));
		headers.add("Cache-Control", "no-cache, no-store, must-revalidate");
		headers.add("Pragma", "no-cache");
		headers.add("Expires", "0");

		ResponseEntity<Object> responseEntity = ResponseEntity.ok().headers(headers).contentLength(file.length())
				.contentType(MediaType.parseMediaType("application/txt")).body(resource);

		return responseEntity;
	}
	
	@RequestMapping(value = "/saveMatrixIntoDB", method = RequestMethod.GET)
	public @ResponseBody String saveMatrixIntoDB(String matrix_name,String matrix_element1,String matrix_element2,String matrix_relation,String parentID) throws JAXBException {
	
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			userDetail = (UserDetails) auth.getPrincipal();
			username = userDetail.getUsername();
		}
		
		System.out.println(matrix_name+matrix_element1+matrix_element2+matrix_relation+parentID);
		enterpriseDAO.saveMatrixIntoDB(matrix_name,matrix_element1,matrix_element2,matrix_relation,parentID,username);
 		return "";
	}
	
//	@RequestMapping(value = "/saveMatrixIntoDB", method = RequestMethod.POST)
//	public @ResponseBody String saveMatrixIntoDB(@RequestBody saveMatrix matrix,HttpSession session) throws JAXBException {
//		
//		System.out.println("Matrix: "+ matrix);
//		String username = "";
//		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//		if (!(auth instanceof AnonymousAuthenticationToken)) {
//			UserDetails userDetail = (UserDetails) auth.getPrincipal();
//			System.out.println(userDetail);
//			userDetail = (UserDetails) auth.getPrincipal();
//			username = userDetail.getUsername();
//		}
//		String path = session.getServletContext().getRealPath("/");
//		String XML_FILE = path + "/"+matrix.getMatrixName() + ".xml";
//		JAXBContext context = JAXBContext.newInstance(saveMatrix.class);
//		Marshaller m = context.createMarshaller();
//		m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, Boolean.TRUE);
//		m.marshal(matrix, new File(XML_FILE));
//		enterpriseDAO.insertMatrixInDb(username,matrix,XML_FILE.replace("\\", "\\\\"));
// 		return "";
//	}
	
	
	@RequestMapping(value = "/downloadMatrixAsExcel", method = RequestMethod.POST)
	public @ResponseBody String downloadMatrixAsExcel(@RequestBody downloadMatrix matrix,HttpSession session){
		System.out.println("theads: "+matrix.getTheads());
		System.out.println("tbody: "+matrix.getTbodies());
		String path = session.getServletContext().getRealPath("/");
		String EXCEL_FILE = path+matrix.getMatrixName().replaceAll("---"," ") + ".xlsx";
		String FileNameWithoutPath = matrix.getMatrixName() + ".xlsx";
		XSSFWorkbook workbook = new XSSFWorkbook();
		
		XSSFCellStyle titleCellStyle = (XSSFCellStyle) workbook.createCellStyle();
		XSSFFont titleFont = workbook.createFont();
	//		titleFont.setColor(HSSFColor.HSSFColorPredefined.WHITE.getIndex());
		titleFont.setFontHeightInPoints((short) 14);
		titleFont.setBold(true);
	
	//		titleCellStyle.setFillForegroundColor(color);
	//		titleCellStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND);
		titleCellStyle.setAlignment(HorizontalAlignment.CENTER);
		titleCellStyle.setVerticalAlignment(VerticalAlignment.CENTER);
		titleCellStyle.setFont(titleFont);/////////
		
		XSSFCellStyle cellCenter = (XSSFCellStyle) workbook.createCellStyle();
		cellCenter.setAlignment(HorizontalAlignment.CENTER);
		cellCenter.setVerticalAlignment(VerticalAlignment.CENTER);
		
		XSSFSheet sheet = null;
		sheet = workbook.createSheet(matrix.getMatrixName());
		String sheetName = matrix.getMatrixName();
		Row attributeRow = sheet.createRow(0);
		List<String> theadsList = matrix.getTheads();
		List<ArrayList<String>> tbodies = matrix.getTbodies();
		
		int indexForAutoSize = 0;
		indexForAutoSize = theadsList.size();
		int thIndex = 0;
		for(String th: theadsList) {
			Cell cell = attributeRow.createCell(thIndex++);
			cell.setCellValue((String) th);
			cell.setCellStyle(titleCellStyle);
		}

		int rowCount = 1;
		for(List<String> tr:tbodies) {
			Row row = sheet.createRow(rowCount++);
			int trLength = tr.size();
			for(int i=0;i<trLength;i++) {
				if(i==0) {
					Cell cell = row.createCell(i);
					cell.setCellValue((String) tr.get(i));
					cell.setCellStyle(titleCellStyle);
				}else {
					String val = "";
					if(!tr.get(i).equals("")) {
						val = "TRUE";
					}
					Cell cell = row.createCell(i);
					cell.setCellValue((String) val);
					cell.setCellStyle(cellCenter);
				}
			}
//			for(String td:tr) {
//				
//			}
		}
		
		for(int i=0;i<indexForAutoSize;i++) {
			sheet.autoSizeColumn(i);
		}
		
		//writing file
		
		try {
			FileOutputStream outputStream = new FileOutputStream(EXCEL_FILE);
			workbook.write(outputStream);
			workbook.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		System.out.println("Done");
		
		return FileNameWithoutPath;
	}
	
	@RequestMapping(value = "/downloadMatrixExcelFile", method = RequestMethod.GET)
	public @ResponseBody ResponseEntity<Object> downloadMatrixExcelFile(@RequestParam String EXCEL_FILE,
			HttpSession session) throws JAXBException, FileNotFoundException {
		System.out.println("here");
		String path = session.getServletContext().getRealPath("/");
		EXCEL_FILE = path+EXCEL_FILE;
		File file = new File(EXCEL_FILE);
		InputStreamResource resource = new InputStreamResource(new FileInputStream(file));

		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Disposition", String.format("attachment; filename=\"%s\"", file.getName()));
		headers.add("Cache-Control", "no-cache, no-store, must-revalidate");
		headers.add("Pragma", "no-cache");
		headers.add("Expires", "0");

		ResponseEntity<Object> responseEntity = ResponseEntity.ok().headers(headers).contentLength(file.length())
				.contentType(MediaType.parseMediaType("application/txt")).body(resource);

		return responseEntity;
	}
	
	
	@RequestMapping(value = "/getDateForFormSubmit", method = RequestMethod.GET)
	public @ResponseBody String getDateForFormSubmit(@RequestParam String tableName, String row_name,
			HttpSession session) throws JAXBException, FileNotFoundException {
		List<Element> elementsObject = unif.getElements();
		for (Element e1 : elementsObject) {
			if (e1.getElementName().equalsIgnoreCase(tableName)) {
				tableName = e1.getElementName();
			}
		}
		List<String> last_time_updated = enterpriseDAO.getRowWithCondition(dbName, tableName, "last_time_updated", "ATT_01", row_name);
//		System.out.println("last_time_updated "+last_time_updated);
		return last_time_updated.get(0);
	}
	
	@RequestMapping(value = "/getGraphLastDate", method = RequestMethod.GET)
	public @ResponseBody String getGraphLastDate(@RequestParam String graphID,
			HttpSession session) {
		List<String> last_time_updated = enterpriseDAO.getGraphLastDate(dbName, graphID);
//		System.out.println("last_time_updated "+last_time_updated);
		return last_time_updated.get(0);
	}
	
	@RequestMapping(value = "/getGraphCompanyNameModelName", method = RequestMethod.GET)
	public @ResponseBody List<String> getGraphCompanyName(@RequestParam String graphID, HttpSession session) {
		List<String> companyNameAndGraphName = enterpriseDAO.getGraphCompanyName(dbName, graphID);
		String folderId = companyNameAndGraphName.get(2);
		
		List<String> folderName = enterpriseDAO.getFolderName(folderId);
		String treeFolderId = folderName.get(0)+folderId;
		companyNameAndGraphName.add(treeFolderId);

		return companyNameAndGraphName;
	}
	
	@RequestMapping(value = "/getGraphCompanyNameModelNameForSaveAs", method = RequestMethod.GET)
	public @ResponseBody List<String> getGraphCompanyName(@RequestParam String graphID, String isFiltered, HttpSession session) {
		
		List<String> companyNameAndDiagramName =  new ArrayList<String>();
		
		if( isFiltered.equals("false") ) {
		
			String emptyGraph = "<mxGraphModel> <root><mxCell id=\"0\" /><mxCell id=\"1\" parent=\"0\" /></root></mxGraphModel>";
			List<String> diagramGraph = enterpriseDAO.checkNewGraphSaveStatus(graphID);
			
			if( diagramGraph.get(0).equals(emptyGraph) ){
				companyNameAndDiagramName.add("please save the navigation first");
				return companyNameAndDiagramName;
			}else {
				companyNameAndDiagramName = enterpriseDAO.getGraphCompanyName(dbName, graphID);
				String folderId = companyNameAndDiagramName.get(2);
				
				List<String> folderName = enterpriseDAO.getFolderName(folderId);
				String treeFolderId = folderName.get(0)+folderId;
				companyNameAndDiagramName.add(treeFolderId);
	
				return companyNameAndDiagramName;
			}
		
		}else {
			companyNameAndDiagramName = enterpriseDAO.getGraphCompanyName(dbName, graphID);
			String folderId = companyNameAndDiagramName.get(2);
			
			List<String> folderName = enterpriseDAO.getFolderName(folderId);
			String treeFolderId = folderName.get(0)+folderId;
			companyNameAndDiagramName.add(treeFolderId);

			return companyNameAndDiagramName;
		}

	}
	
	@RequestMapping(value = "/getNavigationCompanyNameModelName", method = RequestMethod.GET)
	public @ResponseBody List<String> getNavigationCompanyNameModelName(@RequestParam String navigationID, HttpSession session) {
		
		
		
		List<String> navGraph = enterpriseDAO.checkNewNavigationSaveStatus(navigationID);
		
		String emptyGraph = "<mxGraphModel> <root><mxCell id=\"0\" /><mxCell id=\"1\" parent=\"0\" /></root></mxGraphModel>";
		
		
		List<String> companyNameAndNavigationName =  new ArrayList<String>();
		
		if( navGraph.get(0).equals(emptyGraph) ){
			System.out.println("if");
			companyNameAndNavigationName.add("please save the navigation first");
			return companyNameAndNavigationName;
		}else {
			System.out.println("else");
			companyNameAndNavigationName = enterpriseDAO.getNavigationCompanyAndModelName(navigationID);
			String folderId = companyNameAndNavigationName.get(2);
			
			List<String> folderName = enterpriseDAO.getFolderName(folderId);
			String treeFolderId = folderName.get(0)+folderId;
			companyNameAndNavigationName.add(treeFolderId);

			return companyNameAndNavigationName;
		}
		

	}
	
//	@RequestMapping(value = "/getGraphFolderName", method = RequestMethod.GET)
//	public @ResponseBody List<String> getGraphFolderName(@RequestParam String folderId, HttpSession session) {
//		List<String> folderName = enterpriseDAO.getFolderName(folderId);
//		
//		System.out.println("folderName: "+folderName);
//
//		return folderName;
//	}
	
	@RequestMapping(value = "/getNavigationLastDate", method = RequestMethod.GET)
	public @ResponseBody String getNavigationLastDate(@RequestParam String navigationID,
			HttpSession session) {
		List<String> last_time_updated = enterpriseDAO.getNavigationLastDate(dbName, navigationID);
		System.out.println("last_time_updated "+last_time_updated);
		return last_time_updated.get(0);
	}	
	
	@RequestMapping(value = "/getRowData", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, ArrayList<String>> getRowData(@RequestParam String tableName, String name,
			HttpSession session) throws JAXBException, FileNotFoundException {
		roleDetails role_details = (roleDetails) session.getAttribute("role_details");
		Collection<? extends GrantedAuthority> userRole = null;
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			userRole = userDetail.getAuthorities();
		}

		// System.out.println("userRole: " + userRole.toArray()[0]);
		String forReadOnly = "";
		if (role_details.isElementUpdate() == false) {
			forReadOnly = " disabled=\"disabled\" ";
		}

		String formData = "";
		String tabsDivs = "";
		String elementIcon = tableName.replaceAll("\\s+", "-").replaceAll("_+", "-").toLowerCase() + ".svg";
		tableName = tableName.replaceAll("_", " ");
		String element_name = tableName;

		String previousPageTitle = "";
		List<Element> elementsObject = unif.getElements();
		for (Element e1 : elementsObject) {
			if (e1.getElementName().equalsIgnoreCase(tableName)) {
				tableName = e1.getElementName();
			}
		}
		tableName = tableName.replaceAll("\\s+", "_");
		List<attributesInformationModel> attributeDetailsList = enterpriseDAO.getAllAttributeDetails(dbName, tableName);
		List<String> last_time_updated = enterpriseDAO.getRowWithCondition(dbName, tableName, "last_time_updated",
				"ATT_01", name);
		List<String> allActualValues = new ArrayList<String>();
		List<String> allIds = new ArrayList<String>();
		List<String> row_id = new ArrayList<String>();
		List<String> row_name = new ArrayList<String>();
		List<String> checkboxIds = new ArrayList<String>();
		List<String> CurrenttabID_list = new ArrayList<String>();
		List<String> AllRelRowIDs = new ArrayList<String>();
		List<String> editButtonId = new ArrayList<String>();
		List<String> object_name_id = new ArrayList<String>();
		List<String> relationsClassList = new ArrayList<String>();
		List<String> AllRelTableIDs = new ArrayList<String>();

		previousPageTitle = "";
		String previousGroup = "";
		String attributeType = "";
		String targetRelationship_Element = "";
		String sourceRelationship_Element = "";
		String actualAttribute = "";
		String isGrouped = "";
		String groupStyle = "";
		String groupCaption = "";
		String attributeFormat = "";
		String pageNumber = "";
		String pageTitle = "";
		String isPageGrouped = "";
		String groupPageTitle = "";
		String groupPageID = "";
		String allowableValues = "";
		String attributeValue = "";
		String attributeTip = "";
		String bidirectionRelationshipPair = "";
		String relElement = "";
		String maximumNumberofObjectOccurrence = "";
		String inputTagId = "";
		String relationsClass = tableName + "_Relationship";
		relationsClassList.add(relationsClass);
		boolean relationshipTabCreated = false;
		List<String> currentGroupRelElement = new ArrayList<String>();
		List<String> dataBeforeUpdate = new ArrayList<String>();
		List<String> multiListIds = new ArrayList<String>();
		String sharedInputString = "";
		int sharedInputsCreated = 0;

		List<String> groupCaptionAttributeName = new ArrayList<String>();
		List<ArrayList<String>> groupCaptionlist = new ArrayList<ArrayList<String>>();

		String concatWith = "##";

		int indexOfNext = 1;
		String CurrenttabID = tabID + tabsID_count++;

		ReloadableResourceBundleMessageSource messageSource=new ReloadableResourceBundleMessageSource();
		messageSource.setBasename("classpath:net/lt/eaze/resources/locale/messages");
		messageSource.setDefaultEncoding("UTF-8");
		messageSource.setUseCodeAsDefaultMessage(true);
		Locale locale = LocaleContextHolder.getLocale();
		
		CurrenttabID_list.add(CurrenttabID);
		tabsDivs += "<div id=\"" + CurrenttabID + "\">";
		tabsDivs += "<ul>";

		formData += "<form id=\'" + CurrenttabID + "'\">";
		formData += "&nbsp;&nbsp;<div id=\"formTitleBarDiv\"><div><img style=\"width:30px; height:30px\" draggable=\"false\" src=\"resources/js/examples/editors/images/images1/"
				+ elementIcon + "\">";
		formData += "&nbsp;&nbsp;<label id= \"object_name_" + tabsID_count + "\" style=\"font-size:18px\"> " + name
				+ " </label>";
		object_name_id.add("object_name_" + tabsID_count);
		formData += "&nbsp;<label style=\"font-size:18px\"> ["+messageSource.getMessage(element_name.replaceAll("\\s+", "_"),null,locale)+"] </label></div>";
		if (role_details.isElementUpdate() == true)
			formData += "<div><button id=\"btnedit" + tabsID_count
					+ "\" disabled=\"\" class=\"btn btn-Submit  submit-data\" type=\"button\"><span class=\"fa fa-floppy-o fa-lg\" aria-hidden=\"true\"></span></button></div></div>";
		editButtonId.add("btnedit" + tabsID_count);

		int loopSize = attributeDetailsList.size();

		for (int i = 0; i < loopSize; i++) {

			attributesInformationModel attributeDetails = attributeDetailsList.get(i);
			actualAttribute = attributeDetails.getActualAttribute();
			groupStyle = attributeDetails.getGroupStyle();
			groupCaption = attributeDetails.getGroupCaption();

			if ((groupStyle.equals("Tabular") && groupCaption.equals("Change History"))) {
				groupCaptionAttributeName.add(actualAttribute);

			}

		}

		String GroupCaptionTable = "";

//		GroupCaptionTable +="<div class=\"form-group\">";

		GroupCaptionTable += "<table class=\"table table-striped table-bordered\" style=\"width:100%; overflow: auto; max=height:90%\">";
		GroupCaptionTable += "<thead >";
		GroupCaptionTable += "<tr  style=\"text-align: center\" >";

		for (int i = 0; i < groupCaptionAttributeName.size()+1; i++) {
			
			if(i != groupCaptionAttributeName.size()) {
				GroupCaptionTable += "<th style=\"text-align: center\">" + messageSource.getMessage(groupCaptionAttributeName.get(i).replaceAll("\\s+", "_"),null,locale) + "</th>";
			}else {
//				GroupCaptionTable += "<th style=\"text-align: center\">Action</th>";
			}
		}
		GroupCaptionTable += "</tr> ";
		GroupCaptionTable += "</thead>";
		GroupCaptionTable += "<tbody>";

		List<String> selfGeneratedValue = enterpriseDAO.getSelfGeneratedForGivenAttribute(dbName, tableName, "Name");
//		for (attributesInformationModel attributeDetails : attributeDetailsList) {
		for (int i = 0; i < loopSize; i++) {
//			System.out.println("---------------------------------------------------------------------");
//			System.out.println(attributeDetailsList.get(i));
//			System.out.println("---------------------------------------------------------------------");
			attributesInformationModel attributeDetails = attributeDetailsList.get(i);
			String att_name = attributeDetails.getActualAttribute();
			if (!(att_name.equals("id"))) {
				attributesInformationModel attributeDetailsForNext = attributeDetailsList.get(indexOfNext);
				List<String> x = new ArrayList<String>();
				String a = attributeDetails.getSelfGeneratedAttribute();
				attributeType = attributeDetails.getAttributeType();
				targetRelationship_Element = attributeDetails.getTargetRelationship_Element();
				sourceRelationship_Element = attributeDetails.getSourceRelationship_Element();
				actualAttribute = attributeDetails.getActualAttribute();
				isGrouped = attributeDetails.getIsGrouped();
				groupStyle = attributeDetails.getGroupStyle();
				groupCaption = attributeDetails.getGroupCaption();
				attributeFormat = attributeDetails.getAttributeFormat();
				pageNumber = attributeDetails.getPageNumber();
				pageTitle = attributeDetails.getPageTitle();
				isPageGrouped = attributeDetails.getIsPageGrouped();
				groupPageTitle = attributeDetails.getGroupPageTitle();
				groupPageID = attributeDetails.getGroupPageID();
				allowableValues = attributeDetails.getAllowableValues();
				attributeTip = attributeDetails.getAttributeTip();
				bidirectionRelationshipPair = attributeDetails.getBidirectionRelationshipPair();

				if (targetRelationship_Element.equals("N/A")) {
					relElement = sourceRelationship_Element;
				} else {
					relElement = targetRelationship_Element;
				}

				if (allActualValues.contains(actualAttribute)) {
					int arr_size = allActualValues.size();
					Map<String, Integer> frequency = methods.findRepeating(allActualValues, arr_size);
					for (Entry<String, Integer> entry : frequency.entrySet()) {
						if (actualAttribute.equals(entry.getKey()))
							attributeValue = actualAttribute + "_" + entry.getValue();
					}
				} else {
					attributeValue = actualAttribute;
					}
				attributeValue = attributeValue.replaceAll("[\\(\\)\\[\\]\\{\\}]", "_");
				attributeValue = attributeValue.replaceAll("\\/", "_");

				if (!(previousPageTitle.equals(pageTitle))) {

					String pageClass = "";
					String style = "";
					if (groupPageTitle.equals("Relationship")) {
						pageClass = "class=\"" + relationsClass + "\"";
						style = "style=\"margin-left:20px;\"";
						// tabsDivs += "<li><a title=\"Relationships\" class=\"fullTab\"
						// onclick=\"show_or_hide_relationships=('"+element_name+"_Relationship')\">Relationships</a></li>";
						if (relationshipTabCreated == false) {
							tabsDivs += "<li><a title=\"" + messageSource.getMessage(pageTitle.replaceAll("\\s+", "_"),null,locale) + "\" class=\"fullTab " + messageSource.getMessage(groupPageTitle.replaceAll("\\s+", "_"),null,locale)
									+ "\" onclick=\"show_or_hide_relationships('" + relationsClass
									+ "');\"href=\"javascript:show_or_hide_relationships();\">Relationships&nbsp&nbsp<i id=\"arrowToggle\" class=\"arrow down\"></i></a></li>";
							relationshipTabCreated = true;
						}
					}
					formData += "<div id=\"tabs-" + pageNumber.replace(".0", "") + "\" class=\"formOfEveryTab\">";

					tabsDivs += "<li " + pageClass + style + "><a title=\"" + messageSource.getMessage(pageTitle.replaceAll("\\s+", "_"),null,locale)
							+ "\" class=\"fullTab\" href=\"#tabs-" + pageNumber.replace(".0", "") + "\">"+messageSource.getMessage(pageTitle.replaceAll("\\s+", "_"),null,locale)
							+"</a></li>";
				}
				String temp = "";

				if (!groupStyle.equals("Shared")) {
					temp = "<div class=\"form-group\">";
					if (!( (groupCaption.equals("Change History")) && (groupStyle.equals("Tabular")) ) ) {
						allActualValues.add(actualAttribute);
					}
				}

				
				if (groupStyle.equals("Shared") && (attributeType.equals("Relationship"))) {
					
//					System.out.println("Shared and Relationship");
					
					maximumNumberofObjectOccurrence = attributeDetails.getMaximumNumberofObjectOccurrence();
					currentGroupRelElement.add(relElement + "---" + maximumNumberofObjectOccurrence);
					String currentRelType = attributeDetails.getRelationship();
					List<String> currentRelTableID = new ArrayList<String>();
					if (targetRelationship_Element.equals("N/A")) {
						relElement = sourceRelationship_Element;
						x = enterpriseDAO.getRelValueFromRelTable(dbName,
								sourceRelationship_Element.replaceAll("\\s+", "_"), tableName, "Source_Attribute_Value",
								row_name.get(0), "Bidirection_Relationship_Pair", bidirectionRelationshipPair,
								"Destination_Attribute_Value");
//						currentRelTableID = enterpriseDAO.getRelTableIDs(dbName, currentRelType, row_name.get(0), x.);
						List<String> RelRowID = enterpriseDAO.getRelValueFromRelTable(dbName,
								sourceRelationship_Element.replaceAll("\\s+", "_"), tableName, "Source_Attribute_Value",
								row_name.get(0), "Bidirection_Relationship_Pair", bidirectionRelationshipPair, "id");
						AllRelRowIDs.addAll(RelRowID);

					} else {
						
//						System.out.println("    else  Shared and Relationship");
						
						relElement = targetRelationship_Element;
						x = enterpriseDAO.getRelValueFromRelTable(dbName, tableName,
								targetRelationship_Element.replaceAll("\\s+", "_"), "Destination_Attribute_Value",
								row_name.get(0), "Bidirection_Relationship_Pair", bidirectionRelationshipPair,
								"Source_Attribute_Value");
						List<String> RelRowID = enterpriseDAO.getRelValueFromRelTable(dbName, tableName,
								targetRelationship_Element.replaceAll("\\s+", "_"), "Destination_Attribute_Value",
								row_name.get(0), "Bidirection_Relationship_Pair", bidirectionRelationshipPair, "id");
						AllRelRowIDs.addAll(RelRowID);
					}

					String relElementIcon = relElement.replaceAll(" ", "-").replaceAll("_", "-").toLowerCase() + ".svg";
					if (x.size() != 0) {
						dataBeforeUpdate.add(x.get(0));
						
						String fromColumn = enterpriseDAO
								.getSelfGeneratedForGivenAttribute(dbName, currentRelType, "From").get(0);
						String toColumn = enterpriseDAO.getSelfGeneratedForGivenAttribute(dbName, currentRelType, "To")
								.get(0);
						for (String object : x) {
							sharedInputString += "<tr><td class=\"elementIcon\" style=\"width: 5px !important\"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/js/examples/editors/images/images1/"
									+ relElementIcon + "\" ></td><td class=\"object_name_form\">" + messageSource.getMessage(object.replaceAll("\\s+", "_"),null,locale)
									+ "</td></tr>";
							sharedInputsCreated++;
							if (targetRelationship_Element.equals("N/A")) {
//								System.out.println("if");
								currentRelTableID = enterpriseDAO.getRelTableIDs(dbName, currentRelType, fromColumn,
										toColumn, object, row_name.get(0));
							} else {
//								System.out.println("else");
								currentRelTableID = enterpriseDAO.getRelTableIDs(dbName, currentRelType, fromColumn,
										toColumn, row_name.get(0), object);
							}
							AllRelTableIDs.addAll(currentRelTableID);
						}
					}

					if (!(groupCaption.equals(attributeDetailsForNext.getGroupCaption())) || i == loopSize - 1) {
						if(x.size()>0) {
							dataBeforeUpdate.add(x.get(0));
						}
						else {
							dataBeforeUpdate.add("");
						}
//						inputTagId = groupCaption.replaceAll("\\s+", "_").replace('?', '_') + "21" + tabsID_count;
						
						inputTagId = groupCaption.replaceAll("[><!@$%^&)(,}?{= +':`\\\\~/]","_")+ "21" + tabsID_count;
						

						
						if (!( (groupCaption.equals("Change History")) && (groupStyle.equals("Tabular")) ) ) {
							allActualValues.add(groupCaption);
							allIds.add(inputTagId);
						}
						
//						System.out.println("Group Relationship Elements: "+currentGroupRelElement);
						maximumNumberofObjectOccurrence = attributeDetails.getMaximumNumberofObjectOccurrence();
						if (role_details.isElementUpdate() == true)
							temp += "<div class=\"showRelationPlusButton\" align=\"right\"><i onclick=\"showRelationsObjects('" + tableName + "','"
									+ row_name.get(0) + "','" + currentGroupRelElement + "', '" + inputTagId + "','"
									+ maximumNumberofObjectOccurrence + "', 'btnedit" + tabsID_count
									+ "');\" class=\"fa fa-plus-square plus_and_info_button\" > </i></div>";
						temp += "<table id=\"" + inputTagId
								+ "\" class=\"table table-striped table-bordered\" style=\"width:100%\">";
						temp += "<thead class=\"formTablehead\"> <tr> <th style=\"width: 5px !important\">Type</th> <th>Name</th></tr> </thead>";
						/*
						 * temp += "<tbody class=\"table_data\">" +
						 * "<tr><td class = \"first_td\"></td><td class=\"object_name_form\"></td></tr>"
						 * + "</tbody>";
						 */
						temp += "<tbody class=\"table_data\">";
						if (!sharedInputString.equals("")) {
							temp += sharedInputString;
							for (int j = 0; j < 4 - sharedInputsCreated; j++) {
								temp += "<tr><td class = \"first_td elementIcon\"></td><td class=\"object_name_form\"></td></tr>";
							}
						} else {
							for (int j = 0; j < 4; j++) {
								temp += "<tr><td class = \"first_td elementIcon\"></td><td class=\"object_name_form\"></td></tr>";
							}
						}

						temp += "</tbody>";
						temp += "</table>";
						currentGroupRelElement.clear();
						sharedInputString = "";
						sharedInputsCreated = 0;
					}
				} //if (groupStyle.equals("Shared") && (attributeType.equals("Relationship"))) end
				else {
					
//					System.out.println("not in a relationship and shared");
//					inputTagId = attributeValue.replaceAll("\\s+", "_").replace('?', '_') + "21" + tabsID_count;
					
					inputTagId = attributeValue.replaceAll("[><!@$%^&)(,}?{= +':`\\\\~/]","_")+ "21" + tabsID_count;

					if ((groupCaption.equals("Change History")) && (groupStyle.equals("Tabular"))) {

					}else {
						allIds.add(inputTagId);
					}

					if (!(groupCaption.equals("Change History"))) {

						temp += "<div class=\"attWithIcon\"><span style=\"float:left; \">" + messageSource.getMessage(actualAttribute.replaceAll("\\s+", "_"),null,locale)
								+ "</span><span title=\"Information\" style=\"float:left;margin-left:5px;\"><i onclick=\"information_modal('"
								+ actualAttribute + "','" + attributeTip
								+ "')\" class=\"fa fa-info-circle plus_and_info_button\"></i></span></div>";
					}
					if (attributeType.equals("Relationship")) {
						maximumNumberofObjectOccurrence = attributeDetails.getMaximumNumberofObjectOccurrence();
						if(attributeDetails.getSingleOrMultiple().equals("Single")) {
							maximumNumberofObjectOccurrence = "1";
						}
						if (targetRelationship_Element.equals("N/A")) {
							relElement = sourceRelationship_Element;
							x = enterpriseDAO.getRelValueFromRelTable(dbName,
									sourceRelationship_Element.replaceAll("\\s+", "_"), tableName,
									"Source_Attribute_Value", row_name.get(0), "Bidirection_Relationship_Pair",
									bidirectionRelationshipPair, "Destination_Attribute_Value");
							List<String> RelRowID = enterpriseDAO.getRelValueFromRelTable(dbName,
									sourceRelationship_Element.replaceAll("\\s+", "_"), tableName,
									"Source_Attribute_Value", row_name.get(0), "Bidirection_Relationship_Pair",
									bidirectionRelationshipPair, "id");
							AllRelRowIDs.addAll(RelRowID);
							
						} else {
							relElement = targetRelationship_Element;
							x = enterpriseDAO.getRelValueFromRelTable(dbName, tableName,
									targetRelationship_Element.replaceAll("\\s+", "_"), "Destination_Attribute_Value",
									row_name.get(0), "Bidirection_Relationship_Pair", bidirectionRelationshipPair,
									"Source_Attribute_Value");
							List<String> RelRowID = enterpriseDAO.getRelValueFromRelTable(dbName, tableName,
									targetRelationship_Element.replaceAll("\\s+", "_"), "Destination_Attribute_Value",
									row_name.get(0), "Bidirection_Relationship_Pair", bidirectionRelationshipPair,
									"id");
							AllRelRowIDs.addAll(RelRowID);
							
						}
						currentGroupRelElement.add(relElement + "---" + maximumNumberofObjectOccurrence);
//						System.out.println("X2= " + x);
						if (x.size() == 0) {
							x.add("");
						}
						
						if(x.size() > 1) {
							String tempRelationship =  x.toString();
							
							tempRelationship = tempRelationship.replaceAll("\\[", "");
							tempRelationship = tempRelationship.replaceAll("\\]", "");
							
							// tempRelationship.replaceAll(" ","");
							
							//tempRelationship = tempRelationship.substring(0, tempRelationship.length() - 1);
							
//							StringBuffer sb= new StringBuffer(tempRelationship);  
//							sb.deleteCharAt(sb.length()-1);
							
							dataBeforeUpdate.add(tempRelationship);
						}else {
						dataBeforeUpdate.add(x.get(0));
						
						}
						 // System.out.println("3Rel: "+x);
						
						String relElementIcon = relElement.replaceAll(" ", "-").replaceAll("_", "-").toLowerCase()
								+ ".svg";

//						if(!(groupCaption.equals("Change History")) && !(groupStyle.equals("Tabular")) ) {

						temp += "<div align=\"right\" class=\"showRelationPlusButton\"><i onclick=\"showRelationsObjects('" + tableName + "','"
								+ row_name.get(0) + "','" + currentGroupRelElement + "','" + inputTagId + "','"
								+ maximumNumberofObjectOccurrence + "', 'btnedit" + tabsID_count
								+ "');\" class=\"fa fa-plus-square plus_and_info_button\" > </i></div>";
//						}
						// temp += "<input id=\"" + inputTagId+ "\" disabled=\"disabled\"
						// class=\"form-control\" value=\"" + x.get(0) + "\">";
						temp += "<table id=\"" + inputTagId
								+ "\" class=\"table table-striped table-bordered\" style=\"width:100%\">";
						temp += "<thead class=\"formTablehead\"> <tr> <th style=\"width: 5px !important\">Type</th> <th>Name</th></tr> </thead>";
						temp += "<tbody class=\"table_data\">";
						int relCreated = 0;
						System.out.println("-----------------------");
						System.out.println("maximumNumberofObjectOccurrence: "+maximumNumberofObjectOccurrence);
						int limit = 0;
						try {
							limit=Integer.parseInt(maximumNumberofObjectOccurrence.replaceAll(".0", ""));
//							if(relCount2<limit) {
//								relationshipPossible = true;
//							}else {
//								relationshipPossible = false;
//							}
						}catch (Exception e) {
//							System.out.println("catch");
//							relationshipPossible = true;
							// TODO: handle exception
						}
						System.out.println("limit: "+limit);
						if (x.get(0).equals("")) {
//							for (int j = 0; j < 4; j++) {
//								System.out.println("object0:");
//								temp += "<tr><td class = \"first_td elementIcon\"></td><td class=\"object_name_form\"></td></tr>";
//							}
						} else {
							for (String object : x) {
								System.out.println("object1: "+object);
								temp += "<tr><td class=\"elementIcon\" style=\"width: 5px !important\"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/js/examples/editors/images/images1/"
										+ relElementIcon + "\" ></td><td class=\"object_name_form\">" + messageSource.getMessage(object.replaceAll("\\s+", "_"),null,locale)
										+ "</td></tr>";
								relCreated++;
							}
						}
						if (relCreated < 4 && limit ==0) {
							for (int j = 0; j < 4 - relCreated; j++) {
								System.out.println("object2: "+j);
								temp += "<tr><td class = \"first_td elementIcon\"></td><td class=\"object_name_form\"></td></tr>";
							}
						}else {
							for (int j = 0; j < limit - relCreated; j++) {
								System.out.println("object2: "+j);
								temp += "<tr><td class = \"first_td elementIcon\"></td><td class=\"object_name_form\"></td></tr>";
							}
						}
						System.out.println("-----------------------");
						System.out.println("");
						relCreated = 0;

						temp += "</tbody>";
						temp += "</table>";
						currentGroupRelElement.clear();
					} else {
						
						//////////////////Query optimized//////////////////////////////////
						List<String> queryData = enterpriseDAO.getRowWithCondition(dbName, tableName, a, selfGeneratedValue.get(0),name);
						// queryCount++;

						if(queryData != null) {
							x = queryData;
						}
//						if (enterpriseDAO.getRowWithCondition(dbName, tableName, a, selfGeneratedValue.get(0),name) != null) {
//							x = enterpriseDAO.getRowWithCondition(dbName, tableName, a, selfGeneratedValue.get(0), name);
//							// queryCount++;
//						}
						//////////////////Query optimized//////////////////////////////////
						
						
						if (  !( (groupCaption.equals("Change History")) && (groupStyle.equals("Tabular")) )   ) {
							dataBeforeUpdate.add(x.get(0));
							//System.out.println("5Rel: "+x);
						}
						
						if (a.equals(selfGeneratedValue.get(0))) {
							row_name.add(x.get(0));
							row_id = enterpriseDAO.getRowWithCondition(dbName, tableName, "id",
									selfGeneratedValue.get(0), row_name.get(0));
						}

						////////////////////////////////////////////////////////////////////
						if (groupCaption.equals("Change History")) {
							List<String> list = new ArrayList<String>(Arrays.asList(x.get(0).split(concatWith)));
							groupCaptionlist.add((ArrayList<String>) list);

						}
						//////////////////////////////////////////////////////////////////
						if (attributeFormat.equals("List")) {
							String valuesString = allowableValues;
							String[] arrayString = new String[0];
							if (valuesString != null)
								arrayString = valuesString.split(";");
							temp += "<select " + forReadOnly + " class=\"form-control\" id=\"" + inputTagId + "\" >";
							// temp += "<option disabled=\"disabled\" selected> -- Select -- </option>";
							if (x.size() == 1 && x.get(0).equals("")) {
								temp += "<option disabled=\"disabled\" selected> "+messageSource.getMessage("select_dropdown".replaceAll("\\s+", "_"),null,locale)+"</option>";
							}
							for (String val1 : arrayString) {
								if (val1.equals(x.get(0))) {
									temp += "<option class=\"selectOptionBG\" selected value=\"" + val1 + "\">" + messageSource.getMessage(val1.replaceAll("\\s+", "_"),null,locale)
											+ "</option>";
								} else
									temp += "<option class=\"selectOptionBG\" value=\"" + val1 + "\">" + messageSource.getMessage(val1.replaceAll("\\s+", "_"),null,locale)
											+ "</option>";
							}
							temp += "</select>";
						} 
						else if (attributeFormat.equals("Multi List")) {
							String valuesString = allowableValues;
							String[] arrayString = new String[0];
							if (valuesString != null)
								arrayString = valuesString.split(";");
							temp += "<select " + forReadOnly + " class=\"form-control getMultiListValue\" id=\"" + inputTagId + "\" multiple>";
							multiListIds.add(inputTagId);
							// temp += "<option disabled=\"disabled\" selected> -- Select -- </option>";
							String[] arrayString1 = new String[0];
							if (x.get(0) != null)
								arrayString1 = x.get(0).split(";");
							List<String> list = Arrays.asList(arrayString1);
							// System.out.println("list"+list);
							if (x.size() == 1 && x.get(0).equals("")) {
								temp += "<option disabled=\"disabled\"></option>";
							}
							for (String val1 : arrayString) {
								if(list.contains(val1)) {
									temp += "<option class=\"selectOptionBG\" selected value=\"" + val1 + "\">" + messageSource.getMessage(val1.replaceAll("\\s+", "_"),null,locale)
											+ "</option>";
								}else {
									temp += "<option class=\"selectOptionBG\" value=\"" + val1 + "\">" + messageSource.getMessage(val1.replaceAll("\\s+", "_"),null,locale)
											+ "</option>";
								}
							}
							temp += "</select>";							
						}
						else if ((groupCaption.equals("Change History")) && (groupStyle.equals("Tabular"))) {

//							GroupCaptionTable += "<td>" + x.get(0) + "</td>";

						} else if (attributeFormat.equals("CheckBox")) {
							String temp2 = "";
							if (x.get(0).equalsIgnoreCase("True")) {
								temp2 = "Checked";
							}
							checkboxIds.add(inputTagId);
							temp += "&nbsp;&nbsp;&nbsp;<input " + forReadOnly + " id=\"" + inputTagId
									+ "\" type=\"checkbox\" name=\"" + attributeValue
									+ "\" style=\"margin-top:3px\" required=\"required\"  value=\"" + x.get(0) + "\" "
									+ temp2 + ">";
						} else if (attributeFormat.equals("Time")) {
							temp += "<input " + forReadOnly + " class=\"form-control time_class\" id=\"" + inputTagId
									+ "\" type=\"time\" name=\"" + attributeValue + "\" required=\"required\" value=\""
									+ x.get(0) + "\">";
						} else if (attributeFormat.equals("Number")) {
							temp += "<input " + forReadOnly + " class=\"form-control time_class\" id=\"" + inputTagId
									+ "\" type=\"Number\" name=\"" + attributeValue + "\" required=\"required\" value=\""
									+ x.get(0) + "\" min=\"1\""+"  step=\"1\"" +"onkeypress=\"return event.keyCode === 8 || event.charCode >= 48 && event.charCode <= 57\">";
						}else if (attributeFormat.equals("Date")) {
							if(x.get(0).equals("1900-01-01")) {
								temp += "<input " + forReadOnly + " class=\"form-control date_class\" id=\"" + inputTagId
										+ "\" type=\"date\" name=\"" + attributeValue + "\" required=\"required\" >";								
							}
							else {
							temp += "<input " + forReadOnly + " class=\"form-control date_class\" id=\"" + inputTagId
									+ "\" type=\"date\" name=\"" + attributeValue + "\" required=\"required\" value=\""
									+ x.get(0) + "\">";
							}
						} else if (attributeFormat.equals("Short Text")) {
							temp += "<input " + forReadOnly + " class=\"form-control date_class\" id=\"" + inputTagId
									+ "\" type=\"text\" name=\"" + attributeValue + "\" maxlength=\"16\" required=\"required\" value=\""
									+ x.get(0) + "\">";
						} else if (attributeFormat.equals("File")) {/// FILE----
							String tbody_id = inputTagId+"tbody";
							temp += "<input hidden " + forReadOnly + " class=\"form-control\" id=\"" + inputTagId
									+ "\" style=\"padding: 2px; margin-bottom: 5px\" type=\"file\" name=\"" + attributeValue + "\"  multiple=\"multiple\" required=\"required\">";
//							temp+= "<input style=\"background: #0d7e8a\" type=\"button\" class=\"btn btn-primary mb-2 poolSubmitButtons\" onclick=\"resetFileTag('"+inputTagId+"');\" value=\"Reset\">";
//							temp+= "<input style=\"background:#0d7e8a; margin-left:5px;\" type=\"button\" id=\"showPool\" class=\"btn btn-primary mb-2\" onclick=\"uploadFilesFromObjectForm('"+row_id.get(0)+"','"+tableName+"','"+inputTagId+"','"+tbody_id+"')\" value=\"Upload\">";
							
							String files = x.get(0);
							// System.out.println("files: "+files);
							String[] arrayString = files.split(";");
							// System.out.println("tableName: "+tableName);
							
//							temp += "<div align=\"right\"><i onclick=\"showAttachmentTree('"+tableName+"','"+row_name.get(0)+"','"+currentGroupRelElement +"', '"
//									+ inputTagId+"','"+maximumNumberofObjectOccurrence+"', 'btnedit"+tabsID_count+"');\" class=\"fa fa-plus-square plus_and_info_button\" > </i></div>";
							temp += "<div class=\"showRelationPlusButton\" align=\"right\"><i onclick=\"showAttachmentTree('"+inputTagId+"','btnedit"+tabsID_count+"','attachments');\" class=\"fa fa-plus-square plus_and_info_button\" > </i></div>";							
							temp +="<table id=\"\" class=\"table table-striped table-bordered\" style=\"width:100%; margin-top: 10px  \">";
							temp +="<thead class=\" \"> <tr> <th style=\" \">#</th> <th>"+messageSource.getMessage("file_name".replaceAll("\\s+", "_"),null,locale)+"</th> <th>"+messageSource.getMessage("download".replaceAll("\\s+", "_"),null,locale)+"</th><th>"+messageSource.getMessage("remove".replaceAll("\\s+", "_"),null,locale)+"</th></tr> </thead>";
							temp += "<tbody class=\" \" id=\""+tbody_id+"\">";
							int serialNumber = 1;
							
							for(String file:arrayString) {
								if(file.equals(" ") || file.equals("")) {
									continue;
								}
								// System.out.println("fillle: "+file+"sd");
								String fileNameToSplit = tableName+row_id.get(0);
								String fileName = file.replaceAll(fileNameToSplit, "");
								System.out.println("fileName: "+fileName);
//								List<String> avaiableAttachment = new ArrayList<String>();
								String username = "";
								String company_name = (String) session.getAttribute("company_name");
								List<String> availableAttachment = enterpriseDAO.checkAttachmentStatus(username, company_name);
								
								if (availableAttachment.contains(fileName)) {
//								temp += "<tr><td class = \"\">"+serialNumber+++"</td><td class=\"attachment_name_form\">"+messageSource.getMessage(fileName.replaceAll("\\s+", "_"),null,locale)+"</td>  <td class=\" \"> <i class=\"fa fa-download\" style=\"cursor: pointer\" aria-hidden=\"true\"onclick=\"downloadObjectUploadedFile('"+file+"','"+fileName+"');\" ></i></td><td class='delAttachmentRow'><i class=\"fa fa-trash\" style=\"cursor: pointer\" aria-hidden=\"true\"onclick=\"delAttachmentRow('btnedit"+tabsID_count+"');\" ></i> </td> </tr>";
									temp += "<tr><td class = \"\">"+serialNumber+++"</td><td class=\"attachment_name_form\">"+fileName+"</td>  <td class=\" \"> <i class=\"fa fa-download\" style=\"cursor: pointer\" aria-hidden=\"true\"onclick=\"downloadObjectUploadedFile('"+file+"','"+fileName+"');\" ></i></td><td class='delAttachmentRow'><i class=\"fa fa-trash\" style=\"cursor: pointer\" aria-hidden=\"true\"onclick=\"delAttachmentRow('btnedit"+tabsID_count+"');\" ></i> </td> </tr>";
								} else {
//								    System.out.println("Account not found");
								}
//								temp += "<tr><td class = \"\">"+serialNumber+++"</td><td class=\"attachment_name_form\">"+fileName+"</td>  <td class=\" \"> <i class=\"fa fa-download\" style=\"cursor: pointer\" aria-hidden=\"true\"onclick=\"downloadObjectUploadedFile('"+file+"','"+fileName+"');\" ></i></td><td><i class=\"fa fa-trash\" style=\"cursor: pointer\" aria-hidden=\"true\"onclick=\"removeObjectUploadedFile('"+file+"','"+tableName+"','"+row_id.get(0)+"','"+tbody_id+"');\" ></i> </td> </tr>";
//								temp += "<tr><td class = \"\">"+serialNumber+++"</td><td class=\"attachment_name_form\">"+fileName+"</td>  <td class=\" \"> <i class=\"fa fa-download\" style=\"cursor: pointer\" aria-hidden=\"true\"onclick=\"downloadObjectUploadedFile('"+file+"','"+fileName+"');\" ></i></td><td class='delAttachmentRow'><i class=\"fa fa-trash\" style=\"cursor: pointer\" aria-hidden=\"true\"onclick=\"delAttachmentRow('btnedit"+tabsID_count+"');\" ></i> </td> </tr>";
							}
							
							temp += "</tbody>";
							temp += "</table>";
							
						} else if (attributeFormat.equals("URL")) {
							temp += "<input " + forReadOnly + " style=\"display: none;\" class=\"form-control date_class\" id=\"" + inputTagId
									+ "\" type=\"text\" name=\"" + attributeValue + "\" required=\"required\" value=\""
									+ x.get(0) + "\">";
							String urlLink = inputTagId+"Link";
							String urlEdit = inputTagId+"Edit";
							
							String linkText = messageSource.getMessage("enter_url_here".replaceAll("\\s+", "_"),null,locale);
							String linkClass = "class=\"disabled\"";
							if(!x.get(0).equals("")) {
								linkText = x.get(0);
								linkClass = "";
							}
							temp += " <br class=\""+urlLink+"\"><div class=\"urlText\"><a id=\""+urlLink+"\" "+linkClass+" target=\"_blank\" class=\""+urlLink+"\" href=\"http://"+linkText+"\">"+linkText+"</a> <i id=\""+urlEdit+"\" onclick=\"urlEditable('"+inputTagId+"','"+urlLink+"','"+urlEdit+"')\" class=\"fa fa-edit urlIcon\"></i></div>";
							// <input id="url1Input" style="display: none;" class="urlInput" type="text">//// row_id  i
						} else if (attributeFormat.equals("Rich Text")) {
							temp += "<textarea " + forReadOnly + " rows=\"4\" class=\"form-control\" id=\"" + inputTagId
									+ "\" name=\"" + attributeValue + "\" >" + x.get(0) + "</textarea>";
						} else {
							temp += "<input " + forReadOnly + " class=\"form-control\" id=\"" + inputTagId
									+ "\" type=\"text\" name=\"" + attributeValue + "\" required=\"required\" value=\""
									+ x.get(0) + "\">";
						}

					}
				}

				if (!groupStyle.equals("Shared"))
					temp += "</div>";

				if (isGrouped.equals("Yes")) {
					if (!(previousGroup.equals(groupCaption))) {

						if (!groupStyle.equals("Shared")) {

							if (groupCaption.equals("Change History")) {
								formData += "<div class=\"border_class\" style=\"height: 60vh; overflow: scroll\" >";
							}else {
							formData += "<div class=\"border_class\">";
							}
							formData += "<h3 class=\"h3Arabic\">" + messageSource.getMessage(groupCaption.replaceAll("\\s+", "_"),null,locale) + "</h3>";

						} else {
							formData += "<div class=\"form-group\">";
							formData += "<span class=\"attWithIcon\" style=\"float:left;\">" + messageSource.getMessage(groupCaption.replaceAll("\\s+", "_"),null,locale) + "</span>";

						}
					}

					if (!(i == loopSize - 1)) {
						formData += temp;
					}

					if (!(groupCaption.equals(attributeDetailsForNext.getGroupCaption())) || i == loopSize - 1) {

						if (groupCaption.equals("Change History")) {

							for (int x1 = 0; x1 < groupCaptionlist.get(0).size(); x1++) {

								GroupCaptionTable += "<tr>";

								for (int x2 = 0; x2 < groupCaptionlist.size()+1; x2++) {
									
									if(x2 != groupCaptionlist.size()) {
										String element = groupCaptionlist.get(x2).get(x1);
										// System.out.println("=> "+element);
										if(!element.equals("1900-01-01") ) {
											//	GroupCaptionTable += "<td style=\"text-align: center\">" + messageSource.getMessage(element.replaceAll("\\s+", "_"),null,locale) + "</td>";
											GroupCaptionTable += "<td style=\"text-align: center\">" + element + "</td>";
										}else {
												GroupCaptionTable += "<td style=\"text-align: center\"> </td>";
										}
									}else {
//										GroupCaptionTable += "<td style=\"text-align: center\">Update</td>";
									}
								}
								GroupCaptionTable += "</tr>";
							}

							GroupCaptionTable += "</tbody>";
							GroupCaptionTable += "</table>";
							formData += GroupCaptionTable;
						}
						if (!groupStyle.equals("Shared"))
							formData += "</div>";
						else
							formData += "</div>";
					}
					previousGroup = groupCaption;
				} else {
					formData += temp;
				}
				if (!(pageTitle.equals(attributeDetailsForNext.getPageTitle())) || i == loopSize - 1) {

					formData += "</div>";
				}
				previousPageTitle = pageTitle;
			}
			if (indexOfNext < attributeDetailsList.size() - 1)
				indexOfNext++;
		}

		formData += "</form>";
		formData += "</div>";

		tabsDivs += "</ul>";
		formData = tabsDivs + formData;

		HashMap<String, ArrayList<String>> allData = new HashMap<String, ArrayList<String>>();

		List<String> formData1 = new ArrayList<String>();
		formData1.add(formData);

//		System.out.println("---------------------------------------------------------------------");
//		System.out.println(groupCaptionlist);
//		System.out.println("---------------------------------------------------------------------");

		allData.put("formData", (ArrayList<String>) formData1);
		allData.put("checkboxIds", (ArrayList<String>) checkboxIds);
		allData.put("attributeNames", (ArrayList<String>) allActualValues);
		allData.put("allIds", (ArrayList<String>) allIds);
		allData.put("row_id", (ArrayList<String>) row_id);
		allData.put("CurrenttabID", (ArrayList<String>) CurrenttabID_list);
		allData.put("row_name", (ArrayList<String>) row_name);
		allData.put("AllRelRowIDs", (ArrayList<String>) AllRelRowIDs);
		allData.put("editButtonId", (ArrayList<String>) editButtonId);
		allData.put("object_name_id", (ArrayList<String>) object_name_id);
		allData.put("relationsClassList", (ArrayList<String>) relationsClassList);
		allData.put("last_time_updated", (ArrayList<String>) last_time_updated);
		allData.put("AllRelTableIDs", (ArrayList<String>) AllRelTableIDs);
		allData.put("dataBeforeUpdate", (ArrayList<String>) dataBeforeUpdate);
		allData.put("multiListIds", (ArrayList<String>) multiListIds);
		
//		System.out.println("dataBeforeUpdate: "+dataBeforeUpdate.size());

		return allData;
	}

	@RequestMapping(value = "/delRowData", method = RequestMethod.GET)
	public @ResponseBody String delRowData(@RequestParam String tableName, String name){
		
		//////////////////////////////////////////////////////////////////////////////////////////
		List<ArrayList<String>> historyChanges = new ArrayList<ArrayList<String>>();
		
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			//			System.out.println(userDetail);
			username = userDetail.getUsername();
		}
			
		System.out.println();
		ArrayList<String> temp = new ArrayList<String>();
		
		
		List<Relationships> relationship = unif.getRelations();
		
		ArrayList<String> relNames = new ArrayList<String>();
		
		// System.out.println(relationship);
		// System.out.println("tableName: "+tableName);
		for(int y=0; y< relationship.size(); y++) {
			// System.out.println(relationship.get(y).getRelationshipName());
			relNames.add(relationship.get(y).getRelationshipName().toLowerCase());
		}
		if( !relNames.contains(tableName.toLowerCase()) ) {
				
			
	
			LocalDate currentDate = LocalDate.now(); // Create a date object
			String currentDate1 = ""+currentDate+"";
			
			String currentTime = LocalTime.now()
				    .truncatedTo(ChronoUnit.SECONDS)
				    .format(DateTimeFormatter.ISO_LOCAL_TIME);
			
			temp.add("");
			temp.add(username);
			temp.add(currentDate1);
			temp.add(currentTime);
	
			temp.add(" ");
			temp.add(" ");
			temp.add(" ");
			temp.add("Delete");
			historyChanges.add(temp);
			
			List<String> getColumnNameForChangeHistory = enterpriseDAO.getSelfGeneratedColumnNameForChangeHistory(dbName,tableName.replaceAll("\\s+", "_"));
	
	
			String[] split = null;
			String incSerial = "0";
			String newSerial = "";
			
			String concatWith = "##";
	
			String concatUser = "";
			String concatDate = "";
			String concatTime = "";
			String concatAttr = "";
			
	
			for(int a1=0; a1<historyChanges.size(); a1++) {
				for(int a2=0; a2<historyChanges.get(a1).size(); a2++) {
					
					List<String> id = enterpriseDAO.getIdForElementObject(dbName, tableName, name);
					List<String> getOldValueFromDb = enterpriseDAO.getSelfGeneratedValueForChangeHistory(dbName,tableName.replaceAll("\\s+", "_"),getColumnNameForChangeHistory.get(a2),id.get(0));
					
					
					if(a2==0) {
	
						if(!(getOldValueFromDb.get(0).equals("")) || (getOldValueFromDb.get(0).equals("Null"))|| (getOldValueFromDb.get(0).equals(null))) {
	
							split = getOldValueFromDb.get(0).split(concatWith);
							
							incSerial = Integer.toString(Integer.parseInt(split[split.length-1])+1);
							newSerial = "";
							for(int i=0; i<split.length+1; i++) {
								if(i==split.length) {
									newSerial+=incSerial;
								}else {
									newSerial += split[i] + concatWith;
								}
							}
				
						}else {
							incSerial = "0";
							newSerial+=incSerial + concatWith;
						}
	
						enterpriseDAO.updateSelfGeneratedValueForChangeHistory(dbName, tableName.replaceAll("\\s+", "_"), getColumnNameForChangeHistory.get(a2), newSerial, id.get(0));
						
					}
					else if(a2==1) {
						concatUser = "";
						concatUser = getOldValueFromDb.get(0) + concatWith + username;
	
						enterpriseDAO.updateSelfGeneratedValueForChangeHistory(dbName, tableName.replaceAll("\\s+", "_"), getColumnNameForChangeHistory.get(a2), concatUser, id.get(0));
						
					}
					else if(a2==2) {
						concatDate = "";
						LocalDate currentDate11 = LocalDate.now(); // Create a date object
					    concatDate = getOldValueFromDb.get(0) + concatWith + currentDate11;
	
					    enterpriseDAO.updateSelfGeneratedValueForChangeHistory(dbName, tableName.replaceAll("\\s+", "_"), getColumnNameForChangeHistory.get(a2), concatDate, id.get(0));
					}
					else if(a2==3) {
					    String currentTime1 = LocalTime.now()
							    .truncatedTo(ChronoUnit.SECONDS)
							    .format(DateTimeFormatter.ISO_LOCAL_TIME);
					    
					    concatTime = getOldValueFromDb.get(0) + concatWith + currentTime1;
					    enterpriseDAO.updateSelfGeneratedValueForChangeHistory(dbName, tableName.replaceAll("\\s+", "_"), getColumnNameForChangeHistory.get(a2), concatTime, id.get(0));
					    
					}
					else{
						if(historyChanges.get(a1).get(a2).equals("") || historyChanges.get(a1).get(a2).equals(" ")){
							concatAttr = getOldValueFromDb.get(0) + concatWith + " ";
							enterpriseDAO.updateSelfGeneratedValueForChangeHistory(dbName, tableName.replaceAll("\\s+", "_"), getColumnNameForChangeHistory.get(a2), concatAttr, id.get(0));
	
						}else{
							concatAttr = getOldValueFromDb.get(0) + concatWith + historyChanges.get(a1).get(a2);
							enterpriseDAO.updateSelfGeneratedValueForChangeHistory(dbName, tableName.replaceAll("\\s+", "_"), getColumnNameForChangeHistory.get(a2), concatAttr, id.get(0));
						}
					}
				}
				System.out.println(historyChanges.get(a1));
			}
		}
		
		
		/////////////////////////////////////////////////////////////////////////////////////////
		
		enterpriseDAO.delRowDataFromTree(dbName, tableName, name);
		return "done";
	}
		
	@RequestMapping(value = "/delGraphRowData", method = RequestMethod.GET)
	public @ResponseBody List<graphFiles> delGraphRowData(@RequestParam String graphID, HttpSession session){
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			username = userDetail.getUsername();
		}
		enterpriseDAO.delGraphRowData(graphID);
		String company_name = (String) session.getAttribute("company_name");
		List<graphFiles> graphNames = enterpriseDAO.getGraphRowData(username, company_name);
		return graphNames;
	}
	
	@RequestMapping(value = "/delNavigationRowData", method = RequestMethod.GET)
	public @ResponseBody List<graphFiles> delNavigationRowData(@RequestParam String graphID, HttpSession session){
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			username = userDetail.getUsername();
		}
		enterpriseDAO.delNavigationRowData(graphID);
		String company_name = (String) session.getAttribute("company_name");
		List<graphFiles> graphNames = enterpriseDAO.getNavigationRowData(username, company_name);
		return graphNames;
	}	
//	@RequestMapping(value = "/delNavigationRowData", method = RequestMethod.GET)
//	public @ResponseBody List<graphFiles> delNavigationRowData(@RequestParam String navigationId, HttpSession session){
//		String username = "";
//		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//		if (!(auth instanceof AnonymousAuthenticationToken)) {
//			UserDetails userDetail = (UserDetails) auth.getPrincipal();
//			System.out.println(userDetail);
//			username = userDetail.getUsername();
//		}
//		enterpriseDAO.delGraphRowData(navigationId);
//		String company_name = (String) session.getAttribute("company_name");
//		List<graphFiles> graphNames = enterpriseDAO.getGraphRowData(username, company_name);
//		System.out.println(graphNames);
//		return graphNames;
//	}
	
	@RequestMapping(value = "/delRoadmapRowData", method = RequestMethod.GET)
	public @ResponseBody List<timeLineGraph> delRoadmapRowData(@RequestParam String roadmapid, HttpSession session){
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			username = userDetail.getUsername();
		}
		enterpriseDAO.delRoadmapRowData(roadmapid);
		String company_name = (String) session.getAttribute("company_name");
		List<timeLineGraph> roadmapName = enterpriseDAO.getRoadmapRowData(username, company_name);
		System.out.println("roadmapName data: "+roadmapName);
		return roadmapName;
	}

	@RequestMapping(value = "/delCatalogMatrix", method = RequestMethod.GET)
	public @ResponseBody int delCatalogMatrixRowData(@RequestParam String modelID, String catalog_or_matrix){
		return enterpriseDAO.delCatalogMatrix(modelID,catalog_or_matrix);
	}
	
	@RequestMapping(value = "/restoreData", method = RequestMethod.GET)
	public @ResponseBody List<graphFiles> restoreData(@RequestParam String graphID){
		
		enterpriseDAO.restoreData(graphID);
		
		List<graphFiles> getGraphFilteredDetails = enterpriseDAO.getGraphFilteredDetails(graphID);
		return getGraphFilteredDetails;
	}

	@RequestMapping(value = "/restoreNavigation", method = RequestMethod.GET)
	public @ResponseBody String restoreNavigation(@RequestParam String graphID){
		enterpriseDAO.restoreNavigation(graphID);
		return "done";
	}
	
	@RequestMapping(value = "/getMatrixDetailsFromID", method = RequestMethod.GET)
	public @ResponseBody matrixFiles getMatrixDetailsFromID(@RequestParam String matrixID){
		return enterpriseDAO.getMatrixDetailsFromID(matrixID).get(0);
	}
	
	@RequestMapping(value = "/getCatalogDetailsFromID", method = RequestMethod.GET)
	public @ResponseBody catalogFiles getCatalogDetailsFromID(@RequestParam String catalogID){
		return enterpriseDAO.getCatalogDetailsFromID(catalogID).get(0);
	}
	
	@RequestMapping(value = "/restoreCatalogMatrix", method = RequestMethod.GET)
	public @ResponseBody String restoreCatalogMatrix(@RequestParam String modelID,String catalog_or_matrix){
		enterpriseDAO.restoreCatalogMatrix(modelID,catalog_or_matrix);
		return "done";
	}

	@RequestMapping(value = "/restoreObj", method = RequestMethod.GET)
	public @ResponseBody String restoreObj(@RequestParam String tableName, String name, String ul_id){
		
		//////////////////////////////////////////////////////////////////////////////////////////
		List<ArrayList<String>> historyChanges = new ArrayList<ArrayList<String>>();
		
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			//			System.out.println(userDetail);
			username = userDetail.getUsername();
		}
		
		List<Relationships> relationship = unif.getRelations();
		
		ArrayList<String> relNames = new ArrayList<String>();
		
		System.out.println(relationship);
		System.out.println("tableName: "+tableName);
		for(int y=0; y< relationship.size(); y++) {
			System.out.println(relationship.get(y).getRelationshipName());
			relNames.add(relationship.get(y).getRelationshipName().toLowerCase());
		}
		if( !relNames.contains(tableName.toLowerCase()) ) {
		
			System.out.println();
			ArrayList<String> temp = new ArrayList<String>();
			
	
			LocalDate currentDate = LocalDate.now(); // Create a date object
			String currentDate1 = ""+currentDate+"";
			
			String currentTime = LocalTime.now()
				    .truncatedTo(ChronoUnit.SECONDS)
				    .format(DateTimeFormatter.ISO_LOCAL_TIME);
			
			temp.add("");
			temp.add(username);
			temp.add(currentDate1);
			temp.add(currentTime);
	
			temp.add(" ");
			temp.add(" ");
			temp.add(" ");
			temp.add("Restore");
			historyChanges.add(temp);
			
			List<String> getColumnNameForChangeHistory = enterpriseDAO.getSelfGeneratedColumnNameForChangeHistory(dbName,tableName.replaceAll("\\s+", "_"));
	
	
			String[] split = null;
			String incSerial = "0";
			String newSerial = "";
			
			String concatWith = "##";
	
			String concatUser = "";
			String concatDate = "";
			String concatTime = "";
			String concatAttr = "";
			
	
			for(int a1=0; a1<historyChanges.size(); a1++) {
				for(int a2=0; a2<historyChanges.get(a1).size(); a2++) {
					
					List<String> id = enterpriseDAO.getIdForElementObject(dbName, tableName, name);
					List<String> getOldValueFromDb = enterpriseDAO.getSelfGeneratedValueForChangeHistory(dbName,tableName.replaceAll("\\s+", "_"),getColumnNameForChangeHistory.get(a2),id.get(0));
					
					
					if(a2==0) {
	
						if(!(getOldValueFromDb.get(0).equals("")) || (getOldValueFromDb.get(0).equals("Null"))|| (getOldValueFromDb.get(0).equals(null))) {
	
							split = getOldValueFromDb.get(0).split(concatWith);
							
							incSerial = Integer.toString(Integer.parseInt(split[split.length-1])+1);
							newSerial = "";
							for(int i=0; i<split.length+1; i++) {
								if(i==split.length) {
									newSerial+=incSerial;
								}else {
									newSerial += split[i] + concatWith;
								}
							}
						}else {
							incSerial = "0";
							newSerial+=incSerial + concatWith;
						}
						enterpriseDAO.updateSelfGeneratedValueForChangeHistory(dbName, tableName.replaceAll("\\s+", "_"), getColumnNameForChangeHistory.get(a2), newSerial, id.get(0));
					}
					else if(a2==1) {
						concatUser = "";
						concatUser = getOldValueFromDb.get(0) + concatWith + username;
	
						enterpriseDAO.updateSelfGeneratedValueForChangeHistory(dbName, tableName.replaceAll("\\s+", "_"), getColumnNameForChangeHistory.get(a2), concatUser, id.get(0));
					}
					else if(a2==2) {
						concatDate = "";
						LocalDate currentDate11 = LocalDate.now(); // Create a date object
					    concatDate = getOldValueFromDb.get(0) + concatWith + currentDate11;
	
					    enterpriseDAO.updateSelfGeneratedValueForChangeHistory(dbName, tableName.replaceAll("\\s+", "_"), getColumnNameForChangeHistory.get(a2), concatDate, id.get(0));
					}
					else if(a2==3) {
					    String currentTime1 = LocalTime.now()
							    .truncatedTo(ChronoUnit.SECONDS)
							    .format(DateTimeFormatter.ISO_LOCAL_TIME);
					    
					    concatTime = getOldValueFromDb.get(0) + concatWith + currentTime1;
					    enterpriseDAO.updateSelfGeneratedValueForChangeHistory(dbName, tableName.replaceAll("\\s+", "_"), getColumnNameForChangeHistory.get(a2), concatTime, id.get(0));
					}
					else{
						if(historyChanges.get(a1).get(a2).equals("") || historyChanges.get(a1).get(a2).equals(" ")){
							concatAttr = getOldValueFromDb.get(0) + concatWith + " ";
							enterpriseDAO.updateSelfGeneratedValueForChangeHistory(dbName, tableName.replaceAll("\\s+", "_"), getColumnNameForChangeHistory.get(a2), concatAttr, id.get(0));
						}else{
							concatAttr = getOldValueFromDb.get(0) + concatWith + historyChanges.get(a1).get(a2);
							enterpriseDAO.updateSelfGeneratedValueForChangeHistory(dbName, tableName.replaceAll("\\s+", "_"), getColumnNameForChangeHistory.get(a2), concatAttr, id.get(0));
						}
					}
				}
				System.out.println(historyChanges.get(a1));
			}
		}
		/////////////////////////////////////////////////////////////////////////////////////////
		
		enterpriseDAO.restoreObj(dbName, tableName, name, ul_id);
		return "done";
	}

	@RequestMapping(value = "/restoreRoadmapFolder", method = RequestMethod.GET)
	public @ResponseBody String restoreRoadmapFolder(@RequestParam String folderName,@RequestParam String roadmapID, @RequestParam String folderID, HttpSession session){
		String username = "";
		String tree = "";
		System.out.println("folderName"+folderName);
		System.out.println("roadmapID"+roadmapID);
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			userDetail = (UserDetails) auth.getPrincipal();
			username = userDetail.getUsername();
			
		}
		//Working here
		tree += "<ul id=\""+folderName+roadmapID+"\" class=\"nested active\">";
		
		String company_name = (String) session.getAttribute("company_name");
		List<timeLineGraph> roadmap = enterpriseDAO.restoreRoadmapFolder(roadmapID,username,company_name);
		for(timeLineGraph rm: roadmap) {
			rm.getroadmapName();																																																													
			tree +="<li id=\""+rm.getroadmapName()+rm.getId()+"\" class=\"model_list "+folderName+"\" onclick=\"getroadmap('"+rm.getroadmapName()+"','"+rm.getId()+"','"+folderID+"','"+rm.getCompanyName()+"','"+rm.getParentID()+"')\" oncontextmenu=\"on_context_menu_remove_roadmap('"+rm.getId()+"','"+rm.getroadmapName()+ rm.getId()+"','"+folderName + roadmapID+"','"+rm.getroadmapName()+"','"+rm.getCompanyName()+"','"+rm.getParentID()+"','"+folderName+"')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/modelImage.svg\">&nbsp;"+rm.getroadmapName()+"</li>";
		}
		tree+="</ul>";
		return tree;
	}
	
	@RequestMapping(value = "/restoreFolder", method = RequestMethod.GET)
	public @ResponseBody String restoreFolder(@RequestParam String folderName,@RequestParam String graphID, HttpSession session){
		String username = "";
		String tree = "";
		System.out.println("folderName"+folderName);
		System.out.println("graphID"+graphID);
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			userDetail = (UserDetails) auth.getPrincipal();
			username = userDetail.getUsername();
		}
		//Working here
		tree += "<ul id=\""+folderName+graphID+"\" class=\"nested active\">";
//		Get GraphNames
		String company_name = (String) session.getAttribute("company_name");
		List<graphFiles> graphNames = enterpriseDAO.restoreFolder(graphID, username, company_name);
		System.out.println(graphNames);
		for(graphFiles gn: graphNames) {
			gn.getModelName();
			if(gn.getIsFiltered().equals("true")){
					tree +="<li id=\""+gn.getModelName()+gn.getId()+"\" class=\"model_list "+folderName+"\" onclick=\"drawFilteredDiagram('"+gn.getId()+"','"+folderName+"','"+gn.getModelName()+"','"+gn.getFilteredDetails().replaceAll("\"", "%%")+"')\" oncontextmenu=\"on_context_menu_remove_filtered_graph('"+gn.getId()+"','"+gn.getModelName() + gn.getId()+"','"+folderName + graphID+"','"+gn.getModelName()+"','"+folderName+"')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/modelImageFiltered.svg\">&nbsp;"+gn.getModelName()+"</li>";
				}else {
				tree +="<li id=\""+gn.getModelName()+gn.getId()+"\" class=\"model_list "+folderName+"\" onclick=\"getDBlist('"+gn.getModelName()+"','"+gn.getId()+"', true, '"+folderName+"')\" oncontextmenu=\"on_context_menu_remove_graph('"+gn.getId()+"','"+gn.getModelName() + gn.getId()+"','"+folderName + graphID+"','"+gn.getModelName()+"','"+folderName+"')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/modelImage.svg\">&nbsp;"+gn.getModelName()+"</li>";
			}
		}
//		Get Navigation
		List<navigationFiles> navigationNames = enterpriseDAO.restoreNavigation(graphID,username, company_name);
		System.out.println(graphNames);
		for(navigationFiles gn: navigationNames) {
			gn.getNavigationName();
			tree +="<li id=\""+gn.getNavigationName()+gn.getId()+"\" class=\"model_list "+folderName+"\" onclick=\"drawNavigationFromDB('"+gn.getNavigationName()+"','"+gn.getId()+"','true','"+folderName+"')\" oncontextmenu=\"on_context_menu_remove_navigation('"+gn.getId()+"','"+gn.getNavigationName() + gn.getId()+"','"+folderName + graphID+"','"+gn.getNavigationName()+"','"+folderName+"','navigation')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/navigation.svg\">&nbsp;"+gn.getNavigationName()+"</li>";
		}		
//		Get CatalogNames
//		List<catalogFiles> catalogNames = enterpriseDAO.getCatalogNamesFromFolder(username,id,"1");
		List<catalogFiles> CatalogNames = enterpriseDAO.restoreFolderWithCatalog(graphID,username, company_name);
		System.out.println(CatalogNames);
		for(catalogFiles gn: CatalogNames) {
			gn.getModelName();
			tree += "<li id=\""+gn.getModelName().replaceAll(" ", "---")+gn.getId()+"\" class=\"model_list "+folderName.replaceAll(" ", "---")+"\" onclick=\"drawCatalogFromXML(\'"+gn.getModelName()+"\',\'"+gn.getId()+"\',\'"+gn.getElementName()+"\', '"+folderName.replaceAll(" ", "---")+"')\" oncontextmenu=\"on_context_menu_remove_catalog_matrix(\'"+gn.getId()+"\',\'"+gn.getModelName().replaceAll(" ", "---")+gn.getId()+"\',\'"+folderName.replaceAll(" ", "---")+gn.getId()+"\',\'"+gn.getModelName()+"\',\'"+folderName.replaceAll(" ", "---")+"\',\'catalog\')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/catalog.svg\">&nbsp;"+gn.getModelName()+"</li>";
//			tree +="<li id=\""+gn.getModelName()+gn.getId()+"\" class=\"model_list "+folderName+"\" onclick=\"drawCatalogFromXML('"+gn.getModelName()+"','"+gn.getId()+"')\" oncontextmenu=\"on_context_menu_remove_catalog_matrix('"+gn.getId()+"','"+gn.getModelName() + gn.getId()+"','"+folderName + graphID+"','"+gn.getModelName()+"','"+folderName+"','catalog')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/catalog.svg\">&nbsp;"+gn.getModelName()+"</li>";
		}
//		Get MatrixNames
//		List<matrixFiles> matrixNames = enterpriseDAO.getMatrixNamesFromFolder(username,id,"1");
//		List<matrixFiles> matrixNames = enterpriseDAO.getMatrixNamesFromFolder(graphID,username);
		List<matrixFiles> MatrixNames = enterpriseDAO.restoreFolderWithMatrix(graphID,username, company_name);
		System.out.println(MatrixNames);
		for(matrixFiles gn: MatrixNames) {
			gn.getModelName();
			tree += "<li id=\""+gn.getMatrix_name().replaceAll(" ", "---")+gn.getId()+"\" class=\"model_list "+folderName.replaceAll(" ", "---")+"\" onclick=\"drawMatrixFromXML('"+gn.getMatrix_name()+"','"+gn.getMatrix_element1()+"','"+gn.getMatrix_element2()+"','"+gn.getMatrix_relation()+"','"+gn.getParentID()+"', '"+folderName.replaceAll(" ", "---")+"')\" oncontextmenu=\"on_context_menu_remove_catalog_matrix(\'"+gn.getId()+"\',\'"+gn.getMatrix_name().replaceAll(" ", "---")+gn.getId()+"\',\'"+folderName.replaceAll(" ", "---")+gn.getId()+"\',\'"+gn.getMatrix_name()+"\',\'"+folderName.replaceAll(" ", "---")+"\',\'matrix\')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/matrix.svg\">&nbsp;"+gn.getMatrix_name().replaceAll("---"," ")+"</li>";			
//			tree +="<li id=\""+gn.getModelName()+gn.getId()+"\" class=\"model_list "+folderName+"\" onclick=\"getDBlist('"+gn.getModelName()+"','"+gn.getId()+"')\" oncontextmenu=\"on_context_menu_remove_graph('"+gn.getId()+"','"+gn.getModelName() + gn.getId()+"','"+folderName + graphID+"','"+gn.getModelName()+"','"+folderName+"')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/modelImage.svg\">&nbsp;"+gn.getModelName()+"</li>";
		}
//		Get MatrixNames
		List<timeLineGraph> roadMapNames = enterpriseDAO.restoreFolderWithRoadmap(graphID,username, company_name);
//		List<matrixFiles> MatrixNames = enterpriseDAO.restoreFolderWithMatrix(graphID,username);
		System.out.println(roadMapNames);
		for(timeLineGraph rm: roadMapNames) {
//			rm.getModelName();
//			tree += "<li id=\""+gn.getMatrix_name().replaceAll(" ", "---")+gn.getId()+"\" class=\"model_list "+folderName.replaceAll(" ", "---")+"\" onclick=\"drawMatrixFromXML('"+gn.getMatrix_name()+"','"+gn.getMatrix_element1()+"','"+gn.getMatrix_element2()+"','"+gn.getMatrix_relation()+"','"+gn.getParentID()+"')\" oncontextmenu=\"on_context_menu_remove_catalog_matrix(\'"+gn.getId()+"\',\'"+gn.getMatrix_name().replaceAll(" ", "---")+gn.getId()+"\',\'"+folderName.replaceAll(" ", "---")+gn.getId()+"\',\'"+gn.getMatrix_name()+"\',\'"+folderName.replaceAll(" ", "---")+"\',\'matrix\')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/matrix.svg\">&nbsp;"+gn.getMatrix_name().replaceAll("---"," ")+"</li>";			
			tree += "<li id=\""+rm.getroadmapName().replaceAll(" ", "---")+rm.getId()+"\" class=\"model_list "+folderName.replaceAll(" ", "---")+"\" onclick=\"getRoadmap(\'"+rm.getroadmapName()+"\',\'"+rm.getId()+"\',\'"+rm.getCompanyName()+"\',\'"+rm.getParentID()+"\')\" oncontextmenu=\"on_context_menu_remove_roadmap(\'"+rm.getId()+"\',\'"+rm.getroadmapName()+rm.getId()+"\', \'"+folderName.replaceAll(" ", "---")+rm.getId()+"\',\'"+rm.getroadmapName()+"\',\'"+rm.getCompanyName()+"\',\'"+rm.getParentID()+"\',\'"+folderName.replaceAll(" ", "---")+"\')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/road.svg\">&nbsp;"+rm.getroadmapName().replaceAll("---"," ")+"</li>";
			//			tree +="<li id=\""+gn.getModelName()+gn.getId()+"\" class=\"model_list "+folderName+"\" onclick=\"getDBlist('"+gn.getModelName()+"','"+gn.getId()+"')\" oncontextmenu=\"on_context_menu_remove_graph('"+gn.getId()+"','"+gn.getModelName() + gn.getId()+"','"+folderName + graphID+"','"+gn.getModelName()+"','"+folderName+"')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/modelImage.svg\">&nbsp;"+gn.getModelName()+"</li>";
		}
		tree+="</ul>";
		return tree;
	}
	
	@RequestMapping(value = "/deleteModelPermanently", method = RequestMethod.GET)
	public @ResponseBody String deleteModelPermanently(@RequestParam int graphID){
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			username = userDetail.getUsername();
		}
		int a = enterpriseDAO.deleteModelPermanently(graphID, username);
		if(a==1)
			return "done";
		else
			return "notSubmit";
	}
	
	@RequestMapping(value = "/deleteNavigationPermanently", method = RequestMethod.GET)
	public @ResponseBody String deleteNavigationPermanently(@RequestParam int graphID){
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			username = userDetail.getUsername();
		}
		int a = enterpriseDAO.deleteNavigationPermanently(graphID, username);
		if(a==1)
			return "done";
		else
			return "notSubmit";
	}	
	
	@RequestMapping(value = "/deleteRoadmapPermanently", method = RequestMethod.GET)
	public @ResponseBody String deleteRoadmapPermanently(@RequestParam int roadmapID){
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			username = userDetail.getUsername();
		}
		int a = enterpriseDAO.deleteRoadmapPermanently(roadmapID, username);
		if(a==1)
			return "done";
		else
			return "notSubmit";
	}
	
	@RequestMapping(value = "/deleteCatalogMatrixPermanently", method = RequestMethod.GET)
	public @ResponseBody String deleteCatalogMatrixPermanently(@RequestParam String modelID,String catalog_or_matrix){
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			username = userDetail.getUsername();
		}
		int a = enterpriseDAO.deleteCatalogMatrixPermanently(modelID, catalog_or_matrix);
		if(a==1)
			return "done";
		else
			return "notSubmit";
	}
	
	@RequestMapping(value = "/deleteFolderPermanently", method = RequestMethod.GET)
	public @ResponseBody String deleteFolderPermanently(@RequestParam int graphID){
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			username = userDetail.getUsername();
		}
		int a = enterpriseDAO.deleteFolderPermanently(graphID, username);
		if(a==1)
			return "done";
		else
			return "notSubmit";
	}
	
	@RequestMapping(value = "/deleteObjPermanently", method = RequestMethod.GET)
	public @ResponseBody String deleteObjPermanently(@RequestParam String tableName, String name, String ul_id){
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			username = userDetail.getUsername();
		}
		int a = enterpriseDAO.deleteObjPermanently(dbName, tableName, name, ul_id, username);
		if(a==1)
			return "done";
		else
			return "notSubmit";
	}
	
	@RequestMapping(value = "/deleteModelFolder", method = RequestMethod.GET)
	public @ResponseBody String deleteModelFolder(@RequestParam int id){
//	public @ResponseBody List<graphFiles> deleteModelFolder(@RequestParam int id){
//		String username = "";
//		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//		if (!(auth instanceof AnonymousAuthenticationToken)) {
//			UserDetails userDetail = (UserDetails) auth.getPrincipal();
//			System.out.println(userDetail);
//			username = userDetail.getUsername();
//		}
		enterpriseDAO.deleteModelFolder(id);
//		int folderNames = enterpriseDAO.deleteModelFolder(username);
		return null;
	}
	
	@RequestMapping(value = "/getGraphRowData", method = RequestMethod.GET)
	public @ResponseBody String getGraphRowData(@RequestParam String graphID){
		//enterpriseDAO.getGraphRowData(graphID);
		//List<graphFiles> graphNames = enterpriseDAO.getGraphRowData(username,id);
		return "done";
	}
	
	@RequestMapping(value = "/createNewModelFolder", method = RequestMethod.GET)
	public @ResponseBody String createNewModelFolder(@RequestParam String id, String name, String folderName, String company_name, HttpSession session){
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			username = userDetail.getUsername();
		}
		String getID = enterpriseDAO.createNewModelFolder(id, name, folderName,username, company_name.replaceAll("---", " "));
		
//		String path = session.getServletContext().getRealPath("/");
//		String[] splitString = path.split("\\.metadata");
//		Locale locale = LocaleContextHolder.getLocale();
//		
////		For Local
//		String filePath = splitString[0] + remainingString;
//		File folder = new File(filePath);
//		File[] listOfFiles = folder.listFiles();
//		for (File file : listOfFiles) {
//		    if (file.isFile()) {
//		        try (OutputStream output = new FileOutputStream(filePath+"\\"+file.getName(), true)) {
//		            Properties prop = new Properties();
//		            // set the properties value
//		            prop.setProperty(folderName.replaceAll(" ", "_"), folderName);
//		            // save properties to project root folder
//		            prop.store(output, null);
//		            output.close();
//		        } catch (IOException io) {
//		            io.printStackTrace();
//		        }
//		    }
//		}
		
//		For Online
//		File folder = new File(path);
//		File[] listOfFiles = folder.listFiles();
//		for (File file : listOfFiles) {
//		    if (file.isFile()) {
//		        try (OutputStream output = new FileOutputStream(path+"\\"+file.getName(), true)) {
//		            Properties prop = new Properties();
//		            // set the properties value
//		            prop.setProperty(folderName.replaceAll(" ", "_"), folderName);
//		            // save properties to project root folder
//		            prop.store(output, null);
//		            output.close();
//		        } catch (IOException io) {
//		            io.printStackTrace();
//		        }
//		    }
//		}
		return getID;
	}
	
	@RequestMapping(value = "/validateFolderName", method = RequestMethod.GET)
	public @ResponseBody String validateFolderName(@RequestParam String folderName){
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			username = userDetail.getUsername();
		}
		String getID = enterpriseDAO.validateFolderName(folderName,username);
		return getID;
	}
	
	@RequestMapping(value = "/createNewModelFile", method = RequestMethod.GET)
	public @ResponseBody String createNewModelFile(@RequestParam String id, String company_name, String graphname,String graph_json, HttpSession session){
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			username = userDetail.getUsername();
		}
//		String path = session.getServletContext().getRealPath("/");
//		String[] splitString = path.split("\\.metadata");
//		Locale locale = LocaleContextHolder.getLocale();	
//		
////		For Local
//		String filePath = splitString[0] + remainingString;
//		File folder = new File(filePath);
//		File[] listOfFiles = folder.listFiles();
//		for (File file : listOfFiles) {
//		    if (file.isFile()) {
//		        try (OutputStream output = new FileOutputStream(filePath+"\\"+file.getName(), true)) {
//		            Properties prop = new Properties();
//		            // set the properties value
//		            prop.setProperty(graphname.replaceAll(" ", "_"), graphname);
//		            // save properties to project root folder
//		            prop.store(output, null);
//		            output.close();
//		        } catch (IOException io) {
//		            io.printStackTrace();
//		        }
//		    }
//		}
		
//		For Online
//		File folder = new File(path);
//		File[] listOfFiles = folder.listFiles();
//		for (File file : listOfFiles) {
//		    if (file.isFile()) {
//		        try (OutputStream output = new FileOutputStream(path+"\\"+file.getName(), true)) {
//		            Properties prop = new Properties();
//		            // set the properties value
//		            prop.setProperty(graphname.replaceAll(" ", "_"), graphname);
//		            // save properties to project root folder
//		            prop.store(output, null);
//		            output.close();
//		        } catch (IOException io) {
//		            io.printStackTrace();
//		        }
//		    }
//		}
		enterpriseDAO.createNewModelFile(id, company_name.replaceAll("---", " "), username, graphname,graph_json);
		String graphID = enterpriseDAO.getGraphIDFromFolder(username,id,graphname);
		System.out.println(graphID);
		return graphID;
	}
	
	
	@RequestMapping(value = "/createNewModelFileForFilteredDiagram", method = RequestMethod.POST)
	public @ResponseBody String createNewModelFileForFilteredDiagram(
		@RequestParam String id, 
		String company_name, 
		String graphname, 
		String graph_json,
		String isFiltered,
		String filteredDetails,
		HttpSession session){
		
		
		// System.out.println("isFiltered: "+isFiltered);
		// System.out.println("isDiagramFiltered: "+filteredDetails);
		
		
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			username = userDetail.getUsername();
		}
//		String path = session.getServletContext().getRealPath("/");
//		String[] splitString = path.split("\\.metadata");
//		Locale locale = LocaleContextHolder.getLocale();	
//		
////		For Local
//		String filePath = splitString[0] + remainingString;
//		File folder = new File(filePath);
//		File[] listOfFiles = folder.listFiles();
//		for (File file : listOfFiles) {
//		    if (file.isFile()) {
//		        try (OutputStream output = new FileOutputStream(filePath+"\\"+file.getName(), true)) {
//		            Properties prop = new Properties();
//		            // set the properties value
//		            prop.setProperty(graphname.replaceAll(" ", "_"), graphname);
//		            // save properties to project root folder
//		            prop.store(output, null);
//		            output.close();
//		        } catch (IOException io) {
//		            io.printStackTrace();
//		        }
//		    }
//		}
		
//		For Online
//		File folder = new File(path);
//		File[] listOfFiles = folder.listFiles();
//		for (File file : listOfFiles) {
//		    if (file.isFile()) {
//		        try (OutputStream output = new FileOutputStream(path+"\\"+file.getName(), true)) {
//		            Properties prop = new Properties();
//		            // set the properties value
//		            prop.setProperty(graphname.replaceAll(" ", "_"), graphname);
//		            // save properties to project root folder
//		            prop.store(output, null);
//		            output.close();
//		        } catch (IOException io) {
//		            io.printStackTrace();
//		        }
//		    }
//		}
		enterpriseDAO.createNewModelFileForFilteredDiagram(id, company_name.replaceAll("---", " "), username, graphname, graph_json, isFiltered, filteredDetails);
		String graphID = enterpriseDAO.getGraphIDFromFolder(username, id, graphname);
		System.out.println(graphID);
		
		return graphID;
	}
	
	
	String tabID = "tabs_00";
	int tabsID_count = 0;

	@RequestMapping(value = "/findAttributesForForm", method = RequestMethod.GET)
	public @ResponseBody HashMap<String, ArrayList<String>> findAttributesForForm(@RequestParam String tableName,
			@RequestParam String type, HttpSession session) throws JAXBException, FileNotFoundException {

			String formData = "";
			String tabsDivs = "";
			String elementIcon = tableName.replaceAll("\\s+", "-").replaceAll("_+", "-").toLowerCase() + ".svg";
			tableName = tableName.replaceAll("_", " ");
			String element_name = tableName;
			String lastObjectId = enterpriseDAO.getLastObjectId(dbName, tableName.replaceAll("\\s+", "_"));
			int length = 6;
		    boolean useLetters = true;
		    boolean useNumbers = true;
		    String generatedString = RandomStringUtils.random(length, useLetters, useNumbers);
		    
//		    if(lastObjectId == null) {
//		    	lastObjectId = "0";
//		    }
//			int loopLength = 5-lastObjectId.length();
//			for(int i = 0; i<loopLength; i++) {
//				lastObjectId = "0"+lastObjectId;
//			}
			String UniqueObjectName = tableName + "_" + generatedString + "" + lastObjectId;
			List<String> UniqueObjectNameList = new ArrayList<String>();
			UniqueObjectNameList.add(UniqueObjectName);
			
			String previousPageTitle = "";
			tableName = tableName.replaceAll("\\s+", "_");
//				tableName = tableName.toLowerCase();
//			List<String> attrList = enterpriseDAO.listAttributesFromAttributes_Information(dbName, tableName);
			List<attributesInformationModel> attributeDetailsList = enterpriseDAO.getAllAttributeDetails(dbName,tableName);
			List<String> allActualValues = new ArrayList<String>();
			List<String> allIds = new ArrayList<String>();
			List<String> checkboxIds = new ArrayList<String>();
			List<String> CurrenttabID_list = new ArrayList<String>();
			List<String> saveButtonId = new ArrayList<String>();
			

			previousPageTitle = "";
			String previousGroup = "";
			String attributeType = "";
			String targetRelationship_Element = "";
			String sourceRelationship_Element = "";
			String actualAttribute = "";
			String isGrouped = "";
			String groupStyle = "";
			String groupCaption = "";
			String attributeFormat = "";
			String pageNumber = "";
			String pageTitle = "";
			String allowableValues = "";
			String attributeValue = "";
			String attributeTip = "";
			String relElement = "";
			String maximumNumberofObjectOccurrence = "";
			String inputTagId = "";
			List<String> currentGroupRelElement = new ArrayList<String>();
			int indexOfNext = 1;
			String CurrenttabID = tabID + tabsID_count++;
			CurrenttabID_list.add(CurrenttabID);
			tabsDivs += "<div id=\"" + CurrenttabID + "\">";
			tabsDivs += "<ul>";

			formData += "<form id=\'"+CurrenttabID+"'\">";
			formData +="&nbsp;&nbsp;<img style=\"width:30px; height:30px\" draggable=\"false\" src=\"resources/js/examples/editors/images/images1/"+elementIcon+"\">";
			formData += "&nbsp;&nbsp;<label style=\"font-size:18px\"> "+UniqueObjectName+" </label>";
			formData += "&nbsp;<label style=\"font-size:18px\"> ["+element_name+"] </label>";
			
			formData += "<button id=\"btnsave"+tabsID_count+"\" disabled=\"\" class=\"btn btn-Submit submit-data\" type=\"button\"><span class=\"fa fa-floppy-o fa-lg\" aria-hidden=\"true\"></span></button>";
			saveButtonId.add("btnsave"+tabsID_count);
			int loopSize = attributeDetailsList.size();
//			for (attributesInformationModel attributeDetails : attributeDetailsList) {
			for(int i=0;i<loopSize;i++) {
				attributesInformationModel attributeDetails = attributeDetailsList.get(i);
				String att_name = attributeDetails.getActualAttribute();
				if (!(att_name.equals("id"))) {
					attributesInformationModel attributeDetailsForNext = attributeDetailsList.get(indexOfNext);

					attributeType = attributeDetails.getAttributeType();
					targetRelationship_Element = attributeDetails.getTargetRelationship_Element();
					sourceRelationship_Element = attributeDetails.getSourceRelationship_Element();
					actualAttribute = attributeDetails.getActualAttribute();
					isGrouped = attributeDetails.getIsGrouped();
					groupStyle = attributeDetails.getGroupStyle();
					groupCaption = attributeDetails.getGroupCaption();
					attributeFormat = attributeDetails.getAttributeFormat();
					pageNumber = attributeDetails.getPageNumber();
					pageTitle = attributeDetails.getPageTitle();
					allowableValues = attributeDetails.getAllowableValues();
					attributeTip = attributeDetails.getAttributeTip();

					if (targetRelationship_Element.equals("N/A")) {
						relElement = sourceRelationship_Element;
					} else {
						relElement = targetRelationship_Element;
					}

					if (allActualValues.contains(actualAttribute)) {
						int arr_size = allActualValues.size();
						Map<String, Integer> frequency = methods.findRepeating(allActualValues, arr_size);
						for (Entry<String, Integer> entry : frequency.entrySet()) {
							if (actualAttribute.equals(entry.getKey()))
								attributeValue = actualAttribute + "_" + entry.getValue();
						}
					} else
						attributeValue = actualAttribute;
					attributeValue = attributeValue.replaceAll("[\\(\\)\\[\\]\\{\\}]", "_");
					attributeValue = attributeValue.replaceAll("\\/", "_");
					


					if (!(previousPageTitle.equals(pageTitle))) {
						formData += "<div id=\"tabs-" + pageNumber.replace(".0", "") + "\">";

						tabsDivs += "<li><a title=\""+pageTitle+"\" class=\"fullTab\" href=\"#tabs-" + pageNumber.replace(".0", "") + "\">"
								+ pageTitle + "</a></li>";
					}
					String temp = "";
					if(!groupStyle.equals("Shared")) {
						temp = "<div class=\"form-group\">";
						allActualValues.add(actualAttribute);
					}
					if(groupStyle.equals("Shared") &&  (attributeType.equals("Relationship")) ) {
						currentGroupRelElement.add(relElement);
						
						if (!(groupCaption.equals(attributeDetailsForNext.getGroupCaption())) || i == loopSize - 1) {
							allActualValues.add(groupCaption);
							inputTagId = groupCaption.replaceAll("\\s+", "_").replace('?', '_')+"21"+tabsID_count;
							allIds.add(inputTagId);
							System.out.println("Group Relationship Elements: "+currentGroupRelElement);
							maximumNumberofObjectOccurrence = attributeDetails.getMaximumNumberofObjectOccurrence();
							temp += "<div align=\"right\"><i onclick=\"showRelationsObjects('" + currentGroupRelElement + "', '"
									+ inputTagId+"','"+maximumNumberofObjectOccurrence+"', 'btnsave"+tabsID_count+"');\" class=\"fa fa-plus-square plus_and_info_button\" > </i></div>";
							temp += "<table id=\""+inputTagId+"\" class=\"table table-striped table-bordered\" style=\"width:100%\">";
							temp += "<thead class=\"formTablehead\"> <tr> <th style=\"width: 5px !important\">Type</th> <th>Name</th></tr> </thead>";
							/*
							 * temp += "<tbody class=\"table_data\">" +
							 * "<tr><td class = \"first_td\"></td><td class=\"object_name_form\"></td></tr>"
							 * + "</tbody>";
							 */
							temp += "<tbody class=\"table_data\">";
							temp += "<tr><td class = \"first_td\"></td><td class=\"object_name_form\"></td></tr>";
							temp += "<tr><td class = \"first_td\"></td><td class=\"object_name_form\"></td></tr>";
							temp += "<tr><td class = \"first_td\"></td><td class=\"object_name_form\"></td></tr>";
							temp += "<tr><td class = \"first_td\"></td><td class=\"object_name_form\"></td></tr>";
							temp += "</tbody>";
							temp += "</table>";
							currentGroupRelElement.clear();
						}
					}else {
						inputTagId = attributeValue.replaceAll("\\s+", "_").replace('?', '_')+"21"+tabsID_count;
						allIds.add(inputTagId);
						temp += "<span style=\"float:left; \">" + actualAttribute
								+ "</span><span title=\"Information\" style=\"float:left;margin-left:5px;\"><i onclick=\"information_modal('"
								+ actualAttribute + "','" + attributeTip
								+ "')\" class=\"fa fa-info-circle plus_and_info_button\"></i></span>";
						if (attributeType.equals("Relationship")) {
							maximumNumberofObjectOccurrence = attributeDetails.getMaximumNumberofObjectOccurrence();
							temp += "<div align=\"right\"><i onclick=\"showRelationsObjects('" + relElement + "', '"
									+ inputTagId+"','"+maximumNumberofObjectOccurrence+"', 'btnsave"+tabsID_count+"');\" class=\"fa fa-plus-square plus_and_info_button\" > </i></div>";
							temp += "<table id=\""+inputTagId+"\" class=\"table table-striped table-bordered\" style=\"width:100%\">";
							temp += "<thead class=\"formTablehead\"> <tr> <th style=\"width: 5px !important\">Type</th> <th>Name</th></tr> </thead>";
							temp += "<tbody class=\"table_data\">"
									+ "<tr><td style=\"width: 5px !important\"></td><td class=\"object_name_form\"></td></tr>"
									+ "</tbody>";
							temp += "</table>";
						} else {
							if (attributeFormat.equals("List")) {
								String valuesString = allowableValues;
								String[] arrayString = new String[0];
								if (valuesString != null)
									arrayString = valuesString.split(";");
								temp += "<select class=\"form-control\" id=\""+inputTagId+"\" >";
								temp += "<option disabled=\"disabled\" selected> -- Select -- </option>";
								for (String val1 : arrayString) {
									if (val1.equals(type)) {
										temp += "<option selected>" + val1 + "</option>";
									} else
										temp += "<option>" + val1 + "</option>";
								}
								temp += "</select>";
							} else if (attributeFormat.equals("CheckBox")) {
								checkboxIds.add(attributeValue.replaceAll("\\s+", "_").replace('?', '_') + "21");
								temp += "&nbsp;&nbsp;&nbsp;<input  id=\""+inputTagId+"\" type=\"checkbox\" name=\"" + attributeValue + "\" style=\"margin-top:3px\" required=\"required\">";
							} else if (attributeFormat.equals("Time")) {
								temp += "<input class=\"form-control time_class\" id=\""+inputTagId+"\" type=\"time\" name=\"" + attributeValue + "\" required=\"required\">";
							} else if (attributeFormat.equals("Date")) {
								temp += "<input class=\"form-control date_class\" id=\""+inputTagId+"\" type=\"date\" name=\"" + attributeValue + "\" required=\"required\">";
							} else if (attributeFormat.equals("Rich Text")) {
								temp += "<textarea rows=\"4\" class=\"form-control\" id=\""+inputTagId+ "\" name=\""
										+ attributeValue + "\" ></textarea>";
							} else {
								if(actualAttribute.equals("Name")) {
									temp += "<input class=\"form-control input_field\" id=\""+inputTagId+"\" type=\"text\" name=\"" + attributeValue + "\" value=\""+UniqueObjectName+"\" required=\"required\">";
								}else
									temp += "<input class=\"form-control input_field\" id=\""+inputTagId+"\" type=\"text\" name=\"" + attributeValue + "\" required=\"required\">";
							}
						}
					}
					if(!groupStyle.equals("Shared"))
						temp += "</div>";
					if (isGrouped.equals("Yes")) {
						if (!(previousGroup.equals(groupCaption))) {
							if(!groupStyle.equals("Shared")) {
								formData += "<div class=\"border_class\">";
								formData += "<h3>" + groupCaption + "</h3>";
							}
							else {
								formData += "<div class=\"form-group\">";
							formData += "<span style=\"float:left;\">" + groupCaption + "</span>";
						}
						}
						formData += temp;
						if (!(groupCaption.equals(attributeDetailsForNext.getGroupCaption())) || i == loopSize - 1) {
							if(!groupStyle.equals("Shared"))
								formData += "</div>";
							else 
								formData += "</div>";
						}
						previousGroup = groupCaption;
					} else {
						formData += temp;
					}
					if (!(pageTitle.equals(attributeDetailsForNext.getPageTitle())) || i == loopSize - 1) {
						formData += "</div>";
					}
					previousPageTitle = pageTitle;
				}
				if (indexOfNext < attributeDetailsList.size() - 1)
					indexOfNext++;
			}
			formData += "</form>";
			formData += "</div>";

			tabsDivs += "</ul>";
			formData = tabsDivs + formData;

			HashMap<String, ArrayList<String>> allData = new HashMap<String, ArrayList<String>>();

			List<String> formData1 = new ArrayList<String>();
			formData1.add(formData);
			System.out.println(formData);

			allData.put("formData", (ArrayList<String>) formData1);
			allData.put("checkboxIds", (ArrayList<String>) checkboxIds);
			allData.put("attributeNames", (ArrayList<String>) allActualValues);
			allData.put("allIds", (ArrayList<String>) allIds);
			allData.put("CurrenttabID", (ArrayList<String>) CurrenttabID_list);
			allData.put("saveButtonId", (ArrayList<String>) saveButtonId);
			allData.put("UniqueObjectName", (ArrayList<String>) UniqueObjectNameList);
			
		return allData;
	}

	@RequestMapping(value = "/addData", method = RequestMethod.POST)
	public @ResponseBody net.lt.eaze.model.fromExcel addData(@RequestParam String tableName, HttpSession session,
			@RequestParam(value = "attributes[]") List<String> attributes,
			@RequestParam(value = "formData[]") List<String> formData) throws JAXBException, FileNotFoundException {
//		String path = session.getServletContext().getRealPath("/");
//		JAXBContext context = JAXBContext.newInstance(net.lt.eaze.model_metamodel2.Schema.class);
//		Unmarshaller um = context.createUnmarshaller();
//		net.lt.eaze.model_metamodel2.Schema unif = (net.lt.eaze.model_metamodel2.Schema) um
//				.unmarshal(new FileReader(path + "/" + dbName + ".xml"));

//		List<Element_Attributes> elementAttributesList = unif.getElement_attributes();
		List<attributesInformationModel> attributeDetailsList = enterpriseDAO.getAllAttributeDetails(dbName,tableName.replaceAll("\\s+", "_"));
		
		
		

		RelationsModel addRElRow = new RelationsModel();
		addRElRow.setDbName(dbName);
		addRElRow.setTableName("relationships");

		List<String> allselfGeneratedVals = new ArrayList<String>();
		List<String> columnNames = new ArrayList<String>();
		List<String> rowValues = new ArrayList<String>();
		tableName = tableName.replaceAll("\\s+", "_");

		int removeAttributeCount = 0;
		String ID = "";
		String Name = "";
		
		//testing start
		List<String> test = new ArrayList<String>();
		int attributeDetailsListSize = attributeDetailsList.size();
		
		int formDataIndex = 0;
		
		for(int i=0; i<attributeDetailsListSize; i++) {
			boolean isRelation = false;
			boolean sourceIsNull = false;
			boolean targetIsNull = false;
			String sourceRelElement = "";
			String targetRelElement = "";
			String sourcePKEy = "";
			String targetPKEY = "";
			String sourceAttName = "";
			String targetAttName = "";
			String sourceAttValue = "";
			String targetAttValue = "";
			String relationshipType = "";
			String bidirectionRelationshipPair = "";
			attributesInformationModel attributeDetails = attributeDetailsList.get(i);
			String attributeName = attributeDetails.getActualAttribute();
			String attributeName_2 = "";
			
			String attributeType = attributeDetails.getAttributeType();
			
			
			if(attributeDetails.getGroupStyle().equals("Shared")) {// SHARED
				if(!test.contains(attributeDetails.getGroupCaption())) {
					test.add(attributeDetails.getGroupCaption());
					String formDataStr = formData.get(formDataIndex++);
					if((formDataStr.equals("")) || formDataStr.equals(",,,")) {
//						formDataIndex++;
						continue;
					}
					System.out.println(attributeDetails.getGroupCaption());
					String[] arrayString = new String[0];
					if (formDataStr != null)
						arrayString = formDataStr.split(",");
					for(String v:arrayString) {
						String[] arrayString1 = v.split("---");
						String relObjectName = arrayString1[0];
						String relElementName = arrayString1[1];
						for(int j=i; j<attributeDetailsListSize; j ++) {
							sourceIsNull = false;
							targetIsNull = false;
							attributesInformationModel attributeDetailsForShared = attributeDetailsList.get(j);
							String sourceRelElementFromDB = attributeDetailsForShared.getSourceRelationship_Element().replaceAll("\\s+", "_");
							String targetRelElementFromDB = attributeDetailsForShared.getTargetRelationship_Element().replaceAll("\\s+", "_");
							bidirectionRelationshipPair = attributeDetailsForShared.getBidirectionRelationshipPair();
							attributeName = attributeDetailsForShared.getActualAttribute();
							 sourceRelElement = "";
							 targetRelElement = "";
							 sourcePKEy = "";
							 targetPKEY = "";
							 sourceAttName = "";
							 targetAttName = "";
							 sourceAttValue = "";
							 targetAttValue = "";
							 relationshipType = "";
							List<String> attNames = enterpriseDAO.getRowWithCondition(dbName,"attributes_information","Actual_Attribute","Bidirection_Relationship_Pair",bidirectionRelationshipPair);
							
							for(String atn: attNames) {
								if(!atn.equals(attributeName))
									attributeName_2 = atn;
							}
							if(sourceRelElementFromDB.equals(relElementName)) {
								sourceIsNull = true;
								sourceRelElement = sourceRelElementFromDB;
								targetRelElement = tableName;
								sourcePKEy = null;
								targetPKEY = ID;
								sourceAttName = attributeName_2;
								targetAttName = attributeName;
								sourceAttValue = Name;
								targetAttValue = relObjectName;
								relationshipType = attributeDetailsForShared.getRelationship();
							}else if (targetRelElementFromDB.equals(relElementName)){
								targetIsNull = true;
								sourceRelElement = tableName;
								targetRelElement = targetRelElementFromDB;
								sourcePKEy = ID;
								targetPKEY = null;
								sourceAttName = attributeName;
								targetAttName = attributeName_2;
								sourceAttValue = relObjectName;
								targetAttValue = Name;
								relationshipType = attributeDetailsForShared.getRelationship();
							}
							addRElRow.setSourceIsNull(sourceIsNull);
							addRElRow.setTargetIsNull(targetIsNull);
							addRElRow.setSourceRelElement(sourceRelElement);
							addRElRow.setTargetRelElement(targetRelElement);
							addRElRow.setSourcePKEy(sourcePKEy);
							addRElRow.setTargetPKEY(targetPKEY);
							addRElRow.setSourceAttName(sourceAttName);
							addRElRow.setTargetAttName(targetAttName);
							addRElRow.setRelationshipType(relationshipType);
							addRElRow.setBidirectionRelationshipPair(bidirectionRelationshipPair);
							
							if(sourceAttValue.equals(Name)) {
								addRElRow.setSourceAttValue(sourceAttValue.replaceAll("'", "''"));
								addRElRow.setTargetAttValue(targetAttValue.replaceAll("'", "''"));
								enterpriseDAO.addRelations(addRElRow);
							}else if(targetAttValue.equals(Name)) {
								addRElRow.setTargetAttValue(targetAttValue.replaceAll("'", "''"));
								addRElRow.setSourceAttValue(sourceAttValue.replaceAll("'", "''"));
								enterpriseDAO.addRelations(addRElRow);
							}
							
							if((sourceRelElementFromDB.equals(relElementName)) || (targetRelElementFromDB.equals(relElementName))) {
								break;
							}
						}
						
//						System.out.println("Object "+arrayString1[0]);
//						System.out.println("Element "+arrayString1[1]);
						
					}
//					formDataIndex++;
				}
			}else {// Other then Shared
				if (attributes.get(i).equals("ID")) {
					ID = formData.get(i);
				}
				if (attributes.get(i).equals("Name")) {
					Name = formData.get(i);
				}
				
				if(attributeType.equals("Relationship") ) {
					if((formData.get(formDataIndex).equals("")) ) {
						formDataIndex++;
						continue;
					}
					String sourceRelElementFromDB = attributeDetails.getSourceRelationship_Element().replaceAll("\\s+", "_");
					String targetRelElementFromDB = attributeDetails.getTargetRelationship_Element().replaceAll("\\s+", "_");
					bidirectionRelationshipPair = attributeDetails.getBidirectionRelationshipPair();
					List<String> attNames = enterpriseDAO.getRowWithCondition(dbName,"attributes_information","Actual_Attribute","Bidirection_Relationship_Pair",bidirectionRelationshipPair);
				
					for(String atn: attNames) {
						if(!atn.equals(attributeName))
							attributeName_2 = atn;
					}
					
					if (!sourceRelElementFromDB.equals("N/A")) {
						sourceIsNull = true;
						sourceRelElement = sourceRelElementFromDB;
						targetRelElement = tableName;
						sourcePKEy = null;
						targetPKEY = ID;
						sourceAttName = attributeName_2;
						targetAttName = attributeName;
						sourceAttValue = Name;
						targetAttValue = formData.get(formDataIndex);
						relationshipType = attributeDetails.getRelationship();
					} else if (!targetRelElementFromDB.equals("N/A")) {
						targetIsNull = true;
						sourceRelElement = tableName;
						targetRelElement = targetRelElementFromDB;
						sourcePKEy = ID;
						targetPKEY = null;
						sourceAttName = attributeName;
						targetAttName = attributeName_2;
						sourceAttValue = formData.get(formDataIndex);
						targetAttValue = Name;
						relationshipType = attributeDetails.getRelationship();
					}
					
					addRElRow.setSourceIsNull(sourceIsNull);
					addRElRow.setTargetIsNull(targetIsNull);
					addRElRow.setSourceRelElement(sourceRelElement);
					addRElRow.setTargetRelElement(targetRelElement);
					addRElRow.setSourcePKEy(sourcePKEy);
					addRElRow.setTargetPKEY(targetPKEY);
					addRElRow.setSourceAttName(sourceAttName);
					addRElRow.setTargetAttName(targetAttName);
					addRElRow.setRelationshipType(relationshipType);
					addRElRow.setBidirectionRelationshipPair(bidirectionRelationshipPair);
					
					if(sourceAttValue.equals(Name)) {
						addRElRow.setSourceAttValue(sourceAttValue.replaceAll("'", "''"));
						
						String[] arrayString = new String[0];
						if (targetAttValue != null)
								arrayString = targetAttValue.split(",");
							for(String tv:arrayString) {
								addRElRow.setTargetAttValue(tv.replaceAll("'", "''"));
								enterpriseDAO.addRelations(addRElRow);
							}
					}else {
						addRElRow.setTargetAttValue(targetAttValue.replaceAll("'", "''"));
						
						String[] arrayString = new String[0];
						if (sourceAttValue != null)
							arrayString = sourceAttValue.split(",");
						for(String sv:arrayString) {
							addRElRow.setSourceAttValue(sv.replaceAll("'", "''"));
							enterpriseDAO.addRelations(addRElRow);
						}
					}
				
				}else {
					//List<String> selfGeneratedVal = enterpriseDAO.getSelfGeneratedForGivenAttribute(dbName, tableName,attributes.get(i));
					String selfGeneratedVal = attributeDetails.getSelfGeneratedAttribute();
//					System.out.println("KK " + selfGeneratedVal);
//					if (allselfGeneratedVals.contains(selfGeneratedVal)) {
//						int arr_size = allselfGeneratedVals.size();
//						Map<String, Integer> frequency = methods.findRepeating(allselfGeneratedVals, arr_size);
//						for (Entry<String, Integer> entry : frequency.entrySet()) {
////										        	duplicateAttributes.add(entry.getKey());
////								System.out.println(entry.getKey() + " --> " + entry.getValue());
//							if (selfGeneratedVal.equals(entry.getKey())) {
//								allselfGeneratedVals.add(selfGeneratedVal.get(entry.getValue()));
//							}
//						}
//					} else
						allselfGeneratedVals.add(selfGeneratedVal);

					rowValues.add(formData.get(formDataIndex));
				}
				
				test.add(attributeDetails.getActualAttribute());
				formDataIndex++;
			}
		}
		
		System.out.println("Size from ajax: "+attributes);
		
		System.out.println("Columns: "+allselfGeneratedVals);
		System.out.println("Rows: "+rowValues);
		
		//testing end
		/*
		for (int i = 0; i < attributes.size(); i++) {
			System.out.println("\ndbName"+attributes.get(i)+"\n");
			if (attributes.get(i).equals("ID")) {
				ID = formData.get(i);
			}
			if (attributes.get(i).equals("Name")) {
				Name = formData.get(i);
			}

			int elementAttributeCount = 0;
			boolean isRelation = false;
			boolean sourceIsNull = false;
			boolean targetIsNull = false;
			String sourceRelElement = "";
			String targetRelElement = "";
			String sourcePKEy = "";
			String targetPKEY = "";
			String sourceAttName = "";
			String targetAttName = "";
			String sourceAttValue = "";
			String targetAttValue = "";
			String relationshipType = "";
			String bidirectionRelationshipPair = "";

			String attName = "";
			

			for (int temp = elementAttributeCount; temp < elementAttributesList.size(); temp++) {
				elementAttributeCount++;
				String elementName = elementAttributesList.get(temp).getConceptName().replaceAll("\\s+", "_");
				String attributeType = elementAttributesList.get(temp).getAttributeType();
				String attributeName = elementAttributesList.get(temp).getAttrributeName();
				if (elementName.equals("Application_Component") && tableName.equals("Application_Component")) {
//					System.out.println(tableName + " , " + elementName + " , " + attributeType + " , " + attributeName+ " , " + attributes.get(i));
				}

				if (tableName.equals(elementName) && attributeType.equals("Relationship") && attributeName.equals(attributes.get(i)) ) {
					isRelation = true;
					if((formData.get(i).equals("")) )
						break;
					System.out.println("Relation TRUE, Attribute: " + attributeName);
					System.out.println("abc"+formData.get(i)+"xyz");
					String sourceRelElement_XML = elementAttributesList.get(temp).getSourceRelationshipConcept().replaceAll("\\s+", "_");
					String targetRelElement_XML = elementAttributesList.get(temp).getTargetRelationshipConcept().replaceAll("\\s+", "_");

					bidirectionRelationshipPair = elementAttributesList.get(temp).getBidirectionRelationshipPair();
					List<String> attNames = enterpriseDAO.getRowWithCondition(dbName,"attributes_information","Actual_Attribute","Bidirection_Relationship_Pair",bidirectionRelationshipPair);
					System.out.println(attNames);
					
					for(String atn: attNames) {
						if(!atn.equals(attributeName))
							attName = atn;
					}
					System.out.println(attName);
					if (!sourceRelElement_XML.equals("N/A")) {
						sourceIsNull = true;
						sourceRelElement = sourceRelElement_XML;
						targetRelElement = elementName;
						sourcePKEy = null;
						targetPKEY = ID;
						sourceAttName = attName;
						targetAttName = attributeName;
						sourceAttValue = Name;
						targetAttValue = formData.get(i);
						relationshipType = elementAttributesList.get(temp).getRelationship();
					} else if (!targetRelElement_XML.equals("N/A")) {
						targetIsNull = true;
						sourceRelElement = elementName;
						targetRelElement = targetRelElement_XML;
						sourcePKEy = ID;
						targetPKEY = null;
						sourceAttName = attributeName;
						targetAttName = attName;
						sourceAttValue = formData.get(i);
						targetAttValue = Name;
						relationshipType = elementAttributesList.get(temp).getRelationship();
					}
					break;
				}

			}

			if (isRelation == true) {
				if(formData.get(i).equals(""))
					continue;
				// NEW CODE FOR RELATION **START//
				addRElRow.setSourceIsNull(sourceIsNull);
				addRElRow.setTargetIsNull(targetIsNull);
				addRElRow.setSourceRelElement(sourceRelElement);
				addRElRow.setTargetRelElement(targetRelElement);
				addRElRow.setSourcePKEy(sourcePKEy);
				addRElRow.setTargetPKEY(targetPKEY);
				addRElRow.setSourceAttName(sourceAttName);
				addRElRow.setTargetAttName(targetAttName);
				addRElRow.setRelationshipType(relationshipType);
				addRElRow.setBidirectionRelationshipPair(bidirectionRelationshipPair);
				
				if(sourceAttValue.equals(Name)) {
					addRElRow.setSourceAttValue(sourceAttValue.replaceAll("'", "''"));
					
					String[] arrayString = new String[0];
				if (targetAttValue != null)
						arrayString = targetAttValue.split(",");
					for(String tv:arrayString) {
						addRElRow.setTargetAttValue(tv.replaceAll("'", "''"));
						enterpriseDAO.addRelations(addRElRow);
					}
				}else {
					addRElRow.setTargetAttValue(targetAttValue.replaceAll("'", "''"));
					
					String[] arrayString = new String[0];
					if (sourceAttValue != null)
						arrayString = sourceAttValue.split(",");
					for(String tv:arrayString) {
						addRElRow.setSourceAttValue(tv.replaceAll("'", "''"));
					enterpriseDAO.addRelations(addRElRow);
					}
				}
//				addRElRow.setSourceAttValue(sourceAttValue.replaceAll("'", "''"));
//				addRElRow.setTargetAttValue(targetAttValue.replaceAll("'", "''"));
//				addRElRow.setRelationshipType(relationshipType);
//				enterpriseDAO.addRelations(addRElRow);
				
//				if (sourceAttValue != null)
					//addRElRow.setSourceAttValue(sourceAttValue.replaceAll("'", "''"));
//				else
//					addRElRow.setSourceAttValue(sourceAttValue);
//				if (targetAttValue != null)
					//addRElRow.setTargetAttValue(targetAttValue.replaceAll("'", "''"));
//				else
//					addRElRow.setTargetAttValue(targetAttValue);
				
				//addRElRow.setRelationshipType(relationshipType);
//				if( !(formData.get(i).equals("")) )
					//enterpriseDAO.addRelations(addRElRow);
			} else {
				List<String> selfGeneratedVal = enterpriseDAO.getSelfGeneratedForGivenAttribute(dbName, tableName,attributes.get(i));

//				System.out.println("KK " + selfGeneratedVal);
				if (allselfGeneratedVals.contains(selfGeneratedVal.get(0))) {
					int arr_size = allselfGeneratedVals.size();
					Map<String, Integer> frequency = methods.findRepeating(allselfGeneratedVals, arr_size);
					for (Entry<String, Integer> entry : frequency.entrySet()) {
//									        	duplicateAttributes.add(entry.getKey());
//							System.out.println(entry.getKey() + " --> " + entry.getValue());
						if (selfGeneratedVal.get(0).equals(entry.getKey())) {
							allselfGeneratedVals.add(selfGeneratedVal.get(entry.getValue()));
						}
					}
				} else
					allselfGeneratedVals.add(selfGeneratedVal.get(0));

				rowValues.add(formData.get(i));

			}
		}
		*/
//		System.out.println(dbName + " " + tableName);
//		System.out.println(allselfGeneratedVals);
//		System.out.println(formData);

		fromExcel addRow = new fromExcel();
		addRow.setDbName(dbName);
		addRow.setTableName(tableName);
		addRow.setColumnNames(allselfGeneratedVals);
		addRow.setRowValues(rowValues);
		addRow.setFirstRowIsColumnName("1");
		enterpriseDAO.addRowsFromExcel(addRow);
		return addRow;
	}

	// Arif Starts here
	@RequestMapping(value = { "/interactive_shapes" }, method = RequestMethod.GET)
	public String interactive_shapes() {

		return "interactive_shapes";
	}

//			@RequestMapping(value = "/getDBlist", method = RequestMethod.GET)
//			public @ResponseBody List<String> get_databases() {
//				System.out.println("COMING HERE");
//				List<String> dbList = enterpriseDAO.getDatabases();
//				System.out.println(dbList);
//				return dbList;
//			}

	@RequestMapping(value = "/getGraph", method = RequestMethod.GET)
	public @ResponseBody byte[] getgraph(String dbname, String graphName, HttpSession session) throws UnsupportedEncodingException {
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			userDetail = (UserDetails) auth.getPrincipal();
			username = userDetail.getUsername();
		}
		String company_name = (String) session.getAttribute("company_name");
		String graph = enterpriseDAO.getGraph(dbname, username, graphName,company_name);
		byte[] utfBytes = graph.getBytes("utf-8");
		return utfBytes;
//		return graph;
	}

	@RequestMapping(value = "/getNavigationGraph", method = RequestMethod.GET)
	public @ResponseBody byte[] getNavigationGraph(String dbname, String graphName, HttpSession session) throws UnsupportedEncodingException {
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			userDetail = (UserDetails) auth.getPrincipal();
			username = userDetail.getUsername();
		}
		String company_name = (String) session.getAttribute("company_name");
		String graph = enterpriseDAO.getNavigationGraph(dbname, username, graphName,company_name);
		byte[] utfBytes = graph.getBytes("utf-8");
		return utfBytes;
	}

	@RequestMapping(value = "/validateObjectName", method = RequestMethod.GET)
	public @ResponseBody String validateObjectName(String tableName, String object_name, String oldName) {
		List<Element> elementsObject = unif.getElements();
		for (Element e1 : elementsObject) {
			if (e1.getElementName().equalsIgnoreCase(tableName)) {
				tableName = e1.getElementName();
			}
		}
		String object_name1 = enterpriseDAO.validateObjectName(dbName, tableName.replaceAll("\\s+", "_"), object_name,oldName);
		return object_name1;
	}
	
	@RequestMapping(value = "/checkFileStatus", method = RequestMethod.GET)
	public @ResponseBody String checkFileStatus(String graphID) {
		String object_name1 = enterpriseDAO.checkFileStatus(graphID).get(0);
		return object_name1;
	}
	
	@RequestMapping(value = "/validateModelName", method = RequestMethod.GET)
	public @ResponseBody String validateModelName(String modelName, HttpSession session) {
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			username = userDetail.getUsername();
		}
		String company_name = (String) session.getAttribute("company_name");
		String modelName1 = enterpriseDAO.validateModelName(modelName, company_name);
		return modelName1;
	}
	
	@RequestMapping(value = "/validateCatalogName", method = RequestMethod.GET)
	public @ResponseBody String validateCatalogName(String catalog_name, HttpSession session) {
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			username = userDetail.getUsername();
		}
		String company_name = (String) session.getAttribute("company_name");
		String catalogName = enterpriseDAO.validateCatalogName(catalog_name, company_name);
		return catalogName;
	}	
	
//	@RequestMapping(value = "/validateMatrixName", method = RequestMethod.GET)
//	public @ResponseBody String validateMatrixName(String matrix_name) {
//		String username = "";
//		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//		if (!(auth instanceof AnonymousAuthenticationToken)) {
//			UserDetails userDetail = (UserDetails) auth.getPrincipal();
//			System.out.println(userDetail);
//			username = userDetail.getUsername();
//		}
//		String matrixName = enterpriseDAO.validateMatrixName(matrix_name, username);
//		return matrixName;
//	}	
	
	@RequestMapping(value = "/validateRoadmapName", method = RequestMethod.GET)
	public @ResponseBody String validateRoadmapName(String roadMap_name, HttpSession session) {
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			username = userDetail.getUsername();
		}
		String company_name = (String) session.getAttribute("company_name");
		String roadMapName = enterpriseDAO.validateRoadmapName(roadMap_name, company_name);
		return roadMapName;
	}
	
	@RequestMapping(value = "/validateNavigationName", method = RequestMethod.GET)
	public @ResponseBody String validateNavigationName(String navigationName, HttpSession session) {
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			username = userDetail.getUsername();
		}
		String company_name = (String) session.getAttribute("company_name");
		String navigationName1 = enterpriseDAO.validateNavigationName(navigationName, company_name);
		return navigationName1;
	}	
	
	
	@RequestMapping(value = "/createNewNavigationFile")
	public @ResponseBody String createNewNavigationFile(@RequestParam String id, String company_name, String navigationName,String graph_json, HttpSession session){
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			username = userDetail.getUsername();
		}
//		String path = session.getServletContext().getRealPath("/");
//		String[] splitString = path.split("\\.metadata");
//		Locale locale = LocaleContextHolder.getLocale();	
//		
////		For Local
//		String filePath = splitString[0] + remainingString;
//		File folder = new File(filePath);
//		File[] listOfFiles = folder.listFiles();
//		for (File file : listOfFiles) {
//		    if (file.isFile()) {
//		        try (OutputStream output = new FileOutputStream(filePath+"\\"+file.getName(), true)) {
//		            Properties prop = new Properties();
//		            // set the properties value
//		            prop.setProperty(navigationName.replaceAll(" ", "_"), navigationName);
//		            // save properties to project root folder
//		            prop.store(output, null);
//		            output.close();
//		        } catch (IOException io) {
//		            io.printStackTrace();
//		        }
//		    }
//		}
		
//		For online
//		File folder = new File(path);
//		File[] listOfFiles = folder.listFiles();
//		for (File file : listOfFiles) {
//		    if (file.isFile()) {
//		        try (OutputStream output = new FileOutputStream(path+"\\"+file.getName(), true)) {
//		            Properties prop = new Properties();
//		            // set the properties value
//		            prop.setProperty(navigationName.replaceAll(" ", "_"), navigationName);
//		            // save properties to project root folder
//		            prop.store(output, null);
//		            output.close();
//		        } catch (IOException io) {
//		            io.printStackTrace();
//		        }
//		    }
//		}
		enterpriseDAO.createNewNavigationFile(id, company_name.replaceAll("---", " "), username, navigationName,graph_json);
		String graphID = enterpriseDAO.getNavigationIDFromFolder(username,id,navigationName);
		System.out.println(graphID);
		return graphID;
	}
	
	@RequestMapping(value = "/getUniqueObjectName")
	public @ResponseBody String getUniqueObjectName(String objectName) {
		char[] charArray = objectName.toCharArray();
		boolean foundSpace = true;

		for (int i = 0; i < charArray.length; i++) {
			// if the array element is a letter
			if (Character.isLetter(charArray[i])) {

				// check space is present before the letter
				if (foundSpace) {
					// change the letter into uppercase
					charArray[i] = Character.toUpperCase(charArray[i]);
					foundSpace = false;
				}
			}
			else {
				// if the new character is not character
				foundSpace = true;
			}
		}
		
		objectName = String.valueOf(charArray);
		objectName = objectName.replace(" Of "," of ".toLowerCase());


//		String lastObjectId = enterpriseDAO.getLastObjectId(dbName, objectName.replaceAll("\\s+", "_"));
//		int loopLength = 5-lastObjectId.length();
//		for(int i = 0; i<loopLength; i++) {
//			lastObjectId = "0"+lastObjectId;
//		}
//
//		String UniqueObjectName = objectName + "_" + lastObjectId;
		List<Element> elementsObject = unif.getElements();
		for (Element e1 : elementsObject) {
			if (e1.getElementName().equalsIgnoreCase(objectName)) {
				objectName = e1.getElementName();
			}
		}

		String lastObjectId = enterpriseDAO.getLastObjectId(dbName, objectName.replaceAll("\\s+", "_"));
		int length = 6;
	    boolean useLetters = true;
	    boolean useNumbers = true;
	    String generatedString = RandomStringUtils.random(length, useLetters, useNumbers);
	    
//	    if(lastObjectId == null) {
//	    	lastObjectId = "0";
//	    }
//		int loopLength = 5-lastObjectId.length();
//		for(int i = 0; i<loopLength; i++) {
//			lastObjectId = "0"+lastObjectId;
//		}
		String UniqueObjectName = objectName + "_" + generatedString + "" + lastObjectId;

		return UniqueObjectName;
	}

	@RequestMapping(value = "/getPossibleRelationships")
	public @ResponseBody HashMap<String, List<String>> getPossibleRelationships(String source, String target) {
		System.out.println(source + " , " + target);
		List<Relationships> Relationships_Object = unif.getRelations();
		List<Relationship_Matrix> Relationship_Matrix_Object = unif.getRelationship_matrix();
		List<String> forwardRelationNames = new ArrayList<String>();
		List<String> forwardRelations = new ArrayList<String>();
		List<String> backwardRelations = new ArrayList<String>();
		HashMap<String, List<String>> relationsMap = new HashMap<String, List<String>>();
		String possibleForwardRelationsStr = "";
		String possibleBackwardRelationsStr = "";
		boolean a = false;
		for (Relationship_Matrix rm : Relationship_Matrix_Object) {
			if (rm.getFrom_Source() == null || rm.getTo_Target() == null)
				continue;
			if (rm.getFrom_Source().equalsIgnoreCase(source) && rm.getTo_Target().equalsIgnoreCase(target)) {
				System.out.println(rm);
				possibleForwardRelationsStr = rm.getRelation();
				if (a == true) {
					break;
				} else
					a = true;
			}
			if (rm.getFrom_Source().equalsIgnoreCase(target) && rm.getTo_Target().equalsIgnoreCase(source)) {
				System.out.println(rm);
				possibleBackwardRelationsStr = rm.getRelation();
				if (a == true) {
					break;
				} else
					a = true;
			}
		}

		if (possibleForwardRelationsStr != null) {
			String[] arr = possibleForwardRelationsStr.split("");
			for (String r1 : arr) {
				for (Relationships r : Relationships_Object) {
					if (r.getRelationshipNotation().equals(r1)) {
						forwardRelationNames.add(r.getRelationshipName());
						List<String> relationshipOverloadTextList = enterpriseDAO.getAllRelationshipOverloadText(dbName, source.replaceAll("\\s+", "_"), "Target_Rel_Element", target.replaceAll("\\s+", "_"), r.getRelationshipName());
						for(String relationshipOverloadText:relationshipOverloadTextList) {
							if(relationshipOverloadText.equals("Default"))
								forwardRelations.add(r.getFrom_to_ToInterpretation());
							else
								forwardRelations.add(relationshipOverloadText);
						}
						break;
					}
				}
			}
		}

		if (possibleBackwardRelationsStr != null) {
			String[] arr1 = possibleBackwardRelationsStr.split("");
			for (String r1 : arr1) {
				for (Relationships r : Relationships_Object) {
					if (r.getRelationshipNotation().equals(r1)) {
						List<String> relationshipOverloadTextList = enterpriseDAO.getAllRelationshipOverloadText(dbName, source.replaceAll("\\s+", "_"), "Source_Rel_Element", target.replaceAll("\\s+", "_"), r.getRelationshipName());
						for(String relationshipOverloadText:relationshipOverloadTextList) {
							if(relationshipOverloadText.equals("Default"))
								backwardRelations.add(r.getTo_to_FromInterpretation());
							else
								backwardRelations.add(relationshipOverloadText);
						}
						break;
					}
				}
				System.out.println(r1);
			}
		}
		relationsMap.put("RelationshipNames", forwardRelationNames);
		relationsMap.put("forward", forwardRelations);
		relationsMap.put("backward", backwardRelations);
		return relationsMap;
	}
	@RequestMapping(value = "/checkRelationshipsLimit")
	public @ResponseBody boolean checkRelationshipsLimit(String sourceValue, String targetValue,String sourceElement, String targetElement, String relVal, String fwd_OR_bwd) {
		sourceElement = sourceElement.replaceAll("\\s+", "_");
		targetElement = targetElement.replaceAll("\\s+", "_");
		boolean relationshipPossible = true;
		List<Relationships> relationshipsList = unif.getRelations();
		List<attributesInformationModel> attributeDetails = new ArrayList<>();
		String relType = "";
		if(attributeDetails.size()>0)
			relType = attributeDetails.get(0).getRelationship();
		else {
			for(Relationships r:relationshipsList) {
				if(relVal.equals(r.getFrom_to_ToInterpretation())) {
					relType = r.getRelationshipName();
					break;
				}
			}
		}
		
		
		int relCount = 0;
		List<attributesInformationModel> attributeDetails1 = null;
		if(fwd_OR_bwd.equals("forward")) {
			//////////////////
			attributeDetails = enterpriseDAO.getAttributeDetails_2(dbName,sourceElement,targetElement,"Relationship_Overload_Text",relVal);
			
			if(attributeDetails.size()>0)
				relType = attributeDetails.get(0).getRelationship();
			else {
				for(Relationships r:relationshipsList) {
					if(relVal.equals(r.getFrom_to_ToInterpretation())) {
						relType = r.getRelationshipName();
						attributeDetails = enterpriseDAO.getAttributeDetails_withAdditionalConditions(dbName,sourceElement,targetElement,"Relationship_Overload_Text","Default","Relationship",relType);
						break;
					}
				}
			}
			
			if(attributeDetails.size()==0) {
				attributeDetails = enterpriseDAO.getAttributeDetails_2(dbName,targetElement,sourceElement,"Relationship_Overload_Text",relVal);
			}
				List<attributesInformationModel> attributeDetails2 = enterpriseDAO.getAttributeDetails_2(dbName,targetElement,sourceElement,"Bidirection_Relationship_Pair",attributeDetails.get(0).getBidirectionRelationshipPair());
				int relCount2 = enterpriseDAO.getRelationsCount(dbName, sourceElement, targetElement, "Bidirection_Relationship_Pair", attributeDetails.get(0).getBidirectionRelationshipPair(),"Source_Attribute_Value",sourceValue );
				
				
				String limitStr = attributeDetails2.get(0).getMaximumNumberofObjectOccurrence().replaceAll(".0", "");
				if(attributeDetails2.get(0).getSingleOrMultiple().equals("Single")) {
					limitStr = "1";
				}
				try {
					int limit=Integer.parseInt(limitStr);
					if(relCount2<limit) {
						relationshipPossible = true;
					}else {
						relationshipPossible = false;
					}
				}catch (Exception e) {
					System.out.println("catch");
					relationshipPossible = true;
					// TODO: handle exception
				}
				relCount = enterpriseDAO.getRelationsCount(dbName, sourceElement, targetElement, "Bidirection_Relationship_Pair", attributeDetails.get(0).getBidirectionRelationshipPair(),"Destination_Attribute_Value",targetValue );
				limitStr = attributeDetails.get(0).getMaximumNumberofObjectOccurrence().replaceAll(".0", "");
				if(attributeDetails.get(0).getSingleOrMultiple().equals("Single")) {
					limitStr = "1";
				}
				
				try {
					int limit=Integer.parseInt(limitStr);
					if(relCount<limit && relationshipPossible!=false) {
						relationshipPossible = true;
					}else {
						relationshipPossible = false;
					}
				}catch (Exception e) {
					if(relationshipPossible!=false)
						relationshipPossible = true;
					// TODO: handle exception
				}
			}
		else if(fwd_OR_bwd.equals("backward")) {
			
			/////////////////////
			attributeDetails = enterpriseDAO.getAttributeDetails_2(dbName,targetElement,sourceElement,"Relationship_Overload_Text",relVal);
			System.out.println("attributeDetails forward 1: "+attributeDetails);
			
			if(attributeDetails.size()>0)
				relType = attributeDetails.get(0).getRelationship();
			else {
				for(Relationships r:relationshipsList) {
					if(relVal.equals(r.getTo_to_FromInterpretation())) {
						relType = r.getRelationshipName();
						attributeDetails = enterpriseDAO.getAttributeDetails_withAdditionalConditions(dbName,targetElement,sourceElement,"Relationship_Overload_Text","Default","Relationship",relType);
						System.out.println("attributeDetails forward 2: "+attributeDetails);
						break;
					}
				}
			}
			
			if(attributeDetails.size()==0) {
				attributeDetails = enterpriseDAO.getAttributeDetails_2(dbName,sourceElement,targetElement,"Relationship_Overload_Text",relVal);
				attributeDetails = enterpriseDAO.getAttributeDetails_2(dbName,targetElement,sourceElement,"Bidirection_Relationship_Pair",attributeDetails.get(0).getBidirectionRelationshipPair());
				System.out.println("attributeDetails forward 3: "+attributeDetails);
			}
				List<attributesInformationModel> attributeDetails2 = enterpriseDAO.getAttributeDetails_2(dbName,sourceElement,targetElement,"Bidirection_Relationship_Pair",attributeDetails.get(0).getBidirectionRelationshipPair());
				int relCount2 = enterpriseDAO.getRelationsCount(dbName, targetElement, sourceElement, "Bidirection_Relationship_Pair", attributeDetails.get(0).getBidirectionRelationshipPair(),"Source_Attribute_Value",targetValue );
				
				
				String limitStr = attributeDetails2.get(0).getMaximumNumberofObjectOccurrence().replaceAll(".0", "");
				if(attributeDetails2.get(0).getSingleOrMultiple().equals("Single")) {
					limitStr = "1";
				}
				try {
					int limit=Integer.parseInt(limitStr);
					if(relCount2<limit) {
						relationshipPossible = true;
					}else {
						relationshipPossible = false;
					}
				}catch (Exception e) {
					System.out.println("catch");
					relationshipPossible = true;
					// TODO: handle exception
				}
				//////////////////
				relCount = enterpriseDAO.getRelationsCount(dbName, targetElement, sourceElement, "Bidirection_Relationship_Pair", attributeDetails.get(0).getBidirectionRelationshipPair(),"Destination_Attribute_Value",sourceValue );
				limitStr = attributeDetails.get(0).getMaximumNumberofObjectOccurrence().replaceAll(".0", "");
				if(attributeDetails.get(0).getSingleOrMultiple().equals("Single")) {
					limitStr = "1";
				}
				try {
					int limit=Integer.parseInt(limitStr);
					if(relCount<limit && relationshipPossible!=false) {
						relationshipPossible = true;
					}else {
						relationshipPossible = false;
					}
				}catch (Exception e) {
					if(relationshipPossible!=false)
						relationshipPossible = true;
					// TODO: handle exception
				}
			
			
		}
		
		return relationshipPossible;
	}

	@RequestMapping(value = "/insertRelationFromGraph")
	public @ResponseBody int insertRelationFromGraph(String sourceValue, String targetValue, String sourceElementName, String targetElementName, String relVal, String forwardOrBackward,int relIndex) {
//		System.out.println(sourceValue + "," + targetValue + "," + sourceElementName + "," + targetElementName);
//		System.out.println("sourceValue: "+sourceValue);
//		System.out.println("targetValue: "+targetValue);
//		System.out.println("sourceElementName: "+sourceElementName);
//		System.out.println("targetElementName: "+targetElementName);
//		System.out.println("relVal: "+relVal);
//		System.out.println("forwardOrBackward: "+forwardOrBackward);
		
		List<Relationships> relationshipsList = unif.getRelations();
//		boolean forwardRelFound = false;
//		boolean backwardRelFound = false;
		String relType = "";
		String sourceAttribute = "";
		String targetAttribute = "";
		String bidirectionRelationshipPair = "";
		
		sourceElementName = sourceElementName.replaceAll("\\s+", "_");
		targetElementName = targetElementName.replaceAll("\\s+", "_");
//		System.out.println("sourceElementName: "+sourceElementName);
//		System.out.println("targetElementName: "+targetElementName);
//		System.out.println(forwardOrBackward);
		
		List<attributesInformationModel> attributeDetails = new ArrayList<>();
		
		if(forwardOrBackward.equals("forward")) {
			System.out.println("forward");
				attributeDetails = enterpriseDAO.getAttributeDetails_2(dbName,sourceElementName,targetElementName,"Relationship_Overload_Text",relVal);
				if(attributeDetails.size()>0)
					relType = attributeDetails.get(0).getRelationship();
				else {
					for(Relationships r:relationshipsList) {
						if(relVal.equals(r.getFrom_to_ToInterpretation())) {
							relType = r.getRelationshipName();
							attributeDetails = enterpriseDAO.getAttributeDetails_withAdditionalConditions(dbName,sourceElementName,targetElementName,"Relationship_Overload_Text","Default","Relationship",relType);
							System.out.println(("Forward True"));
//							forwardRelFound = true;
							break;
						}
					}
				}
//			}
		}else {
			attributeDetails = enterpriseDAO.getAttributeDetails_2(dbName,targetElementName,sourceElementName,"Relationship_Overload_Text",relVal);
			if(attributeDetails.size()>0)
				relType = attributeDetails.get(0).getRelationship();
			else {
				for(Relationships r:relationshipsList) {
					System.out.println("Backward");
					if(relVal.equals(r.getTo_to_FromInterpretation())) {
						relType = r.getRelationshipName();
						attributeDetails = enterpriseDAO.getAttributeDetails_withAdditionalConditions(dbName,targetElementName,sourceElementName,"Relationship_Overload_Text","Default","Relationship",relType);
						System.out.println(("Backward True"));
//						backwardRelFound = true;
						break;
					}
				}
			}
		}
		
//		List<attributesInformationModel> temp = enterpriseDAO.getAttributeDetails_2(dbName,sourceElementName,targetElementName,"Relationship",relType);
		List<attributesInformationModel> temp = new ArrayList<attributesInformationModel>();
		
//		if(attributeDetails.size()==0) {
//			attributeDetails = enterpriseDAO.getAttributeDetails_2(dbName,targetElementName,sourceElementName,"Relationship_Overload_Text","Default");
//		}
		temp = attributeDetails;
		System.out.println("attributeDetails: "+attributeDetails);
//		System.out.println("temp: "+temp);
//		System.out.println("temp: "+temp);
//		for(attributesInformationModel t:temp) {
//			System.out.println("temp: "+t.getSourceRelationship_Element());
//			System.out.println("temp: "+t.getTargetRelationship_Element());
//			System.out.println("temp: "+t.getRelationship());
//		}
		System.out.println("temp size: "+temp.size());
		bidirectionRelationshipPair = temp.get(0).getBidirectionRelationshipPair();
		
		if(temp.get(0).getSourceRelationship_Element().equals("N/A")) {
			sourceAttribute = temp.get(0).getActualAttribute();
//			targetAttribute = temp.get(0).getTargetRelationship_Element();
		}
		else {
			targetAttribute = temp.get(0).getActualAttribute();
//			sourceAttribute = temp.get(0).getSourceRelationship_Element();
		}
		
		
//		temp = enterpriseDAO.getAttributeDetails_2(dbName,targetElementName,sourceElementName,"Relationship",relType);
//		attributesInformationModel temp1 = temp.get(0);
//		if(sourceElementName.equals(targetElementName)) {
//			temp1 = temp.get(1);
//		}
//		if(temp1.getSourceRelationship_Element().equals("N/A"))
//			sourceAttribute = temp1.getActualAttribute();
//		else
//			targetAttribute = temp1.getActualAttribute();
		
		System.out.println(relType);
		
		List<String> lastSourceObjectId = enterpriseDAO.getRowWithCondition(dbName,sourceElementName.replaceAll("\\s+", "_"),"ATT_02","ATT_01",sourceValue);
		
		List<String> lastTargetObjectId = enterpriseDAO.getRowWithCondition(dbName,targetElementName.replaceAll("\\s+", "_"),"ATT_02","ATT_01",targetValue);
		RelationsModel addRElRow = new RelationsModel();
		addRElRow.setDbName(dbName);
		addRElRow.setTableName("relationships");
		String sourceID = "";
		String targetID = "";
		sourceID = lastSourceObjectId.get(0);
		targetID = lastTargetObjectId.get(0);

		addRElRow.setSourceRelElement(sourceElementName);
		addRElRow.setTargetRelElement(targetElementName);
		addRElRow.setSourcePKEy(sourceID);
		addRElRow.setTargetPKEY(targetID);
		addRElRow.setSourceAttName(sourceAttribute);
		addRElRow.setTargetAttName(targetAttribute);
		addRElRow.setSourceAttValue(targetValue);
		addRElRow.setTargetAttValue(sourceValue);
		addRElRow.setRelationshipType(relType);
		addRElRow.setBidirectionRelationshipPair(bidirectionRelationshipPair);
		
		int a = enterpriseDAO.addRelationsFromGraph(addRElRow);
		
		//Creating object in relationships* START
		
		List<attributesInformationModel> attributeDetailsListRel = enterpriseDAO.getAllAttributeDetails(dbName,relType);
		DateTimeFormatter df = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		DateTimeFormatter tf = DateTimeFormatter.ofPattern("HH:mm");
		LocalDateTime now = LocalDateTime.now();
		
		List<String> columnNamesRel = new ArrayList<String>();
		List<String> rowValuesRel = new ArrayList<String>();
		
		for (attributesInformationModel attributeDetailsRel : attributeDetailsListRel) {
			String att_name = attributeDetailsRel.getSelfGeneratedAttribute();
			String actual_value = attributeDetailsRel.getActualAttribute();
			if(att_name.equals("status") || attributeDetailsRel.getAttributeType().equals("Relationship"))
				continue;
			if (att_name.equals("id")) {
				continue;
			}
			columnNamesRel.add(att_name);
	
			if (actual_value.equals("Name"))
				rowValuesRel.add(sourceValue+"_X_"+targetValue);
			else if(actual_value.equals("From"))
				rowValuesRel.add(sourceValue);
			else if(actual_value.equals("To"))
				rowValuesRel.add(targetValue);
			else {
				if (attributeDetailsRel.getAttributeFormat().equals("Date"))
					rowValuesRel.add(df.format(now));
				else if (attributeDetailsRel.getAttributeFormat().equals("Time"))
					rowValuesRel.add(tf.format(now));
				else
					rowValuesRel.add("");
			}
		}
		fromExcel addRow = new fromExcel();
		addRow.setDbName(dbName);
		addRow.setTableName(relType);
		addRow.setColumnNames(columnNamesRel);
		addRow.setRowValues(rowValuesRel);
		addRow.setFirstRowIsColumnName("1");
		enterpriseDAO.addRowsFromExcel(addRow);
		
		//Creating object in relationships* END
		
		System.out.println(sourceID + targetID);
		System.out.println(a);
		if(a==0)
			return 0;
		else
			return 1;
	}
	
	@RequestMapping(value = "/joinIfRelationExists", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, ArrayList<String>> joinIfRelationExists(String newObjectElement, String newObjectName, String existingObjectElement, String existingObjectName) {
		System.out.println(newObjectElement+" , "+newObjectName + " , " + existingObjectElement+" , "+existingObjectName);
		String username = "";
		List<Relationships> Relationships_Object = unif.getRelations();
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			username = userDetail.getUsername();
		}
		
		RelationsModel addRElRow = new RelationsModel();
		addRElRow.setDbName(dbName);
		addRElRow.setTableName("relationships");
		
		// for new to existing
		addRElRow.setSourceRelElement(newObjectElement);
		addRElRow.setTargetRelElement(existingObjectElement);
		addRElRow.setSourceAttValue(existingObjectName);
		addRElRow.setTargetAttValue(newObjectName);
		List<RelationsModel> newToExisting = enterpriseDAO.getExistingRelations(addRElRow);
		List<String> newToExisting1 = new ArrayList<String>();
		for(RelationsModel r1: newToExisting) {
			for (Relationships r : Relationships_Object) {
				if (r.getRelationshipName().equals(r1.getRelationshipType()) ) {
					List<String> relationshipOverloadTextList = enterpriseDAO.getRelationshipOverloadText(dbName, newObjectElement, "Target_Rel_Element", existingObjectElement, r.getRelationshipName(),r1.getBidirectionRelationshipPair());
					for(String relationshipOverloadText:relationshipOverloadTextList) {
						if(relationshipOverloadText.equals("Default"))
							newToExisting1.add(r.getFrom_to_ToInterpretation());
						else
							newToExisting1.add(relationshipOverloadText);
					}
					break;
				}
			}
		}
		
		//for existing to new
		addRElRow.setSourceRelElement(existingObjectElement);
		addRElRow.setTargetRelElement(newObjectElement);
		addRElRow.setSourceAttValue(newObjectName);
		addRElRow.setTargetAttValue(existingObjectName);
		List<RelationsModel> existingToNew = enterpriseDAO.getExistingRelations(addRElRow);
		List<String> existingToNew1 = new ArrayList<String>();
		for(RelationsModel r1: existingToNew) {
			for (Relationships r : Relationships_Object) {
				if (r.getRelationshipName().equals(r1.getRelationshipType())) {
					List<String> relationshipOverloadTextList = enterpriseDAO.getRelationshipOverloadText(dbName, existingObjectElement, "Target_Rel_Element", newObjectElement, r.getRelationshipName(),r1.getBidirectionRelationshipPair());
					for(String relationshipOverloadText:relationshipOverloadTextList) {
						if(relationshipOverloadText.equals("Default"))
							existingToNew1.add(r.getFrom_to_ToInterpretation());
						else
							existingToNew1.add(relationshipOverloadText);
					}
					break;
				}
			}
		}
		
		HashMap<String, ArrayList<String>> allRelations = new HashMap<String, ArrayList<String>>();
		
		allRelations.put("newToExisting", (ArrayList<String>) newToExisting1);
		allRelations.put("existingToNew", (ArrayList<String>) existingToNew1);
		
		return allRelations;
	}

	@RequestMapping(value = "/getRelObjects")
	public @ResponseBody List<HashMap<String, String>> getRelObjects(@RequestParam String currentElementName,@RequestParam String row_name,@RequestParam(value = "tableName[]") List<String> tableName) {
		
		ReloadableResourceBundleMessageSource messageSource=new ReloadableResourceBundleMessageSource();
		messageSource.setBasename("classpath:net/lt/eaze/resources/locale/messages");
		messageSource.setDefaultEncoding("UTF-8");
		messageSource.setUseCodeAsDefaultMessage(true);
		Locale locale = LocaleContextHolder.getLocale();
		
		List<HashMap<String, String>> treeAndMaxObjects = new ArrayList<HashMap<String, String>>();
		String tree = "";
		HashMap<String, String> treeMap = new HashMap<String, String>();
		HashMap<String, String> maxAllowedObjects = new HashMap<String, String>();
		for(String tb:tableName) {
			String[] tempArray = tb.split("---");
			tb = tempArray[0];
			String maxOcuurance = tempArray[1];
			maxAllowedObjects.put(tb, maxOcuurance);
			List<addRowsModel> objects = enterpriseDAO.listRows(dbName, tb, "ATT_01");
			List<attributesInformationModel> attrList = enterpriseDAO.getAttributeDetails(dbName, tb,"Actual_Attribute","Type");
			String allowableValues = "";
			boolean typeExists = false;
			if (attrList.size() > 0) {
				typeExists = true;
				allowableValues = attrList.get(0).getAllowableValues();
				if (!allowableValues.contains("Other"))
					allowableValues += ";Other";
			}
			String[] typesList = allowableValues.split(";");
			String element = tb.replaceAll("_+", " ");
			String elementIcon = element.replaceAll("\\s+", "-").toLowerCase().replaceAll("_+", "-") + ".svg";
			String relationship_element = messageSource.getMessage(element.replaceAll("\\s+", "_"),null,locale);
			tree += "<li tabindex=\"-1\" class=\"elements\"><span title=\""+relationship_element+"\" class=\"caret\">" + messageSource.getMessage(relationship_element.replaceAll("\\s+", "_"),null,locale) + "</span>";
			tree += "<ul id=\"" + element.replaceAll("\\s+", "_") + "\" class=\"nested\">";
			List<String> name = enterpriseDAO.getSelfGeneratedForGivenAttribute(dbName, tb,
					"Name");
			if(typeExists == false) {
				List<String> rowsList = enterpriseDAO.getRows1(dbName, tb, name.get(0));
				for(String rl: rowsList) {
					if(row_name.equals(rl) && tb.equals(currentElementName)) {
						continue;
					}
					String tagId = rl.replaceAll("[><!@$%^&)(,.;}?{= +':`\\\\~/]","_");
					String objectName = rl;
					tree+= "<li id=\""+tagId+"\"  class=\""+tagId+" "+tb+"\" style=\"cursor:pointer\" onclick=\"add_into_modal_table('"+tagId+"','"+objectName+"','"+elementIcon+"','"+tb+"')\" ><span title=\""+messageSource.getMessage(rl.replaceAll("\\s+", "_"),null,locale)+"\" draggable=\"false\"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/js/examples/editors/images/images1/"+elementIcon+"\" >&nbsp;"+rl+"</span>";
					tree += "</li>";
				}
			}else {
				for (String tl : typesList) {
					if (!tl.equals("Null")) {
						element = element.replaceAll("\\s+", "_");
//						tree += "<li  tabindex=\"-1\" class=\"sub_elements\" ><span title=\""+tl+"\" class=\"caret\")\">" + tl + "</span>";
						tree += "<li  tabindex=\"-1\" class=\"sub_elements\" ><span title=\""+messageSource.getMessage(tl.replaceAll("\\s+", "_"),null,locale)+"\" class=\"caret\" oncontextmenu=\"\">"+messageSource.getMessage(tl.replaceAll("\\s+", "_"),null,locale)+"</span>";
						tree += "<ul id=\""+tl+"_"+""+element+"\" class=\"nested\">";
						
						List<String> selfGeneratedValue = enterpriseDAO.getSelfGeneratedForGivenAttribute(dbName,
								element, "Type");
						if (selfGeneratedValue.size() > 0) {
							List<addRowsModel> rowsList = enterpriseDAO.getRowsForType(dbName, element, name.get(0),
									selfGeneratedValue.get(0), tl);
							for (addRowsModel rl : rowsList) {
								if(row_name.equals(rl.getRowValue()) && tb.equals(currentElementName)) {
									continue;
								}
								String tagId = rl.getRowValue().replaceAll("[><!@$%^&)(,.;}?{= +':`\\\\~/]","_");
								String objectName = rl.getRowValue();
								tree+= "<li id=\""+tagId+"\"  class=\""+tl+" "+tagId+" "+tb+"\" style=\"cursor:pointer\" onclick=\"add_into_modal_table('"+tagId+"','"+objectName+"','"+elementIcon+"','"+tb+"')\" ><span title=\""+messageSource.getMessage(rl.getRowValue().replaceAll("\\s+", "_"),null,locale)+"\" draggable=\"true\" ondragstart=\"drag(event,'"+rl.getRowValue()+"','resources/js/examples/editors/images/images1/"+elementIcon+"')\"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/js/examples/editors/images/images1/"+elementIcon+"\" >&nbsp;"+messageSource.getMessage(rl.getRowValue().replaceAll("\\s+", "_"),null,locale)+"</span>";
								tree += "</li>";
							}
						}
						tree += "</ul>";
						tree += "</li>";
					}
				}
			}
			tree += "</ul>";
			tree += "</li>";
		}
		treeMap.put("tree", tree);
		treeAndMaxObjects.add(treeMap);
		treeAndMaxObjects.add(maxAllowedObjects);
		return treeAndMaxObjects;
	}

	@RequestMapping(value = "/save_graph")
	public @ResponseBody String saveGraph(String graph_json, String graphname,String graphID,String last_time_updated) {
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			username = userDetail.getUsername();
		}
		
		int a = enterpriseDAO.savegraphjson(graph_json, username, graphname,graphID);
		System.out.println("last_time_updated: "+last_time_updated);
		enterpriseDAO.updateObjectUpdatedDate("graphs","files",last_time_updated, graphID);
		return "Graph has been saved!";
	}
	
	@RequestMapping(value = "/save_navigation")
	public @ResponseBody String saveNavigation(String graph_json, String navigationname,String navigationID,String last_time_updated) {
		System.out.println("save_navigation called");
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			username = userDetail.getUsername();
		}
		
		int a = enterpriseDAO.savenavigationjson(graph_json, username, navigationname,navigationID);
		System.out.println("last_time_updated: "+last_time_updated);
		enterpriseDAO.updateObjectUpdatedDate("graphs","navigation_files",last_time_updated, navigationID);
		return "Navigation has been saved!";
	}
	
	@RequestMapping(value = "/save_all_graphs")
	public @ResponseBody String saveGraph(String graph_json, String graphname) {
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			username = userDetail.getUsername();
		}
		
		int a = enterpriseDAO.save_all_graphs(graph_json, username, graphname);
		return "Graph has been saved!";
	}
	
	@RequestMapping(value = "/addElementInDBFromGraph")
	public @ResponseBody String addElementInDBFromGraph(String elementName, String objectName,String objectType, HttpSession session) {
		System.out.println("Inside function..");
		System.out.println("objectType: "+objectType);
		if(objectType == null) {
			objectType= "Null";
		}
		if(objectType.equals("Other") || objectType.equals("Others")) {
			objectType= "Null";
		}
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			username = userDetail.getUsername();
		}
		
		
		
//		String path = session.getServletContext().getRealPath("/");
//		String[] splitString = path.split("\\.metadata");
//		Locale locale = LocaleContextHolder.getLocale();
//
////		For Local
//		String filePath = splitString[0] + remainingString;
//		File folder = new File(filePath);
//		File[] listOfFiles = folder.listFiles();
//		for (File file : listOfFiles) {
//		    if (file.isFile()) {
//		        try (OutputStream output = new FileOutputStream(filePath+"\\"+file.getName(), true)) {
//		            Properties prop = new Properties();
//		            // set the properties value
//		            prop.setProperty(objectName.replaceAll(" ", "_"), objectName);
//		            // save properties to project root folder
//		            prop.store(output, null);
//		            output.close();
//		        } catch (IOException io) {
//		            io.printStackTrace();
//		        }
//		    }
//		}

//		For Online
//		File folder = new File(path);
//		File[] listOfFiles = folder.listFiles();
//		for (File file : listOfFiles) {
//			if (file.isFile()) {
//				try (OutputStream output = new FileOutputStream(path + "\\" + file.getName(), true)) {
//					Properties prop = new Properties();
//					// set the properties value
//					prop.setProperty(objectName.replaceAll(" ", "_"), objectName);
//					// save properties to project root folder
//					prop.store(output, null);
//					output.close();
//				} catch (IOException io) {
//					io.printStackTrace();
//				}
//			}
//		}
		
		/*
		 * 
		 * 
		List<Element> elementsObject = unif.getElements();
		for (Element e1 : elementsObject) {
			if (e1.getElementName().equalsIgnoreCase(objectName)) {
				objectName = e1.getElementName();
			}
		}

		String lastObjectId = enterpriseDAO.getLastObjectId(dbName, objectName.replaceAll("\\s+", "_"));
		 * 
		 */

		String tableName = elementName;
		elementName = elementName.replaceAll("\\s+", "_");
		
		List<attributesInformationModel> attributeDetailsList = enterpriseDAO.getAllAttributeDetails(dbName,elementName);
		List<String> columnNames = new ArrayList<String>();
		List<String> rowValues = new ArrayList<String>();
		List<String> name = enterpriseDAO.getSelfGeneratedForGivenAttribute(dbName, elementName, "Name");
		List<String> idd = enterpriseDAO.getSelfGeneratedForGivenAttribute(dbName, elementName, "ID");
		List<String> type = enterpriseDAO.getSelfGeneratedForGivenAttribute(dbName, elementName, "Type");
		String typeStr = "";
		String idStr = "";
		if (type.size() > 0) {
			typeStr = type.get(0);
		}
		if (idd.size() > 0) {
			idStr = idd.get(0);
		}

		DateTimeFormatter df = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		DateTimeFormatter tf = DateTimeFormatter.ofPattern("HH:mm:ss");
		LocalDateTime now = LocalDateTime.now();

		String P_KEy = "";
		List<Element> elementsObject = unif.getElements();
		for (Element e1 : elementsObject) {
			if (e1.getElementName().equalsIgnoreCase(tableName)) {
				P_KEy = e1.getElementShortName();
				tableName = e1.getElementName();
			}
		}
		String lastObjectId = enterpriseDAO.getLastObjectId(dbName, tableName.replaceAll("\\s+", "_"));
		P_KEy += lastObjectId;
		for (attributesInformationModel attributeDetails : attributeDetailsList) {
			String att_name = attributeDetails.getSelfGeneratedAttribute();
			if (att_name.equals("status") || attributeDetails.getAttributeType().equals("Relationship"))
				continue;
			if (att_name.equals("id")) {
				continue;
			}
			columnNames.add(att_name);

			if (att_name.equals(name.get(0)))
				rowValues.add(objectName);
			else if (att_name.equals(idStr))
				rowValues.add(P_KEy);
			else if (att_name.equals(typeStr))
				rowValues.add(objectType);
			else {
				if( !(attributeDetails.getGroupCaption().equals("Change History") && attributeDetails.getGroupStyle().equals("Tabular")) && attributeDetails.getAttributeFormat().equals("Date")) {
					rowValues.add("1900-01-01");
				}
				else if (attributeDetails.getAttributeFormat().equals("Date"))
					rowValues.add(df.format(now));
				else if (attributeDetails.getAttributeFormat().equals("Time"))
					rowValues.add(tf.format(now));
				else if (attributeDetails.getActualAttribute().equals("#"))
					rowValues.add("1");
				else if (attributeDetails.getActualAttribute().equals("User"))
					rowValues.add(username);
				else if (attributeDetails.getActualAttribute().equals("Attribute"))
					rowValues.add(" ");
				else if (attributeDetails.getActualAttribute().equals("Old Value"))
					rowValues.add(" ");
				else if (attributeDetails.getActualAttribute().equals("New Value"))
					rowValues.add(" ");
				else if (attributeDetails.getActualAttribute().equals("Action"))
					rowValues.add("Create");
				else
					rowValues.add("");
			}
		}
		System.out.println("---------------adding new element in db-----------");
		System.out.println("dbName:"+dbName);
		System.out.println("elementName:"+elementName);
		System.out.println("columnNames:"+columnNames);
		System.out.println("rowValues:"+rowValues);
		System.out.println("---------------adding new element in db-----------");
		

		fromExcel addRow = new fromExcel();
		addRow.setDbName(dbName);
		addRow.setTableName(tableName.replaceAll("\\s+", "_"));
		addRow.setColumnNames(columnNames);
		addRow.setRowValues(rowValues);
		addRow.setFirstRowIsColumnName("1");
		enterpriseDAO.addRowsForObject(addRow, username);

		return "";
	}

	@GetMapping("/show_graph")
	public String passParametersWithModelMap(DefaultDirectedGraph graph) {
		// graph.("welcomeMessage", "welcome");
		// graph.addAttribute("message", "Baeldung");
		return "interactive_shapes";
	}

	// Arif Ends here



	@RequestMapping(value = "/editRow", method = RequestMethod.POST)
	public @ResponseBody List<Integer> editRow(
			@RequestParam String tableName,
			@RequestParam(value = "attributes[]") List<String> attributes, String id, String oldName,
			@RequestParam(value = "formData[]") List<String> formData,
			@RequestParam(value = "dataBeforeUpdate[]") List<String> dataBeforeUpdate,
			@RequestParam(value = "tagNames[]") List<String> tagNames,
			@RequestParam(value = "AllRelRowIDs[]") String[] AllRelRowIDs,
			@RequestParam(value = "AllRelTableIDs[]") String[] AllRelTableIDs,String last_time_updated, HttpSession session)
			throws JAXBException, FileNotFoundException {
		List<Element> elementsObject = unif.getElements();
		for (Element e1 : elementsObject) {
			if (e1.getElementName().equalsIgnoreCase(tableName)) {
				tableName = e1.getElementName();
			}
		}
		
		List<Element_Attributes> elementAttributesList = unif.getElement_attributes();
		List<attributesInformationModel> attributeDetailsList = enterpriseDAO.getAllAttributeDetails(dbName,tableName.replaceAll("\\s+", "_"));

		List<ArrayList<String>> historyChanges = new ArrayList<ArrayList<String>>();
		
		
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
//			System.out.println(userDetail);
			username = userDetail.getUsername();
		}
		
//		System.out.println("formdata: => ");
//		System.out.println(formData);
//		System.out.println(dataBeforeUpdate);
//		System.out.println("formData.size(): "+formData.size());
//		System.out.println("dataBeforeUpdate.size(): "+dataBeforeUpdate.size());
		
//		 -- Select -- 
		
		for(int i=0; i<formData.size(); i++){
			String dataAfterUpdate = "";
			String dataBeforUpdate = "";
			if(tagNames.get(i).equals("TABLE")) {
			
				
				String[] tempDataAfterUpdate = formData.get(i).split(",");
				String[] tempDataBeforUpdate = dataBeforeUpdate.get(i).split(",");
				
				
				
				if(tempDataAfterUpdate.length < 2) {

					if(tempDataAfterUpdate[0].split("---").length < 2) {
						
						dataAfterUpdate = tempDataAfterUpdate[0].split("---")[0];
						
					}else if( tempDataAfterUpdate[0].split("---").length >= 2 ) {
						for (int j = 0; j < tempDataAfterUpdate.length; j++) {
							dataAfterUpdate += tempDataAfterUpdate[j].split("---")[0];
							
							if(j != tempDataAfterUpdate.length-1) {
								dataAfterUpdate += ", ";
							}
						}
					}

				}else if(tempDataAfterUpdate.length >=2) {
					
					for (int j = 0; j < tempDataAfterUpdate.length; j++) {
						dataAfterUpdate += tempDataAfterUpdate[j].split("---")[0];
						if(j != tempDataAfterUpdate.length-1) {
							dataAfterUpdate += ", ";
						}
					}
				
				}
			}else {
				dataAfterUpdate = formData.get(i);
			}				
				
				dataBeforUpdate = dataBeforeUpdate.get(i);
				
			
			//System.out.println("dataBeforUpdate: "+dataBeforUpdate);
			//System.out.println("dataAfterUpdate: "+dataAfterUpdate);
			//System.out.println("");
			
			if(!(dataAfterUpdate.equals(dataBeforUpdate))  && !dataAfterUpdate.equals(null)){
			
				ArrayList<String> temp = new ArrayList<String>();
				

				LocalDate currentDate = LocalDate.now(); // Create a date object
				String currentDate1 = ""+currentDate+"";
				
				String currentTime = LocalTime.now()
					    .truncatedTo(ChronoUnit.SECONDS)
					    .format(DateTimeFormatter.ISO_LOCAL_TIME);
				
				temp.add("");
				temp.add(username);
				temp.add(currentDate1);
				temp.add(currentTime);
				
				temp.add(attributes.get(i));
				temp.add(dataBeforUpdate);
				temp.add(dataAfterUpdate);
				temp.add("Update");
				historyChanges.add(temp);

			}
		}
		
		
		List<String> getColumnNameForChangeHistory = enterpriseDAO.getSelfGeneratedColumnNameForChangeHistory(dbName,tableName.replaceAll("\\s+", "_"));


		String[] split = null;
		String incSerial = "0";
		String newSerial = "";
		
		String concatWith = "##";

		String concatUser = "";
		String concatDate = "";
		String concatTime = "";
		String concatAttr = "";
		
//		System.out.println("historyChanges: "+historyChanges);
		for(int a1=0; a1<historyChanges.size(); a1++) {
			for(int a2=0; a2<historyChanges.get(a1).size(); a2++) {
				List<String> getOldValueFromDb = enterpriseDAO.getSelfGeneratedValueForChangeHistory(dbName,tableName.replaceAll("\\s+", "_"),getColumnNameForChangeHistory.get(a2),id);
				if(a2==0) {

					if(!(getOldValueFromDb.get(0).equals("")) || (getOldValueFromDb.get(0).equals("Null"))|| (getOldValueFromDb.get(0).equals(null))) {
//						System.out.println("equal 1");
						split = getOldValueFromDb.get(0).split(concatWith);
						
//						System.out.println("getOldValueFromDb: "+getOldValueFromDb);
//						System.out.println("getOldValueFromDb: "+getOldValueFromDb.get(0));
//						System.out.println(split.length);
						
						incSerial = Integer.toString(Integer.parseInt(split[split.length-1])+1);
						newSerial = "";
						for(int i=0; i<split.length+1; i++) {
							if(i==split.length) {
								newSerial+=incSerial;

							}else {
								newSerial += split[i] + concatWith;
//								System.out.println("new 2: "+newSerial);
							}
						}
			
					}else {
//						System.out.println("equal 4");
						incSerial = "0";
						newSerial+=incSerial + concatWith;
					}
//					System.out.println(newSerial);
					enterpriseDAO.updateSelfGeneratedValueForChangeHistory(dbName, tableName.replaceAll("\\s+", "_"), getColumnNameForChangeHistory.get(a2), newSerial, id);
					
				}
				else if(a2==1) {
					concatUser = "";
					concatUser = getOldValueFromDb.get(0) + concatWith + username;
//					System.out.println(concatUser);
					enterpriseDAO.updateSelfGeneratedValueForChangeHistory(dbName, tableName.replaceAll("\\s+", "_"), getColumnNameForChangeHistory.get(a2), concatUser, id);
					
				}
				else if(a2==2) {
					concatDate = "";
					LocalDate currentDate = LocalDate.now(); // Create a date object
				    concatDate = getOldValueFromDb.get(0) + concatWith + currentDate;
//				    System.out.println(concatDate);
				    enterpriseDAO.updateSelfGeneratedValueForChangeHistory(dbName, tableName.replaceAll("\\s+", "_"), getColumnNameForChangeHistory.get(a2), concatDate, id);
				}
				else if(a2==3) {
				    String currentTime = LocalTime.now()
						    .truncatedTo(ChronoUnit.SECONDS)
						    .format(DateTimeFormatter.ISO_LOCAL_TIME);
				    
				    concatTime = getOldValueFromDb.get(0) + concatWith + currentTime;
//				    System.out.println(concatTime);
				    enterpriseDAO.updateSelfGeneratedValueForChangeHistory(dbName, tableName.replaceAll("\\s+", "_"), getColumnNameForChangeHistory.get(a2), concatTime, id);
				    
				}
				else{
					if(historyChanges.get(a1).get(a2).equals("") || historyChanges.get(a1).get(a2).equals(" ")){
						concatAttr = getOldValueFromDb.get(0) + concatWith + " ";
//						System.out.println(concatAttr);
						enterpriseDAO.updateSelfGeneratedValueForChangeHistory(dbName, tableName.replaceAll("\\s+", "_"), getColumnNameForChangeHistory.get(a2), concatAttr, id);

					}else{
						concatAttr = getOldValueFromDb.get(0) + concatWith + historyChanges.get(a1).get(a2);
//						System.out.println(concatAttr);
						enterpriseDAO.updateSelfGeneratedValueForChangeHistory(dbName, tableName.replaceAll("\\s+", "_"), getColumnNameForChangeHistory.get(a2), concatAttr, id);
					}
				}
				
				
			}
		}
//		}
		
		
		if (!AllRelRowIDs[0].equals("null"));
			enterpriseDAO.delRowFromRelations(dbName, AllRelRowIDs);
		RelationsModel addRElRow = new RelationsModel();
		addRElRow.setDbName(dbName);
		addRElRow.setTableName("relationships");

		List<String> allselfGeneratedVals = new ArrayList<String>();
		List<String> columnNames = new ArrayList<String>();
		List<String> rowValues = new ArrayList<String>();
		List<String> AllRelTableIDs_New = new ArrayList<String>();
		tableName = tableName.replaceAll("\\s+", "_");

		String selfGeneratedVal = "";

		String ID = "";
		String Name = "";

		/// NEW CODE *START

		List<String> test = new ArrayList<String>();
		int attributeDetailsListSize = attributeDetailsList.size();
		int formDataIndex = 0;
		int index1 = 0;
		List<Integer> updatedRelTableIDs = new ArrayList<Integer>();
		for (int i = 0; i < attributeDetailsListSize; i++) { // for(int i=0; i<attributeDetailsListSize; i++) 

			boolean sourceIsNull = false;
			boolean targetIsNull = false;
			boolean addRelObject = false;
			String sourceRelElement = "";
			String targetRelElement = "";
			String sourcePKEy = "";
			String targetPKEY = "";
			String sourceAttName = "";
			String targetAttName = "";
			String sourceAttValue = "";
			String targetAttValue = "";
			String relationshipType = "";
			String bidirectionRelationshipPair = "";

			String sourceAttValueToCheckExisting = "";
			String targetAttValueToCheckExisting = "";

			if( (attributeDetailsList.get(i).getGroupCaption().equals("Change History") && attributeDetailsList.get(i).getGroupStyle().equals("Tabular")) ) {
				index1++;
				continue;
			}
			
			
			
			attributesInformationModel attributeDetails = attributeDetailsList.get(index1);
			
			
			String attributeName = attributeDetails.getActualAttribute();
			String attributeName_2 = "";
			String attributeType = attributeDetails.getAttributeType();
			
//			System.out.println("AAAa");
//			System.out.println(attributeName);
//			System.out.println(formData.get(formDataIndex));
//			System.out.println("\n\nAAAa");
			
			if (attributeDetails.getGroupStyle().equals("Shared")) {
				// SHARED
				if (!test.contains(attributeDetails.getGroupCaption())) {
					test.add(attributeDetails.getGroupCaption());
					String formDataStr = formData.get(formDataIndex++);
					if ((formDataStr.equals("")) || formDataStr.equals(",,,")) {
//						formDataIndex++;
						index1++;
						continue;
					}
					String[] arrayString = new String[0];
					if (formDataStr != null)
						arrayString = formDataStr.split(",");
					for (String v : arrayString) {
						String[] arrayString1 = v.split("---");
						String relObjectName = arrayString1[0];
						String relElementName = arrayString1[1];
						for (int j = index1; j < attributeDetailsListSize; j++) {
							sourceIsNull = false;
							targetIsNull = false;
							attributesInformationModel attributeDetailsForShared = attributeDetailsList.get(j);
							String sourceRelElementFromDB = attributeDetailsForShared.getSourceRelationship_Element()
									.replaceAll("\\s+", "_");
							String targetRelElementFromDB = attributeDetailsForShared.getTargetRelationship_Element()
									.replaceAll("\\s+", "_");
							bidirectionRelationshipPair = attributeDetailsForShared.getBidirectionRelationshipPair();
							attributeName = attributeDetailsForShared.getActualAttribute();
							sourceRelElement = "";
							targetRelElement = "";
							sourcePKEy = "";
							targetPKEY = "";
							sourceAttName = "";
							targetAttName = "";
							sourceAttValue = "";
							targetAttValue = "";
							relationshipType = "";
							List<String> attNames = enterpriseDAO.getRowWithCondition(dbName, "attributes_information",
									"Actual_Attribute", "Bidirection_Relationship_Pair", bidirectionRelationshipPair);

							for (String atn : attNames) {
								if (!atn.equals(attributeName))
									attributeName_2 = atn;
							}
							if (sourceRelElementFromDB.equals(relElementName)) {
								sourceIsNull = true;
								sourceRelElement = sourceRelElementFromDB;
								targetRelElement = tableName;
								sourcePKEy = null;
								targetPKEY = ID;
								sourceAttName = attributeName_2;
								targetAttName = attributeName;
								sourceAttValue = Name;
								targetAttValue = relObjectName;

								sourceAttValueToCheckExisting = oldName;
								targetAttValueToCheckExisting = relObjectName;

								relationshipType = attributeDetailsForShared.getRelationship();
								addRelObject = true;
							} else if (targetRelElementFromDB.equals(relElementName)) {
								targetIsNull = true;
								sourceRelElement = tableName;
								targetRelElement = targetRelElementFromDB;
								sourcePKEy = ID;
								targetPKEY = null;
								sourceAttName = attributeName;
								targetAttName = attributeName_2;
								sourceAttValue = relObjectName;
								targetAttValue = Name;

								sourceAttValueToCheckExisting = relObjectName;
								targetAttValueToCheckExisting = oldName;

								relationshipType = attributeDetailsForShared.getRelationship();
								addRelObject = true;
							}
							addRElRow.setSourceIsNull(sourceIsNull);
							addRElRow.setTargetIsNull(targetIsNull);
							addRElRow.setSourceRelElement(sourceRelElement);
							addRElRow.setTargetRelElement(targetRelElement);
							addRElRow.setSourcePKEy(sourcePKEy);
							addRElRow.setTargetPKEY(targetPKEY);
							addRElRow.setSourceAttName(sourceAttName);
							addRElRow.setTargetAttName(targetAttName);
							addRElRow.setRelationshipType(relationshipType);
							addRElRow.setBidirectionRelationshipPair(bidirectionRelationshipPair);

							// Creating object in relationships* START
							if (addRelObject == true) {
//								System.out.println("dbName, " + dbName);
//								System.out.println("relationshipType," + relationshipType);
//								System.out.println("sourceRelElementFromDB, " + sourceRelElementFromDB);
//								System.out.println("targetRelElementFromDB, " + targetRelElementFromDB);
//								System.out.println("relElementName, " + relElementName);

								// error
								String fromColumn = enterpriseDAO.getSelfGeneratedForGivenAttribute(dbName, relationshipType, "From").get(0);
								String toColumn = enterpriseDAO.getSelfGeneratedForGivenAttribute(dbName, relationshipType, "To").get(0);

								List<String> currentRelTableID = enterpriseDAO.getRelTableIDs(dbName, relationshipType,
										fromColumn, toColumn, targetAttValueToCheckExisting,
										sourceAttValueToCheckExisting);
								if (currentRelTableID.size() == 0) {

									List<attributesInformationModel> attributeDetailsListRel = enterpriseDAO.getAllAttributeDetails(dbName, relationshipType);
									DateTimeFormatter df = DateTimeFormatter.ofPattern("yyyy-MM-dd");
									DateTimeFormatter tf = DateTimeFormatter.ofPattern("HH:mm");
									LocalDateTime now = LocalDateTime.now();

									List<String> columnNamesRel = new ArrayList<String>();
									List<String> rowValuesRel = new ArrayList<String>();

									for (attributesInformationModel attributeDetailsRel : attributeDetailsListRel) {
										String att_name = attributeDetailsRel.getSelfGeneratedAttribute();
										String actual_value = attributeDetailsRel.getActualAttribute();
										if (att_name.equals("status")
												|| attributeDetailsRel.getAttributeType().equals("Relationship"))
											continue;
										if (att_name.equals("id")) {
											continue;
										}
										columnNamesRel.add(att_name);

										if (actual_value.equals("Name"))
											rowValuesRel.add(targetAttValue + "_X_" + sourceAttValueToCheckExisting);
										else if (actual_value.equals("From"))
											rowValuesRel.add(targetAttValue);
										else if (actual_value.equals("To"))
											rowValuesRel.add(sourceAttValueToCheckExisting);
										else {
											if (attributeDetailsRel.getAttributeFormat().equals("Date"))
												rowValuesRel.add(df.format(now));
											else if (attributeDetailsRel.getAttributeFormat().equals("Time"))
												rowValuesRel.add(tf.format(now));
											else
												rowValuesRel.add("");
										}
									}
									fromExcel addRow = new fromExcel();
									addRow.setDbName(dbName);
									addRow.setTableName(relationshipType);
									addRow.setColumnNames(columnNamesRel);
									addRow.setRowValues(rowValuesRel);
									addRow.setFirstRowIsColumnName("1");
									enterpriseDAO.addRowsFromExcel(addRow);
								} else {
									AllRelTableIDs_New.addAll(currentRelTableID);
								}
								addRelObject = false;
							}
							// Creating object in relationships* END

							if (sourceAttValue.equals(Name)) {
								addRElRow.setSourceAttValue(sourceAttValue.replaceAll("'", "''"));
								addRElRow.setTargetAttValue(targetAttValue.replaceAll("'", "''"));
								enterpriseDAO.addRelations(addRElRow);
							} else if (targetAttValue.equals(Name)) {
								addRElRow.setTargetAttValue(targetAttValue.replaceAll("'", "''"));
								addRElRow.setSourceAttValue(sourceAttValue.replaceAll("'", "''"));
								enterpriseDAO.addRelations(addRElRow);
							}

							if ((sourceRelElementFromDB.equals(relElementName))
									|| (targetRelElementFromDB.equals(relElementName))) {
								break;
							}
						}

//						System.out.println("Object "+arrayString1[0]);
//						System.out.println("Element "+arrayString1[1]);

					}
//					formDataIndex++;
				}
			} else {
				selfGeneratedVal = attributeDetails.getSelfGeneratedAttribute();
				String rowVal = formData.get(formDataIndex);
				
				if (ID.equals("") || Name.equals("")) {
					if (attributes.get(index1).equals("ID")) {
						ID = formData.get(index1);
						if(ID.equals("")) {
							ID = " ";
						}
					}
					if (attributes.get(index1).equals("Name")) {
						Name = formData.get(index1);
//						System.out.println("Name" + Name);
						enterpriseDAO.updateNameInRelTable(dbName, oldName, Name);
					}
				}
				if (attributeType.equals("Relationship")) {
//					System.out.println("In Realationship");
//					System.out.println(formData);

					if ((formData.get(formDataIndex).equals(""))) {
						formDataIndex++;
						index1++;
						continue;
					}

					String sourceRelElementFromDB = attributeDetails.getSourceRelationship_Element().replaceAll("\\s+",	"_");
					String targetRelElementFromDB = attributeDetails.getTargetRelationship_Element().replaceAll("\\s+",	"_");
					bidirectionRelationshipPair = attributeDetails.getBidirectionRelationshipPair();
					List<String> attNames = enterpriseDAO.getRowWithCondition(dbName, "attributes_information",
							"Actual_Attribute", "Bidirection_Relationship_Pair", bidirectionRelationshipPair);

					for (String atn : attNames) {
						if (!atn.equals(attributeName))
							attributeName_2 = atn;
					}

					relationshipType = attributeDetails.getRelationship();
					bidirectionRelationshipPair = attributeDetails.getBidirectionRelationshipPair();
					String fromColumn = enterpriseDAO.getSelfGeneratedForGivenAttribute(dbName, relationshipType, "From").get(0);
					String toColumn = enterpriseDAO.getSelfGeneratedForGivenAttribute(dbName, relationshipType, "To").get(0);
					

					if (!sourceRelElementFromDB.equals("N/A")) {
						sourceIsNull = true;
						sourceRelElement = sourceRelElementFromDB;
						targetRelElement = tableName;
						sourcePKEy = null;
						targetPKEY = ID;
						sourceAttName = attributeName_2;
						targetAttName = attributeName;
						sourceAttValue = Name.replaceAll("'", "''");// escape single quotes in sql: .replaceAll("'",
																	// "''")
						targetAttValue = formData.get(formDataIndex).replaceAll("'", "''");// escape single quotes in // sql: .replaceAll("'", // "''");
						
//						System.out.println("-----------");
//						System.out.println(targetAttValue);
//						System.out.println("-----------");
						

						addRElRow.setSourceIsNull(sourceIsNull);
						addRElRow.setSourceRelElement(sourceRelElement);
						addRElRow.setTargetRelElement(targetRelElement);
						addRElRow.setTargetPKEY(targetPKEY);
						addRElRow.setSourceAttName(sourceAttName);
						addRElRow.setTargetAttName(targetAttName);
						addRElRow.setSourceAttValue(sourceAttValue);
						// addRElRow.setTargetAttValue(targetAttValue);
						addRElRow.setRelationshipType(relationshipType);
						addRElRow.setBidirectionRelationshipPair(bidirectionRelationshipPair);
						String[] arrayString = new String[0];
						if (targetAttValue != null)
							arrayString = targetAttValue.split(",");
						for (String tv : arrayString) {
							String[] arrayString1 = tv.split("---");
							String relObjectName = arrayString1[0];
							String relElementName = arrayString1[1];
							sourceAttValueToCheckExisting = oldName;
							targetAttValueToCheckExisting = relObjectName;
							addRElRow.setTargetAttValue(relObjectName.replaceAll("'", "''"));
							//enterpriseDAO.addRelations(addRElRow);
							int lastInsertedID = enterpriseDAO.addRelations(addRElRow);
							updatedRelTableIDs.add(lastInsertedID);
							
							////
							List<String> currentRelTableID = enterpriseDAO.getRelTableIDs(dbName, relationshipType,
									fromColumn, toColumn, targetAttValueToCheckExisting,sourceAttValueToCheckExisting);
							if (currentRelTableID.size() == 0) {

								List<attributesInformationModel> attributeDetailsListRel = enterpriseDAO.getAllAttributeDetails(dbName, relationshipType);
								DateTimeFormatter df = DateTimeFormatter.ofPattern("yyyy-MM-dd");
								DateTimeFormatter tf = DateTimeFormatter.ofPattern("HH:mm");
								LocalDateTime now = LocalDateTime.now();

								List<String> columnNamesRel = new ArrayList<String>();
								List<String> rowValuesRel = new ArrayList<String>();

								for (attributesInformationModel attributeDetailsRel : attributeDetailsListRel) {
									String att_name = attributeDetailsRel.getSelfGeneratedAttribute();
									String actual_value = attributeDetailsRel.getActualAttribute();
									if (att_name.equals("status")
											|| attributeDetailsRel.getAttributeType().equals("Relationship"))
										continue;
									if (att_name.equals("id")) {
										continue;
									}
									columnNamesRel.add(att_name);

									if (actual_value.equals("Name"))
										rowValuesRel.add(targetAttValueToCheckExisting + "_X_" + sourceAttValue);
									else if (actual_value.equals("From"))
										rowValuesRel.add(targetAttValueToCheckExisting);
									else if (actual_value.equals("To"))
										rowValuesRel.add(sourceAttValue);
									else {
										if (attributeDetailsRel.getAttributeFormat().equals("Date"))
											rowValuesRel.add(df.format(now));
										else if (attributeDetailsRel.getAttributeFormat().equals("Time"))
											rowValuesRel.add(tf.format(now));
										else
											rowValuesRel.add("");
									}
								}
								fromExcel addRow = new fromExcel();
								addRow.setDbName(dbName);
								addRow.setTableName(relationshipType);
								addRow.setColumnNames(columnNamesRel);
								addRow.setRowValues(rowValuesRel);
								addRow.setFirstRowIsColumnName("1");
								enterpriseDAO.addRowsFromExcel(addRow);
							}
						}

					} else if (!targetRelElementFromDB.equals("N/A")) {
						targetIsNull = true;
						sourceRelElement = tableName;
						targetRelElement = targetRelElementFromDB;
						sourcePKEy = ID;
						// targetPKEY = null;
						sourceAttName = attributeName;
						targetAttName = attributeName_2;
						sourceAttValue = formData.get(formDataIndex).replaceAll("'", "''");// escape single quotes in
																							// sql: .replaceAll("'",
																							// "''");
						targetAttValue = Name.replaceAll("'", "''");// escape single quotes in sql: .replaceAll("'",
																	// "''");
						

						addRElRow.setTargetIsNull(targetIsNull);
						addRElRow.setSourceRelElement(sourceRelElement);
						addRElRow.setTargetRelElement(targetRelElement);
						addRElRow.setSourcePKEy(sourcePKEy);
						addRElRow.setSourceAttName(sourceAttName);
						addRElRow.setTargetAttName(targetAttName);
						// addRElRow.setSourceAttValue(sourceAttValue);
						addRElRow.setTargetAttValue(targetAttValue);
						addRElRow.setRelationshipType(relationshipType);
						addRElRow.setBidirectionRelationshipPair(bidirectionRelationshipPair);
						String[] arrayString = new String[0];
						if (sourceAttValue != null)
							arrayString = sourceAttValue.split(",");
						for (String tv : arrayString) {
							String[] arrayString1 = tv.split("---");
							String relObjectName = arrayString1[0];
							String relElementName = arrayString1[1];
							sourceAttValueToCheckExisting = relObjectName;
							targetAttValueToCheckExisting = oldName;
							addRElRow.setSourceAttValue(relObjectName.replaceAll("'", "''"));
							int lastInsertedID = enterpriseDAO.addRelations(addRElRow);
							updatedRelTableIDs.add(lastInsertedID);
							
							
							///
							List<String> currentRelTableID = enterpriseDAO.getRelTableIDs(dbName, relationshipType,
									fromColumn, toColumn, targetAttValueToCheckExisting,sourceAttValueToCheckExisting);
							if (currentRelTableID.size() == 0) {

								List<attributesInformationModel> attributeDetailsListRel = enterpriseDAO.getAllAttributeDetails(dbName, relationshipType);
								DateTimeFormatter df = DateTimeFormatter.ofPattern("yyyy-MM-dd");
								DateTimeFormatter tf = DateTimeFormatter.ofPattern("HH:mm");
								LocalDateTime now = LocalDateTime.now();

								List<String> columnNamesRel = new ArrayList<String>();
								List<String> rowValuesRel = new ArrayList<String>();

								for (attributesInformationModel attributeDetailsRel : attributeDetailsListRel) {
									String att_name = attributeDetailsRel.getSelfGeneratedAttribute();
									String actual_value = attributeDetailsRel.getActualAttribute();
									if (att_name.equals("status")
											|| attributeDetailsRel.getAttributeType().equals("Relationship"))
										continue;
									if (att_name.equals("id")) {
										continue;
									}
									columnNamesRel.add(att_name);

									if (actual_value.equals("Name"))
										rowValuesRel.add(targetAttValue + "_X_" + relObjectName);
									else if (actual_value.equals("From"))
										rowValuesRel.add(targetAttValue);
									else if (actual_value.equals("To"))
										rowValuesRel.add(relObjectName.replaceAll("'", "''"));
									else {
										if (attributeDetailsRel.getAttributeFormat().equals("Date"))
											rowValuesRel.add(df.format(now));
										else if (attributeDetailsRel.getAttributeFormat().equals("Time"))
											rowValuesRel.add(tf.format(now));
										else
											rowValuesRel.add("");
									}
								}
								fromExcel addRow = new fromExcel();
								addRow.setDbName(dbName);
								addRow.setTableName(relationshipType);
								addRow.setColumnNames(columnNamesRel);
								addRow.setRowValues(rowValuesRel);
								addRow.setFirstRowIsColumnName("1");
								enterpriseDAO.addRowsFromExcel(addRow);
							}
						}
					}
					

					

				} else {
					rowValues.add(rowVal);
					allselfGeneratedVals.add(selfGeneratedVal);
				}
				test.add(attributeDetails.getActualAttribute());
				formDataIndex++;
			}
//			System.out.println("increment in index");
			index1++;

		}
		
		enterpriseDAO.editRow(dbName, tableName, allselfGeneratedVals, id, rowValues);
		enterpriseDAO.updateObjectUpdatedDate(dbName, tableName,last_time_updated, id);
		
		return updatedRelTableIDs;
	}

	@ExceptionHandler(NoHandlerFoundException.class)
	public String handle(Exception ex) {
		System.out.println("dfdfjij");
		return "redirect:/404";
	}

//	@ExceptionHandler(value = Exception.class)
//	public String exceptionHandler(Exception e) {
//		System.out.println("Cause: "+e.getCause());
//		System.out.println("Message: "+e.getMessage());
//		return "Error";
//	}

	@RequestMapping(value = { "/404" }, method = RequestMethod.GET)
	public String NotFoudPage() {
		return "index";
	}

	private JdbcTemplate jdbcTemplate;

	public MainController(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@RequestMapping(value = "/checkList")
	public ModelAndView checkList(ModelAndView model) {
		// List<dbModel> dbList = enterpriseDAO.listDb();
		// model.addObject("dbList", dbList);
		model.setViewName("welcome");
		return model;
	}
	
	@RequestMapping(value = "/registration")
	public ModelAndView registration(ModelAndView model) {
		// List<dbModel> dbList = enterpriseDAO.listDb();
		// model.addObject("dbList", dbList);
		model.setViewName("registration");
		return model;
	}

	@RequestMapping(value = "/user_register")
	public String user_register(String username, String email, String company_name, String metamodel_name, String phone_no, String company_address, String password, String confirm_password) {
	        
        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        String hashedPassword = passwordEncoder.encode(password);
		int ab = enterpriseDAO.userRegister(username,email,company_name,metamodel_name,phone_no,company_address,hashedPassword);
		return "redirect:/";
	}
	
	@RequestMapping(value = "/check_email_when_registration")
	public @ResponseBody String check_email_when_registration(String email) {
		System.out.println(email);
		List<String> ab = enterpriseDAO.check_email_when_registration(email);
		System.out.println(ab);
		if(ab.size()!=0) {
			return "Not Available";
		}else {
			return "Available";
		}
	}

	@RequestMapping(value = "/getDbName")
	public @ResponseBody String getDbName() {
		return dbName;
	}

	@RequestMapping(value = "/getMetaModel")
	public @ResponseBody List<dbModel> getMetaModel() {
		List<dbModel> dbList = enterpriseDAO.listDb();
		System.out.println("dbList"+dbList);
		return dbList;
	}

//	For Fetching Database 
	@RequestMapping(value = "/DbToExcel")
	public ModelAndView DbToExcel(ModelAndView model) {
		List<dbModel> dbList = enterpriseDAO.listDb();
		model.addObject("dbList", dbList);		
		model.setViewName("DbToExcel");
		return model;
	}

	
// For fetching Table Data 
	@RequestMapping(value = "/tblData")
	public @ResponseBody List<String> tblData(String dbName) {
//		tblModel for tableName || listTbl for List of tables
		List<String> tblData = enterpriseDAO.listTbl(dbName);
//		System.out.println("tblData"+tblData);
		return tblData;
	}

	
////	For transfer data from database to excel
	@RequestMapping(value = "/toExcel")
//	public List<String> toExcel(ModelAndView model) {
	public ResponseEntity<Object> str_Array(String dbName , String tableName, HttpSession session) throws IOException {
		List<ModelElement> str_Array = enterpriseDAO.listEle(dbName,tableName);
		System.out.println("str_Array: "+str_Array);
		System.out.println(str_Array.getClass().getSimpleName());
//		Path
		String path = session.getServletContext().getRealPath("/");
		String FILE_NAME = path + "/";
		FILE_NAME += "export.xlsx";
//		FILE_NAME += "amf1_template.xlsx";
		
		
		XSSFWorkbook workbook = new XSSFWorkbook();
		
		
		XSSFSheet spreadsheet = workbook.createSheet("Meta Model");
//		Create row
		XSSFRow row = spreadsheet.createRow(1);
		XSSFCell cell;
		

         row.createCell(0).setCellValue("Name");	
         row.getCell(0);
//         
         row.createCell(1).setCellValue("Id");
         row.getCell(1);
         
         row.createCell(2).setCellValue("Description");
         row.getCell(2);
         
         row.createCell(3).setCellValue("Repository_Status");
         row.getCell(3);
         
         row.createCell(4).setCellValue("Action_required");
         row.getCell(4);
         
         row.createCell(5).setCellValue("Action_Note");
         row.getCell(5);
         
         int rowCount = 1;
//         
         for (ModelElement aElement : str_Array) {
        	 XSSFRow arow = spreadsheet.createRow(rowCount++);
             arow.createCell(0).setCellValue(aElement.getName());
             arow.createCell(1).setCellValue(aElement.getId());
             arow.createCell(2).setCellValue(aElement.getDescription());
             arow.createCell(3).setCellValue(aElement.getRepository_Status());
             arow.createCell(4).setCellValue(aElement.getAction_required());
             arow.createCell(5).setCellValue(aElement.getAction_note());
             rowCount++;
         }
         try {
        	 FileOutputStream outputStream = new FileOutputStream(FILE_NAME);
 			workbook.write(outputStream);
 			workbook.close();
 		} catch (FileNotFoundException e) {
 			e.printStackTrace();
 		} catch (IOException e) {
 			e.printStackTrace();
 		}
	    File file = new File(FILE_NAME);
 		InputStreamResource resource = new InputStreamResource(new FileInputStream(file));

 		HttpHeaders headers = new HttpHeaders();
 		headers.add("Content-Disposition", String.format("attachment; filename=\"%s\"", file.getName()));
 		headers.add("Cache-Control", "no-cache, no-store, must-revalidate");
 		headers.add("Pragma", "no-cache");
 		headers.add("Expires", "0");

 		ResponseEntity<Object> responseEntity = ResponseEntity.ok().headers(headers).contentLength(file.length())
 				.contentType(MediaType.parseMediaType("application/txt")).body(resource);
 		System.out.println("Excel file generated");
 		return responseEntity;

	}
	
//For transfer relationship from database to excel
	@RequestMapping(value = "/toRelationship")
	public ResponseEntity<Object> relationship(String dbName, String elementName, String tableName, String selectAtt, String srcElement, String tgtElement, String srcName, String tgtName,  String srcORtgtAtt, String srcORtgtVal, String reltype, HttpSession session) throws IOException {
		
		
//		elementName = "Business_Actor";
//		tableName = "business_actor";
//		elementName = "Business_Role";
//		elementName = ["Business_Role", "Business_Role"];
		
			List<attributesInformation> attributeDetailsList = enterpriseDAO.getAllAttribute(dbName, elementName);
//			System.out.println("Element Name: "+elementName);
//			System.out.println("Attribute Name: "+attributeDetailsList.get(6));
			String targetRelationship_Element = "";
     		String sourceRelationship_Element = "";
     		
     		for (attributesInformation x: attributeDetailsList) 
     		{
//			for (int i=0; i<attributeDetailsList.size(); i++)
//			{	
				List<String> namesArray = new ArrayList<String>();
				int namesArrLength = namesArray.size();
 		    	String relType = x.getRelationship();
 		    	String row_name =  x.getElementName();
// 		    	String target = "+targetRelationship_Element+";
// 		    	String source = "+sourceRelationship_Element+";
			
				if (x.getTargetRelationship_Element() == "N/A")
				{
					String target = x.getTargetRelationship_Element();
	 		    	String source = x.getSourceRelationship_Element();
					System.out.println("Source_data: "+x.getSourceRelationship_Element());
//					System.out.println("Target_data: "+attributeDetailsList.get(i).getTargetRelationship_Element());
					List<String> relationship = enterpriseDAO.ListForRel(dbName,"Destination_Attribute_Value", source, target, "Source_Attribute_Value", row_name, relType);
		        	System.out.println("Target Data: "+relationship);
				}
				else if (x.getSourceRelationship_Element() == "N/A")
				{
					String target = x.getTargetRelationship_Element();
	 		    	String source = x.getSourceRelationship_Element();
					System.out.println("Target_data: "+x.getTargetRelationship_Element());
					List<String> relationship = enterpriseDAO.ListForRel(dbName,"Destination_Attribute_Value", source, target, "Source_Attribute_Value", row_name, relType);
		        	System.out.println("Target Data: "+relationship);
				}
				else
				{
					String target = x.getTargetRelationship_Element();
	 		    	String source = x.getSourceRelationship_Element();
					System.out.println("Target_data: "+x.getTargetRelationship_Element());
					List<String> relationship = enterpriseDAO.ListForRel(dbName,"Destination_Attribute_Value", source, target, "Source_Attribute_Value", row_name, relType);
		        	System.out.println("Target Data: "+relationship);
					
	}
}
			
			

			
//		List<ModelRelationship> relationship = enterpriseDAO.listRel(dbName,  selectAtt,  srcElement,  tgtElement, srcORtgtAtt,  srcORtgtVal,  reltype );
//		System.out.println("rel_Array: "+relationship);
//		System.out.println("Data Type: "+relationship.getClass().getSimpleName());

		
// 		Path
		String path = session.getServletContext().getRealPath("/");
		String FILE_NAME = path + "/";
		FILE_NAME += "export.xlsx";
//		FILE_NAME += "amf1_template.xlsx";
		

		XSSFWorkbook workbook = new XSSFWorkbook();
		
		
		XSSFSheet spreadsheet = workbook.createSheet("Meta Model");
//		Create row
		XSSFRow row = spreadsheet.createRow(1);
		XSSFCell cell;
		

         row.createCell(6).setCellValue("SelectAtt");	
         row.getCell(6);
         
         int rowCounting = 1;
////         
//         for (ModelRelationship aRel: relationship) {
//        	 XSSFRow arow = spreadsheet.createRow(rowCounting++);
//             arow.createCell(6).setCellValue(aRel.getselectAtt());
//         }
         try {
        	 FileOutputStream outputStream = new FileOutputStream(FILE_NAME);
 			workbook.write(outputStream);
 			workbook.close();
 		} catch (FileNotFoundException e) {
 			e.printStackTrace();
 		} catch (IOException e) {
 			e.printStackTrace();
 		}
	    File file = new File(FILE_NAME);
 		InputStreamResource resource = new InputStreamResource(new FileInputStream(file));

 		HttpHeaders headers = new HttpHeaders();
 		headers.add("Content-Disposition", String.format("attachment; filename=\"%s\"", file.getName()));
 		headers.add("Cache-Control", "no-cache, no-store, must-revalidate");
 		headers.add("Pragma", "no-cache");
 		headers.add("Expires", "0");

 		ResponseEntity<Object> responseEntity = ResponseEntity.ok().headers(headers).contentLength(file.length())
 				.contentType(MediaType.parseMediaType("application/txt")).body(resource);
 		System.out.println("Excel file generated");
 		return responseEntity;
	}
	
	public static void setTimeout(Runnable runnable, int delay){
	    new Thread(() -> {
	        try {
	            Thread.sleep(delay);
	            runnable.run();
	        }
	        catch (Exception e){
	            System.err.println(e);
	        }
	    }).start();
	}

//	@RequestMapping(value = "/explorer_rtl")
//	public ModelAndView explorer_rtl(ModelAndView model) {
//		return new ModelAndView("explorer_rtl");
//	}
	@RequestMapping(value = "/lang=rtl", method = RequestMethod.GET)
	public ModelAndView explorer_rtl(ModelAndView model, HttpSession session) throws IOException {
		String path = session.getServletContext().getRealPath("/");
		String[] splitString = path.split("\\.metadata");
//		Locale locale = LocaleContextHolder.getLocale();	
		Locale locale = new Locale("ar");
		
//		For Local
		String filePath = splitString[0] + remainingString;
		FileReader reader=new FileReader(filePath+"\\\\messages_"+locale+".properties");
		
//		For Online
//		FileReader reader=new FileReader(path+"\\\\messages_"+locale+".properties");
//		
//		String path = session.getServletContext().getRealPath("/");
//		FileReader reader=new FileReader(path+"messages_en.properties");  
	    Properties p=new Properties();  
	    p.load(reader);   
	    HashMap<String, String> messages_data=new HashMap<String, String>();
	    Set<Object> keys = p.keySet();
	    for(Object k:keys){
	        String key=(String) k;
	        String value=p.getProperty(key);
	        messages_data.put(key, value);
	    }
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			username = userDetail.getUsername();
		}
	    List<net.lt.eaze.model.userprofile> getuserprofiledetails = enterpriseDAO.getuserprofiledetails(username);
		model.addObject("userProfileDetials", getuserprofiledetails.get(0));
//		model.setViewName("organizationalPortal");
	    model.addObject("messages_data",messages_data);
		model.setViewName("explorer_rtl");
		return model;
	}
	
	@RequestMapping(value = "/getPropertiesDictionary", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, String> getPropertiesDictionary(HttpSession session) throws IOException{
		String path = session.getServletContext().getRealPath("/");
		String[] splitString = path.split("\\.metadata");
		Locale locale = LocaleContextHolder.getLocale();
//		Locale locale = new Locale("en");
		
//		For Local
		String filePath = splitString[0] + remainingString;
		FileReader reader=new FileReader(filePath+"\\\\messages_"+locale+".properties");
		
//		For Online
//		FileReader reader=new FileReader(path+"\\\\messages_"+locale+".properties");
	      
	    Properties p=new Properties();  
	    p.load(reader);   
	    HashMap<String, String> messages_data=new HashMap<String, String>();
	    Set<Object> keys = p.keySet();
	    for(Object k:keys){
	        String key=(String) k;
	        String value=p.getProperty(key);
	        messages_data.put(key, value);
	    }
		return messages_data;
	}

	@RequestMapping(value = "/getPropertiesDictionaryArabic", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, String> getPropertiesDictionaryArabic(HttpSession session) throws IOException{
		String path = session.getServletContext().getRealPath("/");
		String[] splitString = path.split("\\.metadata");
//		Locale locale = LocaleContextHolder.getLocale();
		Locale locale = new Locale("ar");
		
//		For Local
		String filePath = splitString[0] + remainingString;
		FileReader reader=new FileReader(filePath+"\\\\messages_ar.properties");
		
//		For Online
//		FileReader reader=new FileReader(path+"\\\\messages_"+locale+".properties");
	      
	    Properties p=new Properties();  
	    p.load(reader);   
	    HashMap<String, String> messages_data=new HashMap<String, String>();
	    Set<Object> keys = p.keySet();
	    for(Object k:keys){
	        String key=(String) k;
	        String value=p.getProperty(key);
	        messages_data.put(key, value);
	    }
		return messages_data;
	}
	
	@RequestMapping(value = "/lang=en", method = RequestMethod.GET)
	public ModelAndView explorer_ltr(ModelAndView model, HttpSession session) throws IOException {
		//return new ModelAndView("explorer");
		String path = session.getServletContext().getRealPath("/");
		String[] splitString = path.split("\\.metadata");
//		Locale locale = LocaleContextHolder.getLocale();
		Locale locale = new Locale("en");
		
//		For Local
		String filePath = splitString[0] + remainingString;
		FileReader reader=new FileReader(filePath+"\\\\messages_"+locale+".properties");
		
//		For Online
//		FileReader reader=new FileReader(path+"\\\\messages_"+locale+".properties");
//		
//		String path = session.getServletContext().getRealPath("/");
//		FileReader reader=new FileReader(path+"messages_en.properties");  
	    Properties p=new Properties();  
	    p.load(reader);   
	    HashMap<String, String> messages_data=new HashMap<String, String>();
	    Set<Object> keys = p.keySet();
	    for(Object k:keys){
	        String key=(String) k;
	        String value=p.getProperty(key);
	        messages_data.put(key, value);
	    }
	    model.addObject("messages_data",messages_data);
	    String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			userDetail = (UserDetails) auth.getPrincipal();
			username = userDetail.getUsername();
		}
	    List<net.lt.eaze.model.userprofile> getuserprofiledetails = enterpriseDAO.getuserprofiledetails(username);
	  	getuserprofiledetails.get(0).setUserRole("ROLE_USER");
	  	model.addObject("userProfileDetials", getuserprofiledetails.get(0));
		model.setViewName("explorer");
		return model;
	}

	
	@RequestMapping(value = "openRelationshipForm_rtl", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, ArrayList<String>> openRelationshipForm_rtl(@RequestParam String rowElement, String columnElement,String rowObject, String columnObject,String relation){

		String tableName = relation;
		String formData = "";
		String tabsDivs = "";
		String elementIcon = tableName.replaceAll("\\s+", "-").replaceAll("_+", "-").toLowerCase() + ".svg";
		tableName = tableName.replaceAll("_", " ");
		String element_name = tableName;
		
		String previousPageTitle = "";
		tableName = tableName.replaceAll("\\s+", "_");
		
		List<attributesInformationModel> attributeDetailsList = enterpriseDAO.getAllAttributeDetails(dbName,tableName);
		List<String> allActualValues = new ArrayList<String>();
		List<String> allIds = new ArrayList<String>();
		List<String> row_id = new ArrayList<String>();
		List<String> row_name = new ArrayList<String>();
		List<String> checkboxIds = new ArrayList<String>();
		List<String> CurrenttabID_list = new ArrayList<String>();
		List<String> AllRelRowIDs = new ArrayList<String>();
		List<String> editButtonId = new ArrayList<String>();
		List<String> object_name_id = new ArrayList<String>();
		List<String> relationsClassList = new ArrayList<String>();
		List<String> AllRelTableIDs = new ArrayList<String>();
		

		previousPageTitle = "";
		String previousGroup = "";
		String attributeType = "";
		String targetRelationship_Element = "";
		String sourceRelationship_Element = "";
		String actualAttribute = "";
		String isGrouped = "";
		String groupStyle = "";
		String groupCaption = "";
		String attributeFormat = "";
		String pageNumber = "";
		String pageTitle = "";
		String isPageGrouped = "";
		String groupPageTitle = "";
		String groupPageID = "";
		String allowableValues = "";
		String attributeValue = "";
		String attributeTip = "";
		String bidirectionRelationshipPair = "";
		String relElement = "";
		String maximumNumberofObjectOccurrence = "";
		String inputTagId = "";
		String relationsClass = tableName+"_Relationship";
		relationsClassList.add(relationsClass);
		boolean relationshipTabCreated = false;
		List<String> currentGroupRelElement = new ArrayList<String>();
		String sharedInputString = "";
		int sharedInputsCreated = 0;
		
		
		int indexOfNext = 1;
		String CurrenttabID = tabID + tabsID_count++;
		CurrenttabID_list.add(CurrenttabID);
		tabsDivs += "<div id=\"" + CurrenttabID + "\">";
		tabsDivs += "<ul>";
		List<String> selfGeneratedValue = enterpriseDAO.getSelfGeneratedForGivenAttribute(dbName, tableName, "Name");
		List<String> FROM_selfGeneratedValue = enterpriseDAO.getSelfGeneratedForGivenAttribute(dbName, tableName, "From");
		List<String> TO_selfGeneratedValue = enterpriseDAO.getSelfGeneratedForGivenAttribute(dbName, tableName, "To");
		row_name = enterpriseDAO.getRelTableData(dbName,tableName,FROM_selfGeneratedValue.get(0),TO_selfGeneratedValue.get(0),rowObject,columnObject,selfGeneratedValue.get(0));
		List<String> last_time_updated = enterpriseDAO.getRowWithCondition(dbName, tableName, "last_time_updated", "ATT_01", row_name.get(0));
		formData += "<form id=\'"+CurrenttabID+"'\">";
		formData += "<div style=\"width: 100%\">";
		formData += "<div style=\"float: left\">";
		formData += "<button id=\"btnedit"+tabsID_count+"\" disabled=\"\" class=\"btn btn-Submit  submit-data\" type=\"button\"><span class=\"fa fa-floppy-o fa-lg\" aria-hidden=\"true\"></span></button>";
		formData += "</div>";
		formData += "<div style=\"float: right\">";
		formData += "&nbsp;&nbsp;<label style=\"font-size:18px\"> ["+element_name+"] </label>";
		object_name_id.add("object_name_"+tabsID_count);
		formData += "&nbsp;<label title=\""+row_name.get(0)+"\" id= \"object_name_"+tabsID_count+"\" style=\"font-size:18px\"> "+row_name.get(0)+" </label>";
		formData +="&nbsp;&nbsp;<img style=\"width:30px; height:30px\" draggable=\"false\" src=\"resources/js/examples/editors/images/images1/"+elementIcon+"\">";

		
		formData += "</div>";

		formData += "</div>";
		editButtonId.add("btnedit"+tabsID_count);
		int loopSize = attributeDetailsList.size();
		
//		for (attributesInformationModel attributeDetails : attributeDetailsList) {
		for(int i=0;i<loopSize;i++) {
			attributesInformationModel attributeDetails = attributeDetailsList.get(i);
			String att_name = attributeDetails.getActualAttribute();
			if (!(att_name.equals("id"))) {
				attributesInformationModel attributeDetailsForNext = attributeDetailsList.get(indexOfNext);
				List<String> x = new ArrayList<String>();
				String a = attributeDetails.getSelfGeneratedAttribute();
				attributeType = attributeDetails.getAttributeType();
				targetRelationship_Element = attributeDetails.getTargetRelationship_Element();
				sourceRelationship_Element = attributeDetails.getSourceRelationship_Element();
				actualAttribute = attributeDetails.getActualAttribute();
				isGrouped = attributeDetails.getIsGrouped();
				groupStyle = attributeDetails.getGroupStyle();
				groupCaption = attributeDetails.getGroupCaption();
				attributeFormat = attributeDetails.getAttributeFormat();
				pageNumber = attributeDetails.getPageNumber();
				pageTitle = attributeDetails.getPageTitle();
				isPageGrouped = attributeDetails.getIsPageGrouped();
				groupPageTitle = attributeDetails.getGroupPageTitle();
				groupPageID = attributeDetails.getGroupPageID();
				allowableValues = attributeDetails.getAllowableValues();
				attributeTip = attributeDetails.getAttributeTip();
				bidirectionRelationshipPair = attributeDetails.getBidirectionRelationshipPair();

				if (targetRelationship_Element.equals("N/A")) {
					relElement = sourceRelationship_Element;
				} else {
					relElement = targetRelationship_Element;
				}

				if (allActualValues.contains(actualAttribute)) {
					int arr_size = allActualValues.size();
					Map<String, Integer> frequency = methods.findRepeating(allActualValues, arr_size);
					for (Entry<String, Integer> entry : frequency.entrySet()) {
						if (actualAttribute.equals(entry.getKey()))
							attributeValue = actualAttribute + "_" + entry.getValue();
					}
				} else
					attributeValue = actualAttribute;
				attributeValue = attributeValue.replaceAll("[\\(\\)\\[\\]\\{\\}]", "_");
				attributeValue = attributeValue.replaceAll("\\/", "_");
				


				if (!(previousPageTitle.equals(pageTitle))) {
					String pageClass = "";
					String style = "";
					if(groupPageTitle.equals("Relationship")) {
						pageClass = "class=\""+relationsClass+"\"";
						style = "style=\"margin-left:20px;\"";
						//tabsDivs += "<li><a title=\"Relationships\" class=\"fullTab\" onclick=\"show_or_hide_relationships=('"+element_name+"_Relationship')\">Relationships</a></li>";
						if(relationshipTabCreated == false) {
							tabsDivs += "<li><a title=\""+pageTitle+"\" class=\"fullTab "+groupPageTitle+"\" onclick=\"show_or_hide_relationships('"+relationsClass+"');\"href=\"javascript:show_or_hide_relationships();\">Relationships&nbsp&nbsp<i id=\"arrowToggle\" class=\"arrow down\"></i></a></li>";	
							relationshipTabCreated = true;
						}
					}
					formData += "<div id=\"tabs-" + pageNumber.replace(".0", "") + "\">";

					tabsDivs += "<li "+pageClass+style+"><a title=\""+pageTitle+"\" class=\"fullTab\" href=\"#tabs-" + pageNumber.replace(".0", "") + "\">"
							+ pageTitle + "</a></li>";
				}
				String temp = "";
				if(!groupStyle.equals("Shared")) {
					temp = "<div class=\"form-group\">";
					allActualValues.add(actualAttribute);
				}
				if(groupStyle.equals("Shared") &&  (attributeType.equals("Relationship")) ) {
					maximumNumberofObjectOccurrence = attributeDetails.getMaximumNumberofObjectOccurrence();
					currentGroupRelElement.add(relElement+"---"+maximumNumberofObjectOccurrence);
					String currentRelType =  attributeDetails.getRelationship();
					List<String> currentRelTableID = new ArrayList<String>();
					if(targetRelationship_Element.equals("N/A")) {
						relElement = sourceRelationship_Element;
						x = enterpriseDAO.getRelValueFromRelTable(dbName,sourceRelationship_Element.replaceAll("\\s+", "_"),tableName,"Source_Attribute_Value",row_name.get(0),"Bidirection_Relationship_Pair",bidirectionRelationshipPair,"Destination_Attribute_Value");
//						currentRelTableID = enterpriseDAO.getRelTableIDs(dbName, currentRelType, row_name.get(0), x.);
						List<String> RelRowID = enterpriseDAO.getRelValueFromRelTable(dbName,sourceRelationship_Element.replaceAll("\\s+", "_"),tableName,"Source_Attribute_Value",row_name.get(0),"Bidirection_Relationship_Pair",bidirectionRelationshipPair,"id");
						AllRelRowIDs.addAll(RelRowID);
					}
					else {
						relElement = targetRelationship_Element;
						x = enterpriseDAO.getRelValueFromRelTable(dbName,tableName,targetRelationship_Element.replaceAll("\\s+", "_"),"Destination_Attribute_Value",row_name.get(0),"Bidirection_Relationship_Pair",bidirectionRelationshipPair,"Source_Attribute_Value");
						List<String> RelRowID = enterpriseDAO.getRelValueFromRelTable(dbName,tableName,targetRelationship_Element.replaceAll("\\s+", "_"),"Destination_Attribute_Value",row_name.get(0),"Bidirection_Relationship_Pair",bidirectionRelationshipPair,"id");
						AllRelRowIDs.addAll(RelRowID);
					}
//					System.out.println("X= "+x);
					String relElementIcon = relElement.replaceAll(" ", "-").replaceAll("_", "-").toLowerCase() + ".svg";
					if (x.size() != 0) {
						String fromColumn = enterpriseDAO.getSelfGeneratedForGivenAttribute(dbName, currentRelType, "From").get(0);
						String toColumn = enterpriseDAO.getSelfGeneratedForGivenAttribute(dbName, currentRelType, "To").get(0);
						for (String object : x) {
							sharedInputString += "<tr><td class=\"elementIcon\" style=\"width: 5px !important\"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/js/examples/editors/images/images1/"+relElementIcon+"\" ></td><td class=\"object_name_form\">"+object+"</td></tr>";
							sharedInputsCreated++;
							if(targetRelationship_Element.equals("N/A")) {
								System.out.println("if");
								currentRelTableID = enterpriseDAO.getRelTableIDs(dbName, currentRelType,fromColumn,toColumn, object, row_name.get(0));
							}
							else {
								System.out.println("else");
								currentRelTableID = enterpriseDAO.getRelTableIDs(dbName, currentRelType,fromColumn,toColumn, row_name.get(0), object);
							}
							AllRelTableIDs.addAll(currentRelTableID);
						}
					}
					
					
					if (!(groupCaption.equals(attributeDetailsForNext.getGroupCaption())) || i == loopSize - 1) {
						allActualValues.add(groupCaption);
						inputTagId = groupCaption.replaceAll("\\s+", "_").replace('?', '_')+"21"+tabsID_count;
						allIds.add(inputTagId);
//						System.out.println("Group Relationship Elements: "+currentGroupRelElement);
						maximumNumberofObjectOccurrence = attributeDetails.getMaximumNumberofObjectOccurrence();
						temp += "<div align=\"right\"><i onclick=\"showRelationsObjects('"+tableName+"','"+row_name.get(0)+"','"+currentGroupRelElement +"', '"
								+ inputTagId+"','"+maximumNumberofObjectOccurrence+"', 'btnedit"+tabsID_count+"');\" class=\"fa fa-plus-square plus_and_info_button\" > </i></div>";
						temp += "<table id=\""+inputTagId+"\" class=\"table table-striped table-bordered\" style=\"width:100%\">";
						temp += "<thead class=\"formTablehead\"> <tr> <th style=\"width: 5px !important\">Type</th> <th>Name</th></tr> </thead>";
						/*
						 * temp += "<tbody class=\"table_data\">" +
						 * "<tr><td class = \"first_td\"></td><td class=\"object_name_form\"></td></tr>"
						 * + "</tbody>";
						 */
						temp += "<tbody class=\"table_data\">";
						if(!sharedInputString.equals("")) {
							temp += sharedInputString;
							for(int j=0;j<4-sharedInputsCreated;j++) {
								temp += "<tr><td class = \"first_td elementIcon\"></td><td class=\"object_name_form\"></td></tr>";
							}
						}else {
							for(int j=0;j<4;j++) {
								temp += "<tr><td class = \"first_td elementIcon\"></td><td class=\"object_name_form\"></td></tr>";
							}
						}
						
						temp += "</tbody>";
						temp += "</table>";
						currentGroupRelElement.clear();
						sharedInputString = "";
						sharedInputsCreated = 0;
					}
				}else {
					inputTagId = attributeValue.replaceAll("\\s+", "_").replace('?', '_')+"21"+tabsID_count;
					allIds.add(inputTagId);
					System.out.println("actualAttribute: "+actualAttribute);
					temp += "<span style=\"float:right; \">" + actualAttribute
							+ "</span><span title=\"Information\" style=\"float:right;margin-right:5px;\"><i onclick=\"information_modal('"
							+ actualAttribute + "','" + attributeTip
							+ "')\" class=\"fa fa-info-circle plus_and_info_button\"></i></span>";
					if (attributeType.equals("Relationship")) {
						maximumNumberofObjectOccurrence = attributeDetails.getMaximumNumberofObjectOccurrence();
						if(targetRelationship_Element.equals("N/A")) {
							relElement = sourceRelationship_Element;
							x = enterpriseDAO.getRelValueFromRelTable(dbName,sourceRelationship_Element.replaceAll("\\s+", "_"),tableName,"Source_Attribute_Value",row_name.get(0),"Bidirection_Relationship_Pair",bidirectionRelationshipPair,"Destination_Attribute_Value");
							List<String> RelRowID = enterpriseDAO.getRelValueFromRelTable(dbName,sourceRelationship_Element.replaceAll("\\s+", "_"),tableName,"Source_Attribute_Value",row_name.get(0),"Bidirection_Relationship_Pair",bidirectionRelationshipPair,"id");
							AllRelRowIDs.addAll(RelRowID);
						}
						else {
							relElement = targetRelationship_Element;
							x = enterpriseDAO.getRelValueFromRelTable(dbName,tableName,targetRelationship_Element.replaceAll("\\s+", "_"),"Destination_Attribute_Value",row_name.get(0),"Bidirection_Relationship_Pair",bidirectionRelationshipPair,"Source_Attribute_Value");
							List<String> RelRowID = enterpriseDAO.getRelValueFromRelTable(dbName,tableName,targetRelationship_Element.replaceAll("\\s+", "_"),"Destination_Attribute_Value",row_name.get(0),"Bidirection_Relationship_Pair",bidirectionRelationshipPair,"id");
							AllRelRowIDs.addAll(RelRowID);
						}
						currentGroupRelElement.add(relElement+"---"+maximumNumberofObjectOccurrence);
						System.out.println("X2= "+x);
						if (x.size() == 0) {
							x.add("");
						}
						String relElementIcon = relElement.replaceAll(" ", "-").replaceAll("_", "-").toLowerCase() + ".svg";
						temp += "<div align=\"right\"><i onclick=\"showRelationsObjects('"+tableName+"','"+row_name.get(0)+"','" + currentGroupRelElement + "','"
								+ inputTagId+"','"+maximumNumberofObjectOccurrence+"', 'btnedit"+tabsID_count+"');\" class=\"fa fa-plus-square plus_and_info_button\" > </i></div>";
						//temp += "<input id=\"" + inputTagId+ "\" disabled=\"disabled\" class=\"form-control\" value=\"" + x.get(0) + "\">";
						temp += "<table id=\""+inputTagId+"\" class=\"table table-striped table-bordered\" style=\"width:100%\">";
						temp += "<thead class=\"formTablehead\"> <tr> <th style=\"width: 5px !important\">Type</th> <th>Name</th></tr> </thead>";
						temp += "<tbody class=\"table_data\">";
						int relCreated=0;
						if(x.get(0).equals("")) {
							for(int j=0;j<4;j++) {
								temp += "<tr><td class = \"first_td elementIcon\"></td><td class=\"object_name_form\"></td></tr>";
							}
						}
						else {
							for (String object : x) {
								temp += "<tr><td class=\"elementIcon\" style=\"width: 5px !important\"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/js/examples/editors/images/images1/"+relElementIcon+"\" ></td><td class=\"object_name_form\">"+object+"</td></tr>";
								relCreated++;
							}
						}
						if(relCreated<4) {
							for(int j=0;j<4-relCreated;j++) {
								temp += "<tr><td class = \"first_td elementIcon\"></td><td class=\"object_name_form\"></td></tr>";
							}
						}
						relCreated = 0;
						
						temp += "</tbody>";
						temp += "</table>";
						currentGroupRelElement.clear();
					} else {
						if (enterpriseDAO.getRelTableData(dbName,tableName,FROM_selfGeneratedValue.get(0),TO_selfGeneratedValue.get(0),rowObject,columnObject,a).size()>0){
							x = enterpriseDAO.getRelTableData(dbName,tableName,FROM_selfGeneratedValue.get(0),TO_selfGeneratedValue.get(0),rowObject,columnObject,a);
						}else {
							x.add("");
						}
						if (a.equals(selfGeneratedValue.get(0))) {
							row_name.add(x.get(0));
							row_id = enterpriseDAO.getRowWithCondition(dbName, tableName,"id",selfGeneratedValue.get(0),row_name.get(0));
						}
						if (attributeFormat.equals("List")) {
							String valuesString = allowableValues;
							String[] arrayString = new String[0];
							if (valuesString != null)
								arrayString = valuesString.split(";");
							temp += "<select class=\"form-control\" id=\""+inputTagId+ "\" >";
							//temp += "<option disabled=\"disabled\" selected> -- Select -- </option>";
							if (x.size() == 1 && x.get(0).equals("")) {
								temp += "<option disabled=\"disabled\" selected> -- Select -- </option>";
							}
							for (String val1 : arrayString) {
								if (val1.equals(x.get(0))) {
									temp += "<option selected value=\"" + val1 + "\">" + val1 + "</option>";
								} else
									temp += "<option value=\"" + val1 + "\">" + val1 + "</option>";
							}
							temp += "</select>";
						} else if (attributeFormat.equals("CheckBox")) {
							String temp2 = "";
							if (x.get(0).equals("True")) {
								temp2 = "Checked";
							}
							checkboxIds.add(inputTagId);
							temp += "&nbsp;&nbsp;&nbsp;<input id=\""+ inputTagId+"\" type=\"checkbox\" name=\"" + attributeValue + "\" style=\"margin-top:3px; float: right; margin-right: 5px;\" required=\"required\"  value=\"" + x.get(0) + "\" " + temp2 + ">";
						} else if (attributeFormat.equals("Time")) {
							temp += "<input class=\"form-control time_class\" id=\""+inputTagId+"\" type=\"time\" name=\""
									+ attributeValue + "\" required=\"required\" value=\"" + x.get(0) + "\">";
						} else if (attributeFormat.equals("Date")) {
							temp += "<input class=\"form-control date_class\" id=\""+inputTagId+ "\" type=\"date\" name=\""
									+ attributeValue + "\" required=\"required\" value=\"" + x.get(0) + "\">";
						} else if (attributeFormat.equals("Rich Text")) {
							temp += "<textarea rows=\"4\" class=\"form-control\" id=\""+inputTagId+ "\" name=\""
									+ attributeValue + "\" >" + x.get(0) + "</textarea>";
						} 
						  else if (attributeFormat.equals("Radio")) {
							temp += "&nbsp;&nbsp;&nbsp;<input type=\"radio\" id=\""+inputTagId+ "\" name=\""
									+ groupCaption + "\" >" + x.get(0) + "</input>";
						}
						else {
							temp += "<input class=\"form-control\" id=\""+inputTagId+"\" type=\"text\" name=\""
									+ attributeValue + "\" required=\"required\" value=\"" + x.get(0) + "\">";
						}
					}
				}
				if(!groupStyle.equals("Shared"))
					temp += "</div>";
				if (isGrouped.equals("Yes")) {
					if (!(previousGroup.equals(groupCaption))) {
						if(!groupStyle.equals("Shared")) {
							formData += "<div class=\"border_class\">";
							formData += "<h3>" + groupCaption + "</h3>";
						}
						else {
							formData += "<div class=\"form-group\">";
							formData += "<span style=\"float:left;\">" + groupCaption + "</span>";
						}
					}
					formData += temp;
					if (!(groupCaption.equals(attributeDetailsForNext.getGroupCaption())) || i == loopSize - 1) {
						if(!groupStyle.equals("Shared"))
							formData += "</div>";
						else 
							formData += "</div>";
					}
					previousGroup = groupCaption;
				} else {
					formData += temp;
				}
				if (!(pageTitle.equals(attributeDetailsForNext.getPageTitle())) || i == loopSize - 1) {
					formData += "</div>";
				}
				previousPageTitle = pageTitle;
			}
			if (indexOfNext < attributeDetailsList.size() - 1)
				indexOfNext++;
		}
		formData += "</form>";
		formData += "</div>";

		tabsDivs += "</ul>";
		formData = tabsDivs + formData;

		HashMap<String, ArrayList<String>> allData = new HashMap<String, ArrayList<String>>();

		List<String> formData1 = new ArrayList<String>();
		formData1.add(formData);
		
		allData.put("formData", (ArrayList<String>) formData1);
		allData.put("checkboxIds", (ArrayList<String>) checkboxIds);
		allData.put("attributeNames", (ArrayList<String>) allActualValues);
		allData.put("allIds", (ArrayList<String>) allIds);
		allData.put("row_id", (ArrayList<String>) row_id);
		allData.put("CurrenttabID", (ArrayList<String>) CurrenttabID_list);
		allData.put("row_name", (ArrayList<String>) row_name);
		allData.put("AllRelRowIDs", (ArrayList<String>) AllRelRowIDs);
		allData.put("editButtonId", (ArrayList<String>) editButtonId);
		allData.put("object_name_id", (ArrayList<String>) object_name_id);
		allData.put("relationsClassList", (ArrayList<String>) relationsClassList);
		allData.put("last_time_updated", (ArrayList<String>) last_time_updated);
		allData.put("AllRelTableIDs", (ArrayList<String>) AllRelTableIDs);

		return allData;
	
	}
	// Form for Right to left ends here
	
	@RequestMapping(value = "organizational_portal", method = RequestMethod.GET)
	public ModelAndView organizational_portal(ModelAndView model) {
		if (isUserLoggedIn()) {
			dbName = unif.getDbName();
			model.addObject("dbName", dbName);
			model.setViewName("organizational_portal");
		} else {
			model.setViewName("login");
		}
		return model;
	}
		
	@RequestMapping(value = "/addTabIntoDatabase", method = RequestMethod.POST)
	public @ResponseBody int addTabIntoDatabase(@RequestParam String tab_title, String containerid) {

		dbName = unif.getDbName();
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			userDetail = (UserDetails) auth.getPrincipal();
			username = userDetail.getUsername();
		}
		int getResponse = enterpriseDAO.createTableForTab(dbName, tab_title, username, containerid);
		return getResponse;
//		return new ModelAndView("redirect:/");
	}

	@RequestMapping(value = "/getUserRoles", method = RequestMethod.POST)
	public @ResponseBody roleDetails getUserRoles(HttpSession session){
		roleDetails role_details = (roleDetails) session.getAttribute("role_details");
		System.out.println(role_details);
		return role_details;
	}
	
//	@RequestMapping(value = "/getTimeLineData", method = RequestMethod.POST)
//	public @ResponseBody List<timeLineGraph> getTimeLineData(){
//		String database = "graphs";
//		String tableName = "timeline_graph"; 
//		List<timeLineGraph> TimeLine = enterpriseDAO.getTimeLineGraph(database, tableName);
//		for (timeLineGraph i:TimeLine)
//		{
//			System.out.println("TimeLine: "+i);
//		}
//		return TimeLine;
//	}
	
	@RequestMapping(value = "/mapToXML", method = RequestMethod.POST)
	public @ResponseBody String mapToXML(String roadMap_name, String ElementVal, String StartActDate, String EndActDate, String legendData,String getcompanyName,int getParentID){
		String database = "graphs";
		String tableName = "roadmap"; 
		System.out.println("roadmap_insert");
		String RoadmapId = enterpriseDAO.roadMap_val(database, tableName, roadMap_name, ElementVal, StartActDate, EndActDate, legendData,getcompanyName,getParentID);
		System.out.println("Roadmap data inserted"+RoadmapId);
		return RoadmapId;
	}
	
	@RequestMapping(value = "/getRoadMapNames", method = RequestMethod.GET)
	public @ResponseBody List<timeLineGraph> getRoadMapNames(int id, String roadMapName){
//		System.out.println("roadmap_dbname: "+dbName);
		String database = "graphs";
		String tableName = "roadmap"; 
		List<timeLineGraph> TimeLine = enterpriseDAO.getroadMapGraph(database, tableName, id, roadMapName);
		System.out.println("01202"+TimeLine);
		for (timeLineGraph i:TimeLine)
		{
			System.out.println("TimeLine: "+i.getStartDate());
		}
		return TimeLine;
	}
	
	@RequestMapping(value = "/getTimeLineData", method = RequestMethod.POST)
	public @ResponseBody List<timeLineGraph> getTimeLineData(String ElementVal, String StartActDate, String EndActDate, String legendData){
		System.out.println("database:timeline "+dbName);
		String database = dbName;
		String tableName = "timeline_graph"; 
		List<timeLineGraph> TimeLine = enterpriseDAO.getTimeLineGraph(database, tableName, ElementVal, StartActDate, EndActDate, legendData);
		System.out.println("01202"+TimeLine);
		for (timeLineGraph i:TimeLine)
		{
			System.out.println("TimeLine: "+i);
		}
		return TimeLine;
	}
	
	@RequestMapping(value = "/getListLegendValues", method = RequestMethod.POST)
	public @ResponseBody List<String> getListLegendValues(String ElementVal, String legendData){
		System.out.println("dbName-00"+dbName);
		String tableName = "attributes_information"; 
		ElementVal = ElementVal.replaceAll("\\s+", "_");
		List<String> LegendData = enterpriseDAO.getListLegendValues(dbName, tableName, ElementVal, legendData);
		System.out.println("Check legened class: "+LegendData);
		System.out.println("LegendData: "+LegendData.getClass().getName());
		return LegendData;
	}
	
	@RequestMapping(value = "/getLegendValues", method = RequestMethod.POST)
	public @ResponseBody List<String> getLegendValues(String ElementVal, String LegendVal){
		
		String tableName = "attributes_information"; 
		List<String> LegendData = enterpriseDAO.getLegendValues(dbName, tableName, ElementVal, LegendVal);
		System.out.println("Check legened class: "+LegendData);
		System.out.println("LegendData: "+LegendData.getClass().getName());
		return LegendData;
	}
	
	@RequestMapping(value = "/saveChart", method = RequestMethod.POST)
	public @ResponseBody String saveChart(@RequestBody Map<String, String> saveChart){
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			username = userDetail.getUsername();
		}
		int saveChartStatus = enterpriseDAO.saveChart(saveChart, username);
		
		if(saveChartStatus == 0) {
			return "0";
		}else {
		return "1";
	}
	
	}
	
//	@RequestMapping(value = "/saveChart", method = RequestMethod.POST)
//	public @ResponseBody String saveChart(String saveChart){
//		System.out.println(saveChart);
////		enterpriseDAO.saveChart(saveChart);
//		return "";
//	}
	
	@RequestMapping(value = "/getChartDataFromDivID", method = RequestMethod.GET)
	public @ResponseBody List<chartsModel> getChartDataFromDivID(String chart_div_id, HttpSession session){
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			username = userDetail.getUsername();
		}
		String company_name = (String) session.getAttribute("company_name");
		List<chartsModel> getChartDataFromDivID = enterpriseDAO.getChartDataFromDivID(chart_div_id,username, company_name);
//		if(getChartDataFromDivID.size()!=0) {
//			chartsModel chartData =  getChartDataFromDivID.get(0);
			return getChartDataFromDivID;
//		}
//		else {
//			return null;
//		}
	}
	
	@RequestMapping(value = "/getChartsData", method = RequestMethod.GET)
	public @ResponseBody List<chartsModel> getChartsData(){
		List<chartsModel> getChartData = enterpriseDAO.getChartData();
		System.out.println("getChartData"+getChartData);
		if(getChartData.size()!=0) {
//			chartsModel chartData =  getChartData;
			return getChartData;
		}
		else {
			return null;
		}
	}
	
	@RequestMapping(value = "/deleteChartDataFromDivID", method = RequestMethod.GET)
	public @ResponseBody int deleteChartDataFromDivID(String chart_div_id,HttpSession session){
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			username = userDetail.getUsername();
		}
//		List<String> userRole = enterpriseDAO.getUserRole(username);
//		System.out.println("userRole: "+userRole);
		roleDetails role_details = (roleDetails) session.getAttribute("role_details");
		String userRoleStr = role_details.getUser_role();
		System.out.println("role_details: "+role_details);
		int getChartDataFromDivID = 0;
		if(userRoleStr.equals("ROLE_ADMIN")) {	
			getChartDataFromDivID = enterpriseDAO.deleteChartDataFromDivID(chart_div_id, username, userRoleStr);
		}
		else {
			getChartDataFromDivID = enterpriseDAO.deleteChartDataFromDivID(chart_div_id, username, userRoleStr);
		}
		
		
		return getChartDataFromDivID;
	}
	
	@RequestMapping(value = "/linechart", method = RequestMethod.GET)
	public ModelAndView linechart(ModelAndView model) {
		model.setViewName("linechart");
		return model;
	}
	@RequestMapping(value = "/userprofile", method = RequestMethod.GET)
	public ModelAndView userprofile(ModelAndView model) {
		
		Collection<? extends GrantedAuthority> userRole = null;
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			userDetail = (UserDetails) auth.getPrincipal();
			userRole = userDetail.getAuthorities();
			username = userDetail.getUsername();
		}
		
		List<net.lt.eaze.model.userprofile> getuserprofiledetails = enterpriseDAO.getuserprofiledetails(username);
		String userRoleStr = userRole.toArray()[0].toString();
		if(userRoleStr.equals("ROLE_ADMIN")) {
			userRoleStr = "Repository Admin";
		}
		else if(userRoleStr.equals("ROLE_USER")) {
			
			userRoleStr = "Architect";
		}
		getuserprofiledetails.get(0).setUserRole(userRoleStr);
		System.out.println(userRoleStr);
		model.addObject("userProfileDetials", getuserprofiledetails.get(0));
		model.setViewName("userprofile");
		return model;
	}
	@RequestMapping(value = "/updateUserProfile", method = RequestMethod.POST)
//	public @ResponseBody String updateUserProfile(String userFullName,String emailAddress,String cellNumber,String phoneNumber,String extension){
	public @ResponseBody String updateUserProfile(String emailAddress,String cellNumber,String phoneNumber,String extension){

		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			username = userDetail.getUsername();
		}
		
//		enterpriseDAO.updateuserprofiledetails(username, userFullName, emailAddress, cellNumber, phoneNumber, extension);
		enterpriseDAO.updateuserprofiledetails(username, emailAddress, cellNumber, phoneNumber, extension);
		return null;
	}
	
//	@RequestMapping(value = "/home", method = RequestMethod.GET)
//	public ModelAndView home(ModelAndView model) {
//		Collection<? extends GrantedAuthority> userRole = null;
//		String username = "";
//		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//		if (!(auth instanceof AnonymousAuthenticationToken)) {
//			UserDetails userDetail = (UserDetails) auth.getPrincipal();
//			userDetail = (UserDetails) auth.getPrincipal();
//			userRole = userDetail.getAuthorities();
//			username = userDetail.getUsername();
//		}
//		
//		List<net.lt.eaze.model.userprofile> getuserprofiledetails = enterpriseDAO.getuserprofiledetails(username);
//		String userRoleStr = userRole.toArray()[0].toString();
//		if(userRoleStr.equals("ROLE_ADMIN")) {
//			userRoleStr = "Repository Admin";
//		}
//		else if(userRoleStr.equals("ROLE_USER")) {
//			
//			userRoleStr = "Architect";
//		}
//		getuserprofiledetails.get(0).setUserRole(userRoleStr);
//		System.out.println(userRoleStr);
//		model.addObject("userProfileDetials", getuserprofiledetails.get(0));
//		model.setViewName("home");
//		return model;
//	}
	
	@RequestMapping(value = "/sidebar", method = RequestMethod.GET)
	public ModelAndView sidebar(ModelAndView model) {
		model.setViewName("sidebar");
		return model;
	}
	
	@RequestMapping(value = "/sidebar2", method = RequestMethod.GET)
	public ModelAndView sidebar2(ModelAndView model) {
		model.setViewName("sidebar2");
		return model;
	}
	@RequestMapping(value = "/activateuser", method = RequestMethod.GET)
	public ModelAndView activateuser(ModelAndView model) {
		model.setViewName("activateuser");
		return model;
	}
	@RequestMapping(value = "/updateTextFromFile", method = RequestMethod.POST)
	public @ResponseBody int insertTextIntoDatabase(HttpSession session, String elementName, String changeTextValue) throws IOException{
		String path = session.getServletContext().getRealPath("/");
		String[] splitString = path.split("\\.metadata");
		Locale locale = LocaleContextHolder.getLocale();	
		
//		For Local
		String filePath = splitString[0] + remainingString;
		File folder = new File(filePath);
		File[] listOfFiles = folder.listFiles();
	    Properties prop = new Properties();
	    OutputStream output = null;

	    boolean isWhitespace = elementName.matches(".*\\s+.*");
	    try {
	        //load the file into properties object
	        FileInputStream input = new FileInputStream(filePath+"\\messages_"+locale+".properties");    
	        prop.load(input);
	        input.close();

	        // set the properties value
	        output = new FileOutputStream(filePath+"\\messages_"+locale+".properties");
	        if(isWhitespace != true) {
	        	prop.setProperty(elementName.replaceAll("---", "_"), changeTextValue);
	        	prop.store(output, null);
	        	return 1;
	        }
	        else {
	        	prop.setProperty(elementName.replaceAll(" ", "_"), changeTextValue);
	        	prop.store(output, null);
	        	return 2;
	        }
	        
	    } catch (IOException io) {
	        io.printStackTrace();
	    } finally {
	        if (output != null) {
	            try {
	                output.close();
	            } catch (IOException e) {
	                e.printStackTrace();
	            }
	        }

	    }
	    
//		For Online
//		File folder = new File(path);
//		File[] listOfFiles = folder.listFiles();
//	    Properties prop = new Properties();
//	    OutputStream output = null;
//
//	    boolean isWhitespace = elementName.matches(".*\\s+.*");
//	    try {
//	        //load the file into properties object
//	        FileInputStream input = new FileInputStream(path+"\\messages_"+locale+".properties");    
//	        prop.load(input);
//	        input.close();
//
//	        // set the properties value
//	        output = new FileOutputStream(path+"\\messages_"+locale+".properties");
//	        if(isWhitespace != true) {
//	        	prop.setProperty(elementName.replaceAll("---", "_"), changeTextValue);
//	        	prop.store(output, null);
//	        	return 1;
//	        }
//	        else {
//	        	prop.setProperty(elementName.replaceAll(" ", "_"), changeTextValue);
//	        	prop.store(output, null);
//	        	return 2;
//	        }
//	        
//	    } catch (IOException io) {
//	        io.printStackTrace();
//	    } finally {
//	        if (output != null) {
//	            try {
//	                output.close();
//	            } catch (IOException e) {
//	                e.printStackTrace();
//	            }
//	        }
//
//	    }
	    return 0;
		
	}

	
	@RequestMapping(value = "/saveThemeName", method = RequestMethod.POST)
	public @ResponseBody int saveThemeName(String themeName){
		System.out.println(themeName);
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			userDetail = (UserDetails) auth.getPrincipal();
			username = userDetail.getUsername();
		}
		return enterpriseDAO.updateTheme(username,themeName);
	}
	
	@RequestMapping(value = "/getThemeName", method = RequestMethod.GET)
	public @ResponseBody String getThemeName(){
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			userDetail = (UserDetails) auth.getPrincipal();
			username = userDetail.getUsername();
		}
		return enterpriseDAO.getTheme(username).get(0);
	}
	
	@RequestMapping(value = "/deleteRelationshipFromGraph", method = RequestMethod.GET)
	public @ResponseBody int deleteRelationshipFromGraph(String sourceElementName,String targetElementName,String source,String target,String relation){
		
		sourceElementName = sourceElementName.replaceAll("\\s+", "_");
		targetElementName = targetElementName.replaceAll("\\s+", "_");
		List<Relationships> relationshipsList = unif.getRelations();
		List<attributesInformationModel> attributeDetails = enterpriseDAO.getAttributeDetails_2(dbName,sourceElementName,targetElementName,"Relationship_Overload_Text",relation);
		String relType = "";
		if(attributeDetails.size()>0)
			relType = attributeDetails.get(0).getRelationship();
		else {
			for(Relationships r:relationshipsList) {
				if(relation.equals(r.getFrom_to_ToInterpretation())) {
					relType = r.getRelationshipName();
					break;
				}
			}
		}
		
		System.out.println(sourceElementName+targetElementName+source+target+relType);
		
		return enterpriseDAO.deleteRelationshipFromGraph(dbName, sourceElementName, targetElementName, source, target, relType);
	}
	
	@RequestMapping(value = "/getTabsFromDB", method = RequestMethod.GET)
	public @ResponseBody List<net.lt.eaze.model.organizationalPortal> getTabsFromDB(HttpSession session){
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			userDetail = (UserDetails) auth.getPrincipal();
			username = userDetail.getUsername();
		}
		String company_name = (String) session.getAttribute("company_name");
		List<net.lt.eaze.model.organizationalPortal> tab_details = enterpriseDAO.getTabsFromDB(username,company_name);
		return tab_details;
	}
	
	@RequestMapping(value = "/deleteTabsAndRecordsFromDatabase", method = RequestMethod.GET)
	public @ResponseBody int deleteTabsAndRecordsFromDatabase(@RequestParam String panelId, HttpSession session){
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			userDetail = (UserDetails) auth.getPrincipal();
			username = userDetail.getUsername();
		}		
		String company_name = (String) session.getAttribute("company_name");
		roleDetails role_details = (roleDetails) session.getAttribute("role_details");
		String userRoleStr = role_details.getUser_role();
		int getDeleteTabsAndRecordsFromDatabase = enterpriseDAO.deleteTabsAndRecordsFromDatabase(username, panelId, company_name,userRoleStr);
		return getDeleteTabsAndRecordsFromDatabase;
	}	

	@RequestMapping(value = "/getDataForChangeHistoryMypage", method = RequestMethod.GET)
	public @ResponseBody List<ArrayList<String>> getDataForChangeHistoryMypage(@RequestParam String filterVal, String getAllData, String route){
		String username = "";
	
	int daysFilter;
	String concatWith = "##";
	
	if(filterVal.equalsIgnoreCase("Default")) {
		daysFilter = 1;
	}else {
		daysFilter = Integer.parseInt(filterVal);
	}
	
	
	Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	if (!(auth instanceof AnonymousAuthenticationToken)) {
		UserDetails userDetail = (UserDetails) auth.getPrincipal();
		userDetail = (UserDetails) auth.getPrincipal();
		username = userDetail.getUsername();
	}
	List<Element> elements = unif.getElements();
	String dbName = unif.getDbName();

	List<ArrayList<String>> myPageData = new ArrayList<ArrayList<String>>();
	
	for(int i=0; i<elements.size(); i++) {
	
		String elementName = elements.get(i).getElementName();
		String tableName = elementName.replaceAll("\\s+", "_");

			List<ArrayList<String>> data = new ArrayList<ArrayList<String>>();
			
		List<String> getColumnNameForChangeHistoryAndTabular = enterpriseDAO.getSelfGeneratedColumnNameForChangeHistory(dbName,elementName.replaceAll("\\s+", "_"));
		List<String> selfGeneratedValueOfNameColumn =  enterpriseDAO.selfGeneratedValueOfNameColumn(dbName, tableName);
		String NameSGV = selfGeneratedValueOfNameColumn.get(0).toString();
		
		// System.out.println(getColumnNameForChangeHistoryAndTabular);
		// System.out.println(NameSGV);
		getColumnNameForChangeHistoryAndTabular.add(0, NameSGV);
		getColumnNameForChangeHistoryAndTabular.add("status");
			getColumnNameForChangeHistoryAndTabular.add("owner_of_the_object");
		// System.out.println(getColumnNameForChangeHistoryAndTabular);
		
			// List<ArrayList<String>> data = enterpriseDAO.getCompleteTableColumnsBySGVArray(dbName, tableName, getColumnNameForChangeHistoryAndTabular);
			
			if(getAllData.equals("true") && !route.equals("refresh")) {
				 print("true");
				data = enterpriseDAO.getCompleteTableColumnsBySGVArrayForMyPage(dbName, tableName, getColumnNameForChangeHistoryAndTabular, "allUsers");
			}else {
				 print("false: getting data for current user i.e: "+ username);
				data = enterpriseDAO.getCompleteTableColumnsBySGVArrayForMyPage(dbName, tableName, getColumnNameForChangeHistoryAndTabular, username);
			}
		
		// System.out.println(data);
		
		for(int j=0; j<data.size(); j++) {
			List<String> currentRow = data.get(j);
			String concatDate = currentRow.get(3);

			
			String[] splitDateArray = concatDate.split(concatWith);
			
			if(splitDateArray.length > 0) {
			
				String createdDate = splitDateArray[0];
				String lastActionDate = splitDateArray[splitDateArray.length-1];
				
				String lastActionBy = "";
				
				if(!lastActionDate.equals("")) {
					LocalDate from = LocalDate.parse(lastActionDate);
					LocalDate currentDate = LocalDate.now(); // Create a date object

					List<String> temp = new ArrayList<String>();
					long days = ChronoUnit.DAYS.between(from, currentDate);    // 6 days
					if(days >= daysFilter) {
						
						String objectName = currentRow.get(0);
						String concatSerialNo = currentRow.get(1);
						String concatUser = currentRow.get(2);
						// String concatAction = currentRow.get(8);
						String elementObjectStatus = currentRow.get(9);
							String objectCreatedBy = currentRow.get(10);

							// print("objectCreatedBy: "+objectCreatedBy);
						
						String[] splitUserArray = concatUser.split(concatWith);
						lastActionBy = splitUserArray[splitUserArray.length-1];
						String elementIcon = elementName.replaceAll("\\s+", "-").toLowerCase() + ".svg";
						String icon = "<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/js/examples/editors/images/images1/"+elementIcon+"\" >";
						temp.add(icon);
						temp.add(objectName);
							temp.add(tableName);
						temp.add(createdDate);
						temp.add(lastActionDate);
						temp.add(lastActionBy);
						
							temp.add(objectCreatedBy);
						if(elementObjectStatus.equals("1")) {
							temp.add("Active");
						}else {
							temp.add("In Active");
						}
						myPageData.add((ArrayList<String>) temp);
					}
				}
			}
		}
	}
		return myPageData;
	}
	
	@RequestMapping(value = "/getElementColor", method = RequestMethod.GET)
	public @ResponseBody String getElementColor(@RequestParam String elementName){
		elementName = elementName.replaceAll("_", " ");
		System.out.println("kljk: "+elementName);
		List<Element> elements = unif.getElements();
		int elementsLength = elements.size();
		for(int i=0;i<elementsLength;i++) {
			Element e1 = elements.get(i);
			if(e1.getElementName().equalsIgnoreCase(elementName)) {
				return e1.getElementColor();
			}
		}
		return "done";
	}
	
	@RequestMapping(value = "/getRelationsObjects", method = RequestMethod.GET)
	public @ResponseBody HashMap<String, List<RelationsModel>> getRelationsObjects(@RequestParam String elementName,String objectName){
		List<RelationsModel> relatiionsForNavigation_forward = enterpriseDAO.getRelatiionsForNavigation(dbName,elementName,objectName,"fwd");
		List<RelationsModel> relatiionsForNavigation_backward = enterpriseDAO.getRelatiionsForNavigation(dbName,elementName,objectName,"bwd");
		System.out.println("relatiionsForNavigation_forward: "+relatiionsForNavigation_forward);
		System.out.println("relatiionsForNavigation_backward: "+relatiionsForNavigation_backward);
		HashMap<String, List<RelationsModel>> allData = new HashMap<String, List<RelationsModel>>();
		allData.put("forward", relatiionsForNavigation_forward);
		allData.put("backward", relatiionsForNavigation_backward);
		
		return allData;
	}
	
	@RequestMapping(value = "/save_user_profile_picture", method = RequestMethod.POST, consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
	public ModelAndView save_user_profile_picture(@RequestParam("file") MultipartFile file, HttpSession session) throws IOException, JAXBException {
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			userDetail = (UserDetails) auth.getPrincipal();
			username = userDetail.getUsername();
		}
		
		String fileName = file.getOriginalFilename();
		String extension = "";
	    int index = fileName.lastIndexOf('.');
	    if(index > 0) {
	      extension = fileName.substring(index + 1);
	    }
	    
	    String path = session.getServletContext().getRealPath("/");
//		String[] splitString = path.split("\\.metadata");
		
		
////		For online
//		String remainingPathOnline= "resources\\images";
//		String filePath = path + remainingPathOnline;
//		System.out.println("filePath: "+filePath);
	    
//		For Local
//		String remainingPath= "Project\\WebContent\\resources\\images";
//		String filePath = splitString[0] + remainingPath;
		
		File convertFile = new File(path + username+"."+extension);
		convertFile.createNewFile();
		FileOutputStream fout = new FileOutputStream(convertFile);
		fout.write(file.getBytes());
		
		//////////
//		File convertFile1 = new File(path + username+"."+extension);
//		convertFile1.createNewFile();
//		FileOutputStream fout1 = new FileOutputStream(convertFile);
//		fout1.write(file.getBytes());

		return null;
	}
	
	@RequestMapping(value="/addMultipleFileDataFromForm", method = RequestMethod.POST)
	public @ResponseBody byte[] fileUpload(MultipartHttpServletRequest request, HttpServletResponse response,HttpSession session) throws UnsupportedEncodingException{
		Map<String,Object> map = new HashMap<String,Object>();
		List<String> fileUploadedList = new ArrayList<String>();
		Iterator<String> itr =  request.getFileNames();
		String elementName = request.getParameter("elementName");
		String objectID = request.getParameter("objectID");
		// String fileVal = request.getParameter("fileVal");
		String fileVal = java.net.URLDecoder.decode(request.getParameter("fileVal"), StandardCharsets.UTF_8.name());
		String tbodyID = request.getParameter("tbodyID");
		
		String fileNameFrontEnd = request.getParameter("fileNameFrontEnd");
		
		
		fileNameFrontEnd = java.net.URLDecoder.decode(fileNameFrontEnd, StandardCharsets.UTF_8.name());
		
		String fileNamePrefix = elementName+objectID;
		
		MultipartFile mpf = null;
		while(itr.hasNext()){
			mpf = request.getFile(itr.next()); 
			try{
				String path = session.getServletContext().getRealPath("/");
				// String fileName = fileNamePrefix+mpf.getOriginalFilename();
				String fileName = fileNamePrefix+fileNameFrontEnd;
				fileName = fileName.replaceAll("\\p{Pd}", "-");
				for(int i = 0; i<fileName.length(); i++) {

				      // access each character
				      char a = fileName.charAt(i);
				      System.out.print(a + ", ");
				    }
				File convertFile = new File(path + "/" + fileName);
				convertFile.createNewFile();
				FileOutputStream fout = new FileOutputStream(convertFile);
				fout.write(mpf.getBytes());
				fout.close();
				fileUploadedList.add(mpf.getOriginalFilename().replace(" ", "-"));
			}catch(IOException e){
				e.printStackTrace(); 
			}
		}
		////
		String attachedFilesSelfGenerated = enterpriseDAO.getSelfGeneratedForGivenAttribute(dbName, elementName,"Attached Files").get(0);
		
		String[] firstArray = fileVal.split(";");
		
		List<String> rowValue = enterpriseDAO.getRowsForExcel(dbName, elementName, objectID, attachedFilesSelfGenerated);
		
		String rowValueStr = rowValue.get(0);
		String[] secondArray = rowValueStr.split(";");
	     
	    HashSet<String> set = new HashSet<>(); 
	     
	    set.addAll(Arrays.asList(firstArray));
	     
	    set.addAll(Arrays.asList(secondArray));
	     
	    //convert to array
	    String[] union = {};
	    union = set.toArray(union);
	    String temp = "";
	    String valueToUpdate = "";
	    int serialNumber = 1;
	    for(String file:union) {
	    	System.out.println("file: "+file);
	    	if(file.equals(" ") || file.equals("")) {
				continue;
			}
			String fileNameToSplit = elementName+objectID;
			String fileName1 = file.replaceAll(fileNameToSplit, "");
			valueToUpdate+=file+";";
//			temp += "<tr><td class = \" \">"+serialNumber+++"</td><td class=\" \"> "+fileName1+"</td>  <td class=\" \"> <i class=\"fa fa-download\" style=\"cursor: pointer\" aria-hidden=\"true\" onclick=\"downloadObjectUploadedFile('"+file+"','"+fileName1+"');\" ></i></td><td><i class=\"fa fa-trash\" style=\"cursor: pointer\" aria-hidden=\"true\"onclick=\"removeObjectUploadedFile('"+file+"','"+elementName+"','"+objectID+"','"+tbodyID+"');\" ></i> </td> </tr>";
			temp += "<tr><td class = \" \">"+serialNumber+++"</td><td class=\" \"> "+fileName1+"</td>  <td class=\" \"> <i class=\"fa fa-download\" style=\"cursor: pointer\" aria-hidden=\"true\" onclick=\"downloadObjectUploadedFile('"+file+"','"+fileName1+"');\" ></i></td><td><i class=\"fa fa-trash\" style=\"cursor: pointer\" aria-hidden=\"true\"onclick=\"delAttachmentRow();\" ></i> </td> </tr>";
		}
	    valueToUpdate = valueToUpdate.substring(0, valueToUpdate.length()-1);
	    ////
		enterpriseDAO.updateSingleValue(dbName, elementName,attachedFilesSelfGenerated,valueToUpdate,objectID);
		// return temp;
		byte[] utfBytes = temp.getBytes("utf-8");
		return utfBytes;
	}
	
	@RequestMapping(value="/removeObjectUploadedFile", method = RequestMethod.GET)
	public @ResponseBody byte[] removeObjectUploadedFile(String fileName,String elementName,String row_id,String tbodyID) throws UnsupportedEncodingException{
		String attachedFilesSelfGenerated = enterpriseDAO.getSelfGeneratedForGivenAttribute(dbName, elementName,"Attached Files").get(0);
		List<String> rowValue = enterpriseDAO.getRowsForExcel(dbName, elementName, row_id, attachedFilesSelfGenerated);
		String files = rowValue.get(0);
		String[] arrayString = files.split(";");
		List<String> list = new ArrayList<String>(Arrays.asList(arrayString));
		list.remove(fileName);
		arrayString = list.toArray(new String[0]);
		
		String temp = "";
		String valueToUpdate = "";
		int serialNumber = 1;
		for(String file:arrayString) {
			if(file.equals(" ") || file.equals("")) {
				continue;
			}
			String fileNameToSplit = elementName+row_id;
			String fileName1 = file.replaceAll(fileNameToSplit, "");
			valueToUpdate+=file+";";
//			temp += "<tr><td class = \"\">"+serialNumber+++"</td><td class=\"attachment_name_form\"> "+fileName1+"</td>  <td class=\" \"> <i class=\"fa fa-download\" style=\"cursor: pointer\" aria-hidden=\"true\"onclick=\"downloadObjectUploadedFile('"+file+"','"+fileName1+"');\" ></i></td><td><i class=\"fa fa-trash\"  style=\"cursor: pointer\" aria-hidden=\"true\"onclick=\"removeObjectUploadedFile('"+file+"','"+elementName+"','"+row_id+"','"+tbodyID+"');\" ></i> </td> </tr>";
			temp += "<tr><td class = \"\">"+serialNumber+++"</td><td class=\"attachment_name_form\"> "+fileName1+"</td>  <td class=\" \"> <i class=\"fa fa-download\" style=\"cursor: pointer\" aria-hidden=\"true\"onclick=\"downloadObjectUploadedFile('"+file+"','"+fileName1+"');\" ></i></td><td><i class=\"fa fa-trash\"  style=\"cursor: pointer\" aria-hidden=\"true\"onclick=\"delAttachmentRow();\" ></i> </td> </tr>";
		}
		System.out.println("valueToUpdate: "+valueToUpdate);
		if(valueToUpdate.length()>0) {
			valueToUpdate = valueToUpdate.substring(0, valueToUpdate.length()-1);
		}
		enterpriseDAO.updateSingleValue(dbName, elementName,attachedFilesSelfGenerated,valueToUpdate,row_id);
		
		byte[] utfBytes = temp.getBytes("utf-8");
		return utfBytes;
		// return temp;
	}
	
	@RequestMapping(value = "/downloadObjectUploadedFile", method = RequestMethod.GET)
	public @ResponseBody ResponseEntity<Object> downloadObjectUploadedFile(@RequestParam String attachedFile, String fileName,
			HttpSession session) throws JAXBException, FileNotFoundException, UnsupportedEncodingException {
		String path = session.getServletContext().getRealPath("/");
		attachedFile = path+attachedFile;
		File file = new File(attachedFile);
		InputStreamResource resource = new InputStreamResource(new FileInputStream(file));

		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Disposition", String.format("attachment; filename=\"%s\"", URLEncoder.encode(fileName, "UTF-8")));
		headers.add("Cache-Control", "no-cache, no-store, must-revalidate");
		headers.add("Pragma", "no-cache");
		headers.add("Expires", "0");

		ResponseEntity<Object> responseEntity = ResponseEntity.ok().headers(headers).contentLength(file.length())
				.contentType(MediaType.parseMediaType("application/txt")).body(resource);

		return responseEntity;
	}
	
	@RequestMapping(value = "/changePassword", method = RequestMethod.POST)
	public @ResponseBody String changePassword(String oldPassword,String newPassword,HttpSession session){
		String loggedInUser = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			loggedInUser = userDetail.getUsername();
		}
//		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
//		String hashedPassword = passwordEncoder.encode(password);
		String oldPasswordFromDB = enterpriseDAO.getOldPassword("EEATool", "users", loggedInUser , "password").get(0);
		methods methodObj = new methods();
		boolean matchPassword = methodObj.doPasswordsMatch( oldPassword, oldPasswordFromDB );
		if(matchPassword) {
			BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
			String hashedPassword = passwordEncoder.encode(newPassword);
			enterpriseDAO.updateUserPassword(loggedInUser,hashedPassword);
			return "success";
		}else {
			return "error";
		}
		
	}
	
//	Get database for local backup starts here
//	@RequestMapping(value = "/getBackupOfDatabases", method = RequestMethod.POST)
//	public @ResponseBody String getBackupOfDatabases(HttpSession session) {
//
//		dbName = unif.getDbName();
//		String username = "";
//		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//		if (!(auth instanceof AnonymousAuthenticationToken)) {
//			UserDetails userDetail = (UserDetails) auth.getPrincipal();
//			userDetail = (UserDetails) auth.getPrincipal();
//			username = userDetail.getUsername();
//		}
//		
//		String path = session.getServletContext().getRealPath("/");
//		String[] splitString = path.split("\\.metadata");
//		System.out.println("splitString[0]"+splitString[0]);
//		String remainingString= "Project\\backup_data";
////		String currentTime = LocalTime.now().truncatedTo(ChronoUnit.SECONDS).format(DateTimeFormatter.ISO_LOCAL_TIME);
////		System.out.println("LocalTime.now()"+LocalTime.now());
//		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy_MM_dd__HH_mm_ss");
//		LocalDateTime now = LocalDateTime.now();  
////		System.out.println(dtf.format(now));  		
////		Local
//		String folderPath = splitString[0] + remainingString + "\\" +dtf.format(now);
//		
////		Online
////		String folderPath = path + "\\" +dtf.format(now);
////		String folderPath = "E:\\exportChecking";
////		String folderPath = "http://159.223.192.8/root@ubuntu-s-1vcpu-2gb-intel-sfo3-01/opt";
//		System.out.println("inside mainController folderPath "+folderPath);
//		//Instantiate the File class   
//		File f1 = new File(folderPath);  
//		//Creating a folder using mkdir() method  
//		boolean bool = f1.mkdir();
//		System.out.println("bool"+bool);
//		if(bool){
//			List<String> getResponse = enterpriseDAO.getBackupOfDatabases(folderPath);
////			If folder created then works here
//			return "1";
//		}else{  
//			System.out.println("Error Found!");  
//			return "0";
//		}  		
////		return getResponse;
////		return new ModelAndView("redirect:/");
//	}	
//	Get database backup ends here
	
//	Get database for online backup starts here
	@RequestMapping(value = "/getBackupOfDatabases", method = RequestMethod.POST)
	public @ResponseBody String getBackupOfDatabases(HttpSession session) {

		dbName = unif.getDbName();
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			userDetail = (UserDetails) auth.getPrincipal();
			username = userDetail.getUsername();
		}
		
		String path = session.getServletContext().getRealPath("/");
		String[] splitString = path.split("\\.metadata");
//		System.out.println("splitString[0]"+splitString[0]);
		String remainingString= "Project\\backup_data";
//		String currentTime = LocalTime.now().truncatedTo(ChronoUnit.SECONDS).format(DateTimeFormatter.ISO_LOCAL_TIME);
//		System.out.println("LocalTime.now()"+LocalTime.now());
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy_MM_dd__HH_mm_ss");
		LocalDateTime now = LocalDateTime.now();  
//		System.out.println(dtf.format(now));  		
//		Local
		String folderPath = splitString[0] + remainingString;
		//Instantiate the File class   
//		File f1 = new File(folderPath);  
		//Creating a folder using mkdir() method  
//		boolean bool = f1.mkdir();
//		System.out.println("bool"+bool);
//		if(bool){
			String company_name = (String) session.getAttribute("company_name");
			List<String> getResponse = enterpriseDAO.getBackupOfDatabases(company_name, username, dtf.format(now), folderPath);
			System.out.println("getResponse"+getResponse);
			if(getResponse != null && getResponse.get(0).equals("error")) {
			return "0";
			}
			else {
				return "1";
			}
//			If folder created then works here
//			return "1";
//		}else{  
//			System.out.println("Error Found!");  
//			return "0";
//		}  		
//		return getResponse;
//		return new ModelAndView("redirect:/");
	}	
//	Get database backup ends here
	
////	Restore Works from folder starts here
//	@RequestMapping(value = "/getFolderNamesForRestore", method = RequestMethod.GET)
//	public @ResponseBody List<String> getFolderNamesForRestore(HttpSession session){
//		String path = session.getServletContext().getRealPath("/");
//		String[] splitString = path.split("\\.metadata");
//		String remainingString= "Project\\backup_data";
//		String folderPath = splitString[0] + remainingString;
//		
//		//Creating a File object for directory
//		File directoryPath = new File(folderPath);
//		//List of all files and directories
//		File filesList[] = directoryPath.listFiles();
//		List<String> folderName = new ArrayList<String>();
////		System.out.println("List of files and directories in the specified directory:");
//		for(File file : filesList) {
//			folderName.add(file.getName());
////			System.out.println("File name: "+file.getName());
////			System.out.println("File path: "+file.getAbsolutePath());
////			System.out.println("Size :"+file.getTotalSpace());
////			System.out.println(" ");
//		}
//		return folderName;
//	}	
	
//	Restore Works from database starts here
	@RequestMapping(value = "/getFolderNamesForRestore", method = RequestMethod.GET)
	public @ResponseBody List<String> getFolderNamesForRestore(HttpSession session){
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			username = userDetail.getUsername();
		}		
		String company_name = (String) session.getAttribute("company_name");
		List<String> getFolderNameFromDatabase = enterpriseDAO.getFolderNameFromDatabase(company_name,username);
		System.out.println("getFolderNameFromDatabase"+getFolderNameFromDatabase);
		return getFolderNameFromDatabase;
	}
		
	
	@RequestMapping(value = "/restoreSpecificData", method = RequestMethod.POST)
	public @ResponseBody String restoreSpecificData(HttpSession session, String joinDateAndTime) {
		String path = session.getServletContext().getRealPath("/");
		String[] splitString = path.split("\\.metadata");
		String remainingString= "Project\\backup_data";
//		String currentTime = LocalTime.now().truncatedTo(ChronoUnit.SECONDS).format(DateTimeFormatter.ISO_LOCAL_TIME);
//		System.out.println("LocalTime.now()"+LocalTime.now());
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy_MM_dd__HH_mm_ss");
		LocalDateTime now = LocalDateTime.now();  
//		Local
//		String folderPath = splitString[0] + remainingString;
//		Online
		String folderPath = path;
				
		int restoreSpecificData = enterpriseDAO.restoreSpecificData(joinDateAndTime, folderPath);
		System.out.println("restoreSpecificData"+restoreSpecificData);
		return dbName;
	}		
//	Restore Works ends here
	
	
//	Clear Works start here
	@RequestMapping(value="/truncateObjectClear", method = RequestMethod.GET)
	public @ResponseBody String truncateObjectClear(HttpSession session, ModelAndView model, HttpServletResponse response) {
		dbName = unif.getDbName();
		System.out.println("dbName"+dbName);
		System.out.println("truncate backend");
		try {
			enterpriseDAO.truncateObjectClear(dbName);
			return "Database truncation done!";
		} catch (Exception e) {
			return "Error while doing truncate database!";
		}
	}	
	
	@RequestMapping(value="/truncateModelClear", method = RequestMethod.GET)
	public @ResponseBody String truncateModelClear(HttpSession session, ModelAndView model, HttpServletResponse response) {
		dbName = unif.getDbName();
		System.out.println("truncate backend");
		try {
			enterpriseDAO.truncateModelClear(dbName);
			return "Database truncation done!";
		} catch (Exception e) {
			return "Error while doing truncate database!";
		}
	}		
	
	@RequestMapping(value="/truncatedashboardslear", method = RequestMethod.GET)
	public @ResponseBody String truncatedashboardslear(HttpSession session, ModelAndView model, HttpServletResponse response) {
		dbName = unif.getDbName();
		System.out.println("truncate backend");
		try {
			enterpriseDAO.truncatedashboardslear(dbName);
			return "Database truncation done!";
		} catch (Exception e) {
			return "Error while doing truncate database!";
		}
	}		
//	Clear Works ends here
	
	
	
	@RequestMapping(value="/getSessionStatus", method = RequestMethod.GET)
	public @ResponseBody int getSessionStatus(HttpSession session, ModelAndView model, HttpServletResponse response) {
		
		if (!isUserLoggedIn()) {
			System.out.println("truncate backend: 1");
			return 1;
			
		}else {
			System.out.println("truncate backend1: 0");
			return 0;
		}
	}
	
	@RequestMapping(value="/getElementNamesforDiagramDropdown", method = RequestMethod.GET)
	public @ResponseBody List<Element> getElementNamesforDiagramDropdown(HttpSession session, ModelAndView model, HttpServletResponse response) {
		List<Element> elementNames = unif.getElements();
		return elementNames;
	}
	@RequestMapping(value="/getObjectNamesforDiagramDropdown", method = RequestMethod.GET)
	public @ResponseBody List<String> getObjectNamesforDiagramDropdown(HttpSession session, ModelAndView model, HttpServletResponse response, @RequestParam String elementName) {

		
		String tableName = elementName.replaceAll("\\s+", "_"); 
		
		List<String> selfGeneratedValueOfNameColumn =  enterpriseDAO.selfGeneratedValueOfNameColumn(dbName, tableName);
		String NameSGV = selfGeneratedValueOfNameColumn.get(0).toString();
		
		List<String> objectNames = enterpriseDAO.getElementEntries(dbName, tableName, NameSGV);
		
		return objectNames;
	}
	
	@RequestMapping(value="/getAttributesforDiagramFilterDropdown", method = RequestMethod.GET)
	public @ResponseBody List<String> getAttributesforDiagramFilterDropdown(HttpSession session, ModelAndView model, HttpServletResponse response, @RequestParam String elementName) {
		
		List<String> attributes = new ArrayList<String>();
		
		List<Element_Attributes> elementAttribute = unif.getElement_attributes();
		
		for(Element_Attributes attribute: elementAttribute) {
			if(attribute.getConceptName().equalsIgnoreCase(elementName)){
				String attributeFormat = attribute.getAttributeFormat();
				//	System.out.println("attributeFormat: "+attributeFormat);
				if(attributeFormat.equalsIgnoreCase("CheckBox") || attributeFormat.equalsIgnoreCase("List")) {
					attributes.add(attribute.getAttrributeName());
				}
			}
		}
		
		return attributes;
	}
	
	
	@RequestMapping(value="/diagramFilterGetAttributeAllowableValues", method = RequestMethod.GET)
	public @ResponseBody HashMap<String, String[]> diagramFilterGetAttributeAllowableValues(HttpSession session, ModelAndView model, HttpServletResponse response, @RequestParam String elementName, String attributeName) {
		
		List<String> attributes = new ArrayList<String>();
		
		List<Element_Attributes> elementAttribute = unif.getElement_attributes();
		HashMap<String, String[]> dictionary = new HashMap<String, String[]>();
		
		for(Element_Attributes attribute: elementAttribute) {
			if(attribute.getConceptName().equalsIgnoreCase(elementName)){
				String attributeNameXML = attribute.getAttrributeName();
//				System.out.println("attributeNameXML: "+attributeNameXML);

				if(attributeNameXML.equalsIgnoreCase(attributeName)) {
					System.out.println("attributeName: "+attributeName);
					String allowableValues = attribute.getAllowableValues();
					System.out.println("attributeName: "+allowableValues);
					
					String[] allowableValuesArray = allowableValues.split(";");
					
					dictionary.put("allowableValues", allowableValuesArray);
					
				}
			}
		}
		
		return dictionary;
	}
	
//	@RequestMapping(value = "/saveCatalogToXML", method = RequestMethod.POST)
//	public @ResponseBody String saveCatalogToXML(@RequestBody Catalog catalog,HttpSession session) throws JAXBException{
//		String username = "";
//		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//		if (!(auth instanceof AnonymousAuthenticationToken)) {
//			UserDetails userDetail = (UserDetails) auth.getPrincipal();
//			System.out.println(userDetail);
//			userDetail = (UserDetails) auth.getPrincipal();
//			username = userDetail.getUsername();
//		}
//		String path = session.getServletContext().getRealPath("/");
//		String XML_FILE = path + "/"+catalog.getCatalogName() + ".xml";
//		JAXBContext context = JAXBContext.newInstance(Catalog.class);
//		Marshaller m = context.createMarshaller();
//		m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, Boolean.TRUE);
//		m.marshal(catalog, new File(XML_FILE));
//		String company_name = (String) session.getAttribute("company_name");
//		int response = enterpriseDAO.insertCatalogInDb(username,catalog,XML_FILE.replace("\\", "\\\\"), company_name);
//			System.out.println("response: "+response);
//		if(response == 000) {
//			return "Already Exists!";
//		}else {
//			
//			return "";
//		}
//	}
	
	@RequestMapping(value = "/checkOpenedDiagramRelationshipsWithOtherSelectedObjects", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, List<String>> checkOpenedDiagramRelationshipsWithOtherSelectedObjects(
			@RequestParam String userSelectedElementName, 
			@RequestParam(value = "userSelectedObjects[]") List<String> userSelectedObjects,
			@RequestParam(value = "userSelectedObjectsColor[]") List<String> userSelectedObjectsColor,
			@RequestParam(value = "openedDiagramElementName[]") List<String> openedDiagramElementName,
			@RequestParam(value = "openedDiagramObjectName[]") List<String> openedDiagramObjectName){
		
	    String loggedInUser = "";
	    Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    if (!(auth instanceof AnonymousAuthenticationToken)) {
	        UserDetails userDetail = (UserDetails) auth.getPrincipal();
	        System.out.println(userDetail);
	        loggedInUser = userDetail.getUsername();
	    }
		
		
		System.out.println("useSelectedElementName: "+userSelectedElementName);
		System.out.println("userSelectedObjects: "+userSelectedObjects);
		System.out.println("openedDiagramElementName "+openedDiagramElementName);
		System.out.println("openedDiagramObjectName "+openedDiagramObjectName);
		
		
		HashMap<String, List<String>> diagramObjectsWithColor = enterpriseDAO.filterDiagramRelationships(dbName, userSelectedElementName, userSelectedObjects, userSelectedObjectsColor, openedDiagramElementName, openedDiagramObjectName);

		System.out.println("diagramObjectsWithColor: "+diagramObjectsWithColor);
	    
	    return diagramObjectsWithColor;
	    
	}
	
	@RequestMapping(value = "/checkOpenedDiagramRelationshipsWithOtherSelectedAttributes", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, String> checkOpenedDiagramRelationshipsWithOtherSelectedAttributes(
			@RequestParam String userSelectedElementName, 
			@RequestParam String  userSelectedAttributeType,
			@RequestParam(value = "userSelectedAttributes[]") List<String> userSelectedAttributes,
			@RequestParam(value = "userSelectedAttributesColor[]") List<String> userSelectedAttributesColor,
			@RequestParam(value = "openedDiagramElementName[]") List<String> openedDiagramElementName,
			@RequestParam(value = "openedDiagramObjectName[]") List<String> openedDiagramObjectName){
		
	    String loggedInUser = "";
	    Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    if (!(auth instanceof AnonymousAuthenticationToken)) {
	        UserDetails userDetail = (UserDetails) auth.getPrincipal();
	        System.out.println(userDetail);
	        loggedInUser = userDetail.getUsername();
	    }
		
		String SelfGeneratedValueOfAttributeType = enterpriseDAO.getSelfGeneratedForGivenAttribute(dbName, userSelectedElementName, userSelectedAttributeType).get(0);
		
		HashMap<String, String> diagramObjectsWithColor = enterpriseDAO.filterDiagramRelationshipsWithAttributes(dbName, userSelectedElementName, SelfGeneratedValueOfAttributeType, userSelectedAttributes, userSelectedAttributesColor, openedDiagramElementName, openedDiagramObjectName);
		
		System.out.println("1: "+diagramObjectsWithColor);
		
	    return diagramObjectsWithColor;
	}

	
	@RequestMapping(value="/resetServerSessionTimeOut", method = RequestMethod.GET)
	public @ResponseBody int resetServerSessionTimeOut(HttpSession session, ModelAndView model, HttpServletResponse response) {
		
			return 1;
	}
	
//	attachments work starts here
	@RequestMapping(value = "/getattachmentsNames")
	public @ResponseBody byte[] getattachmentsNames(HttpSession session) throws UnsupportedEncodingException {
		

		ReloadableResourceBundleMessageSource messageSource=new ReloadableResourceBundleMessageSource();
		messageSource.setBasename("classpath:net/lt/eaze/resources/locale/messages");
		messageSource.setDefaultEncoding("UTF-8");
		messageSource.setUseCodeAsDefaultMessage(true);
		Locale locale = LocaleContextHolder.getLocale();
		
		roleDetails role_details = (roleDetails) session.getAttribute("role_details");
		String username = "";
		Collection<? extends GrantedAuthority> userRole = null;
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			userDetail = (UserDetails) auth.getPrincipal();
			username = userDetail.getUsername();
			userRole = userDetail.getAuthorities();
		}
		String userRoleStr = userRole.toArray()[0].toString();
		
		String graphTree = "";
		//graphTree+="<span id=\"modelSpan\" class=\"caret\" oncontextmenu=\"on_context_menu_graph('1','LambdaTheta')\">LambdaTheta</span>";
		graphTree+="<ul id=\"attachment1\">";
		
		Map<String, List<String>> P_F_keys = new HashMap<String, List<String>>();
		
		String database = "graphs";
		String tableName = "roadmap";
//		List<timeLineGraph> roadMapName = enterpriseDAO.getRoadMap(database, tableName);
		//String treeFromFunction =getTreeRecursiveFuntion(allForeignKeys.get(0))
//		System.out.println("roadMap Names here: "+roadMapName);
			
		List<String> allForeignKeys = enterpriseDAO.getAllForeignKeys("graphs","folders","parent_id");
		int previousFolderParent = 0;
		
		String company_name = (String) session.getAttribute("company_name");
		List<graphFolders> foldersList = enterpriseDAO.getAttachmentFolders(allForeignKeys.get(0),username,"1", company_name);
		for(graphFolders folder:foldersList) {
			String id= folder.getId();
			String folderName = folder.getFolder_name();
			String parentID = folder.getParent_id();
			if(!userRole.toArray()[0].toString().equals("ROLE_READER")) {
//				graphTree +="<li><span id=\""+folder.getFolder_name().replaceAll(" ", "---")+"\" class=\"caret\"  oncontextmenu=\"on_context_menu_graph('"+folder.getFolder_name().replaceAll(" ", "---")+"','"+folder.getFolder_name().replaceAll(" ", "---")+folder.getId()+"','"+id+"','"+parentID+"');\">"+messageSource.getMessage(folderName.replaceAll("\\s+", "_"),null,locale)+"</span>";
				graphTree +="<li><p style=\"margin-bottom:0px;\" id=\""+folder.getFolder_name().replaceAll(" ", "---")+"\" class=\"caret\"  oncontextmenu=\"on_context_menu_attachment('"+folder.getFolder_name().replaceAll(" ", "---")+"','"+folder.getFolder_name().replaceAll(" ", "---")+folder.getId()+"','"+id+"','"+parentID+"');\">"+messageSource.getMessage(folderName.replaceAll("\\s+", "_"),null,locale)+"</p>";
			}
			else {
				graphTree +="<li><span id=\""+folder.getFolder_name().replaceAll(" ", "---")+"\" class=\"caret\">"+messageSource.getMessage(folderName.replaceAll("\\s+", "_"),null,locale)+"</span>";
			}
			graphTree+="<ul id=\""+folder.getFolder_name().replaceAll(" ", "---")+folder.getId()+"_attachment\" class=\"nested\">";
			
			
//			List<graphFiles> graphNames = enterpriseDAO.getGraphNamesFromFolder(username,id,"1", company_name);
			List<graphFiles> attachmentNames = enterpriseDAO.getAttachmentNamesFromFolder(username,id,"1", company_name);
			
//			List<catalogFiles> catalogNames = enterpriseDAO.getCatalogNamesFromFolder(username,id,"1",company_name);
//			List<matrixFiles> matrixNames = enterpriseDAO.getMatrixNamesFromFolder(username,id,"1",company_name);
//			List<navigationFiles> navigationNames = enterpriseDAO.getNavigationNamesFromFolder(username,id,"1", company_name);
//			List<timeLineGraph> roadMapNames = enterpriseDAO.getRoadMapFromFolder(username,id,"1",company_name);
			
			
			List<graphFolders> foldersList1 = enterpriseDAO.getAttachmentFolders(id,username,"1", company_name);
			for(graphFolders folders1:foldersList1) {
				String id1= folders1.getId();
				String folderName1 = folders1.getFolder_name();
				String parentID1 = folders1.getParent_id();
				if(!userRole.toArray()[0].toString().equals("ROLE_READER")) {
					graphTree += "<li id=\""+folders1.getFolder_name().replaceAll("[^a-zA-Z0-9]","_").replaceAll(" ", "_").replaceAll(" ", "---")+"123\"><p style=\"margin-bottom:0px;\" class=\"caret "+folders1.getFolder_name().replaceAll(" ", "---")+"\" oncontextmenu=\"on_context_menu_attachment('"+folder.getFolder_name().replaceAll(" ", "---")+"','"+folders1.getFolder_name().replaceAll(" ", "---")+folders1.getId()+"','"+id1+"', '"+folders1.getFolder_name().replaceAll(" ", "---")+"','"+parentID1+"','"+folder.getFolder_name().replaceAll(" ", "---")+folder.getId()+"','folder')\">"+messageSource.getMessage(folders1.getFolder_name().replaceAll("\\s+", "_"),null,locale)+"</p>";
				}
				else {
					graphTree += "<li id=\""+folders1.getFolder_name().replaceAll("[^a-zA-Z0-9]","_").replaceAll(" ", "_").replaceAll(" ", "---")+"123\"><p style=\"margin-bottom:0px;\" class=\"caret "+folders1.getFolder_name().replaceAll(" ", "---")+"\">"+messageSource.getMessage(folders1.getFolder_name().replaceAll("\\s+", "_"),null,locale)+"</p>";
				}
				graphTree+="<ul id=\""+folders1.getFolder_name().replaceAll(" ", "---")+folders1.getId()+"\" class=\"nested\">";
//				List<catalogFiles> catalogNames1 = enterpriseDAO.getCatalogNamesFromFolder(username,id1,"1",company_name);
				List<graphFiles> attachmentNames1 = enterpriseDAO.getAttachmentNamesFromFolder(username,id1,"1", company_name);
//				List<matrixFiles> matrixNames1 = enterpriseDAO.getMatrixNamesFromFolder(username,id1,"1",company_name);
//				List<navigationFiles> navigationNames1 = enterpriseDAO.getNavigationNamesFromFolder(username,id1,"1", company_name);
//				List<timeLineGraph> roadMapNames1 = enterpriseDAO.getRoadMapFromFolder(username,id1,"1", company_name);
				
				for(graphFiles gn: attachmentNames1) {
					if(role_details.isGraphDelete()==true)
					{					
						graphTree+= "<li id=\""+gn.getModelName().replaceAll("[^a-zA-Z0-9]","---")+gn.getId()+"\" class=\"model_list "+folders1.getFolder_name().replaceAll(" ", "---")+"\"  oncontextmenu=\"on_context_menu_remove_attachment('"+gn.getId()+"',\'"+gn.getModelName().replaceAll("[^a-zA-Z0-9]","---")+gn.getId()+"\', \'"+folders1.getFolder_name().replaceAll(" ", "---")+folders1.getId()+"\',\'"+gn.getModelName().replaceAll(" ", "---")+"\',\'"+folders1.getFolder_name().replaceAll(" ", "---")+"\')\">&nbsp;&nbsp;<i class=\"fa fa-paperclip\" aria-hidden=\"true\"></i>&nbsp;"+messageSource.getMessage(gn.getModelName(),null,locale)+"</li>";
					}
					else
					{
						graphTree+= "<li id=\""+gn.getModelName().replaceAll("[^a-zA-Z0-9]","---")+gn.getId()+"\" class=\"model_list "+folders1.getFolder_name().replaceAll(" ", "---")+"\" >&nbsp;&nbsp;<i class=\"fa fa-paperclip\" aria-hidden=\"true\"></i>&nbsp;"+messageSource.getMessage(gn.getModelName().replaceAll("\\s+", "_"),null,locale)+"</li>";
					}
				}
//				for(catalogFiles mn: catalogNames1) {
//					if(role_details.isCatalogDelete()==true)
//					{
//						graphTree += "<li id=\""+mn.getModelName().replaceAll(" ", "---")+mn.getId()+"\" class=\"model_list "+folders1.getFolder_name().replaceAll(" ", "---")+"\" onclick=\"drawCatalogFromXML(\'"+mn.getModelName()+"\',\'"+mn.getId()+"\',\'"+mn.getElementName()+"\',\'"+folders1.getFolder_name().replaceAll(" ", "---")+"\')\" oncontextmenu=\"on_context_menu_remove_catalog_matrix(\'"+mn.getId()+"\',\'"+mn.getModelName().replaceAll(" ", "---")+mn.getId()+"\',\'"+folders1.getFolder_name().replaceAll(" ", "---")+folders1.getId()+"\',\'"+mn.getModelName()+"\',\'"+folders1.getFolder_name().replaceAll(" ", "---")+"\',\'catalog\')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/catalog.svg\">&nbsp;"+mn.getModelName()+"</li>";
//					}
//					else {
//						graphTree += "<li id=\""+mn.getModelName().replaceAll(" ", "---")+mn.getId()+"\" class=\"model_list "+folders1.getFolder_name().replaceAll(" ", "---")+"\" onclick=\"drawCatalogFromXML(\'"+mn.getModelName()+"\',\'"+mn.getId()+"\',\'"+mn.getElementName()+"\',\'"+folders1.getFolder_name().replaceAll(" ", "---")+"\'))\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/catalog.svg\">&nbsp;"+messageSource.getMessage(mn.getModelName().replaceAll("\\s+", "_"),null,locale)+"</li>";
//					}
//				}
//				for(matrixFiles mn: matrixNames1) {
//					if(role_details.isCatalogDelete()==true) {
//						graphTree += "<li id=\""+mn.getMatrix_name().replaceAll(" ", "---")+mn.getId()+"\" class=\"model_list "+folders1.getFolder_name().replaceAll(" ", "---")+"\" onclick=\"drawMatrixFromXML('"+mn.getMatrix_name()+"','"+mn.getMatrix_element1()+"','"+mn.getMatrix_element2()+"','"+mn.getMatrix_relation()+"','"+mn.getParentID()+"',\'"+folders1.getFolder_name().replaceAll(" ", "---")+"\')\" oncontextmenu=\"on_context_menu_remove_catalog_matrix(\'"+mn.getId()+"\',\'"+mn.getMatrix_name().replaceAll(" ", "---")+mn.getId()+"\',\'"+folders1.getFolder_name().replaceAll(" ", "---")+folders1.getId()+"\',\'"+mn.getMatrix_name()+"\',\'"+folders1.getFolder_name().replaceAll(" ", "---")+"\',\'matrix\')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/matrix.svg\">&nbsp;"+mn.getMatrix_name().replaceAll("---"," ")+"</li>";
//					}
//					else {
//						graphTree += "<li id=\""+mn.getMatrix_name().replaceAll(" ", "---")+mn.getId()+"\" class=\"model_list "+folders1.getFolder_name().replaceAll(" ", "---")+"\" onclick=\"drawMatrixFromXML('"+mn.getMatrix_name()+"','"+mn.getMatrix_element1()+"','"+mn.getMatrix_element2()+"','"+mn.getMatrix_relation()+"','"+mn.getParentID()+"', \'"+folders1.getFolder_name().replaceAll(" ", "---")+"\')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/matrix.svg\">&nbsp;"+messageSource.getMessage(mn.getMatrix_name().replaceAll("---", " "),null,locale)+"</li>";
//					}
//				}
//				for(navigationFiles gn: navigationNames1) {
////					if(role_details.isGraphDelete()==true)
////					{
//						graphTree+= "<li id=\""+gn.getNavigationName().replaceAll(" ", "---")+gn.getId()+"\" class=\"model_list "+folders1.getFolder_name().replaceAll(" ", "---")+"\" onclick=\"drawNavigationFromDB(\'"+gn.getNavigationName()+"\',\'"+gn.getId()+"\',"+role_details.isGraphUpdate()+",\'"+folders1.getFolder_name().replaceAll(" ", "---")+"\')\" oncontextmenu=\"on_context_menu_remove_navigation('"+gn.getId()+"',\'"+gn.getNavigationName().replaceAll(" ", "---")+gn.getId()+"\', \'"+folders1.getFolder_name().replaceAll(" ", "---")+folders1.getId()+"\',\'"+gn.getNavigationName().replaceAll(" ", "---")+"\',\'"+folders1.getFolder_name().replace(" ", "---")+"\',\'navigation\')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/navigation.svg\">&nbsp;"+messageSource.getMessage(gn.getNavigationName(),null,locale)+"</li>";
////					}
////					else
////					{
////						graphTree+= "<li id=\""+gn.getNavigationName().replaceAll(" ", "---")+gn.getId()+"\" class=\"model_list "+folders1.getFolder_name().replaceAll(" ", "---")+"\" onclick=\"getDBlist(\'"+gn.getNavigationName()+"\',\'"+gn.getId()+"\',"+role_details.isGraphUpdate()+", \'"+folders1.getFolder_name().replaceAll(" ", "---")+"\')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/modelImage.svg\">&nbsp;"+messageSource.getMessage(gn.getNavigationName().replaceAll("\\s+", "_"),null,locale)+"</li>";
////					}
//				}				
//				for(timeLineGraph rm: roadMapNames1) {
//					if(role_details.isGraphDelete()==true)
//					{
////						System.out.println("folderName roadmap: "+folders1.getFolder_name().replaceAll(" ", "---"));
//						graphTree += "<li id=\""+rm.getroadmapName().replaceAll(" ", "---")+rm.getId()+"\" class=\"model_list "+folders1.getFolder_name().replaceAll(" ", "---")+"\" onclick=\"getRoadmap(\'"+rm.getroadmapName()+"\',\'"+rm.getId()+"\',\'"+rm.getCompanyName()+"\',\'"+rm.getParentID()+"\', \'"+folders1.getFolder_name().replaceAll(" ", "---")+"\')\" oncontextmenu=\"on_context_menu_remove_roadmap(\'"+rm.getId()+"\',\'"+rm.getroadmapName()+rm.getId()+"\', \'"+folders1.getFolder_name().replaceAll(" ", "---")+folders1.getId()+"\',\'"+rm.getroadmapName()+"\',\'"+rm.getCompanyName()+"\',\'"+rm.getParentID()+"\',\'"+folders1.getFolder_name()+"\')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/road.svg\">&nbsp;"+messageSource.getMessage(rm.getroadmapName(),null,locale)+"</li>";
////						graphTree += "<li id=\""+rm.getroadmapName().replaceAll(" ", "---")+rm.getId()+"\" class=\"model_list"+folders1.getFolder_name().replaceAll(" ", "---")+"\" onclick=\"getRoadmap(\'"+rm.getroadmapName()+"\',\'"+rm.getId()+"\',\'"+rm.getCompanyName()+"\',\'"+rm.getParentID()+"\')\" oncontextmenu=\"on_context_menu_remove_roadmap(\'"+rm.getId()+"\',\'"+rm.getroadmapName()+rm.getId()+"\', \'"+folders1.getFolder_name().replaceAll(" ", "---")+folders1.getId()+"\',\'"+rm.getroadmapName()+"\',\'"+rm.getCompanyName()+"\',\'"+rm.getParentID()+"\',\'"+folders1.getFolder_name()+"\')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/road.svg\">&nbsp;"+messageSource.getMessage(rm.getroadmapName(),null,locale)+"</li>";
//					}
//					else {
////						System.out.println("subfolder roadmap else loop: ");
////						graphTree += "<li id=\""+rm.getId()+"\" class=\"model_list\" onclick=\"getRoadmap(\'"+rm.getroadmapName()+"\',\'"+rm.getId()+"\',\'"+rm.getCompanyName()+"\',\'"+rm.getParentID()+"\')\" oncontextmenu=\"on_context_menu_remove_roadmap(\'"+rm.getId()+"\',\'"+rm.getroadmapName()+rm.getId()+"\', \'"+folder.getFolder_name()+folder.getId()+"\',\'"+rm.getroadmapName()+"\',\'roadmap\')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/road.svg\">&nbsp;"+messageSource.getMessage(rm.getroadmapName(),null,locale)+"</li>";
////						graphTree += "<li id=\""+rm.getroadmapName().replaceAll(" ", "---")+rm.getId()+"\" class=\"model_list"+folders1.getFolder_name().replaceAll(" ", "---")+"\" onclick=\"getRoadmap(\'"+rm.getroadmapName()+"\',\'"+rm.getId()+"\',\'"+rm.getCompanyName()+"\',\'"+rm.getParentID()+"\')\" oncontextmenu=\"on_context_menu_remove_roadmap(\'"+rm.getId()+"\',\'"+rm.getroadmapName()+rm.getId()+"\', \'"+folders1.getFolder_name().replaceAll(" ", "---")+folders1.getId()+"\',\'"+rm.getroadmapName()+"\',\'"+rm.getCompanyName()+"\',\'"+rm.getParentID()+"\',\'"+folders1.getFolder_name()+"\')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/road.svg\">&nbsp;"+messageSource.getMessage(rm.getroadmapName(),null,locale)+"</li>";
//						graphTree += "<li id=\""+rm.getroadmapName().replaceAll(" ", "---")+rm.getId()+"\" class=\"model_list "+folders1.getFolder_name().replaceAll(" ", "---")+"\" onclick=\"getRoadmap(\'"+rm.getroadmapName()+"\',\'"+rm.getId()+"\',\'"+rm.getCompanyName()+"\',\'"+rm.getParentID()+"\', \'"+folders1.getFolder_name().replaceAll(" ", "---")+"\')\" oncontextmenu=\"on_context_menu_remove_roadmap(\'"+rm.getId()+"\',\'"+rm.getroadmapName()+rm.getId()+"\', \'"+folders1.getFolder_name().replaceAll(" ", "---")+folders1.getId()+"\',\'"+rm.getroadmapName()+"\',\'"+rm.getCompanyName()+"\',\'"+rm.getParentID()+"\',\'"+folders1.getFolder_name()+"\')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/road.svg\">&nbsp;"+messageSource.getMessage(rm.getroadmapName(),null,locale)+"</li>";
////						graphTree += "<li id=\""+rm.getroadmapName().replaceAll(" ", "---")+rm.getId()+"\" class=\"model_list\" onclick=\"getRoadmap(\'"+rm.getroadmapName()+"\',\'"+rm.getId()+"\',\'"+rm.getCompanyName()+"\',\'"+rm.getParentID()+"\')\" oncontextmenu=\"on_context_menu_remove_roadmap(\'"+rm.getId()+"\',\'"+rm.getroadmapName()+rm.getId()+"\', \'"+folder.getFolder_name().replaceAll(" ", "---")+folder.getId()+"\',\'"+rm.getroadmapName()+"\',\'"+rm.getCompanyName()+"\',\'"+rm.getParentID()+"\',\'"+folder.getFolder_name()+"\')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/road.svg\">&nbsp;"+messageSource.getMessage(rm.getroadmapName(),null,locale)+"</li>";
//					}
//				}
				graphTree += "</ul>";
				graphTree += "</li>";
			}
			for(graphFiles gn: attachmentNames) {
				if(role_details.isGraphDelete()==true) {
					graphTree += "<li id=\""+gn.getModelName().replaceAll("[^a-zA-Z0-9]","---")+gn.getId()+"\" class=\"model_list\"  oncontextmenu=\"on_context_menu_attachment(\'"+gn.getId()+"\',\'"+gn.getModelName().replaceAll(" ", "---")+gn.getId()+"\', \'"+folder.getFolder_name()+folder.getId()+"\',\'"+gn.getModelName().replaceAll(" ", "---")+"\')\">&nbsp;&nbsp;<i class=\"fa fa-paperclip\" aria-hidden=\"true\"></i>&nbsp;"+messageSource.getMessage(gn.getModelName(),null,locale)+"</li>";
				}
				else {
					graphTree += "<li id=\""+gn.getModelName().replaceAll("[^a-zA-Z0-9]","---")+gn.getId()+"\" class=\"model_list\" >&nbsp;&nbsp;<i class=\"fa fa-paperclip\" aria-hidden=\"true\"></i>&nbsp;"+gn.getModelName()+"</li>";
				}
			}
//			for(catalogFiles mn: catalogNames) {
//				if(role_details.isCatalogDelete()==true) {
//					graphTree += "<li id=\""+mn.getModelName().replaceAll(" ", "---")+mn.getId()+"\" class=\"model_list\" onclick=\"drawCatalogFromXML(\'"+mn.getModelName()+"\',\'"+mn.getId()+"\',\'"+mn.getElementName()+"\')\" oncontextmenu=\"on_context_menu_remove_catalog_matrix(\'"+mn.getId()+"\',\'"+mn.getModelName().replaceAll(" ", "---")+mn.getId()+"\',\'"+folder.getFolder_name()+folder.getId()+"\',\'"+mn.getModelName()+"\',"+null+",\'catalog\')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/catalog.svg\">&nbsp;"+mn.getModelName()+"</li>";
//				}
//				else {
//					graphTree += "<li id=\""+mn.getModelName().replaceAll(" ", "---")+mn.getId()+"\" class=\"model_list\" onclick=\"drawCatalogFromXML(\'"+mn.getModelName()+"\',\'"+mn.getId()+"\',\'"+mn.getElementName()+"\')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/catalog.svg\">&nbsp;"+mn.getModelName()+"</li>";
//				}
//			}
//			for(matrixFiles mn: matrixNames) {
//				if(role_details.isCatalogDelete()==true) {
//					graphTree += "<li id=\""+mn.getMatrix_name().replaceAll(" ", "---")+mn.getId()+"\" class=\"model_list\" onclick=\"drawMatrixFromXML('"+mn.getMatrix_name()+"','"+mn.getMatrix_element1()+"','"+mn.getMatrix_element2()+"','"+mn.getMatrix_relation()+"','"+mn.getParentID()+"')\" oncontextmenu=\"on_context_menu_remove_catalog_matrix(\'"+mn.getId()+"\',\'"+mn.getMatrix_name().replaceAll(" ", "---")+mn.getId()+"\',\'"+folder.getFolder_name()+folder.getId()+"\',\'"+mn.getMatrix_name()+"\',"+null+",\'matrix\')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/matrix.svg\">&nbsp;"+mn.getMatrix_name().replaceAll("---"," ")+"</li>";
//				}
//				else {
//					graphTree += "<li id=\""+mn.getMatrix_name().replaceAll(" ", "---")+mn.getId()+"\" class=\"model_list\" onclick=\"drawMatrixFromXML('"+mn.getMatrix_name()+"','"+mn.getMatrix_element1()+"','"+mn.getMatrix_element2()+"','"+mn.getMatrix_relation()+"','"+mn.getParentID()+"')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/matrix.svg\">&nbsp;"+mn.getMatrix_name().replaceAll("---", " ")+"</li>";
//				}
//			}
//			for(navigationFiles gn: navigationNames) {
////				if(role_details.isGraphDelete()==true) {
//					graphTree += "<li id=\""+gn.getNavigationName().replaceAll(" ", "---")+gn.getId()+"\" class=\"model_list\" onclick=\"drawNavigationFromDB(\'"+gn.getNavigationName()+"\',\'"+gn.getId()+"\','"+userRoleStr+"')\" oncontextmenu=\"on_context_menu_remove_navigation(\'"+gn.getId()+"\',\'"+gn.getNavigationName().replaceAll(" ", "---")+gn.getId()+"\', \'"+folder.getFolder_name()+folder.getId()+"\',\'"+gn.getNavigationName().replaceAll(" ", "---")+"\')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/navigation.svg\">&nbsp;"+messageSource.getMessage(gn.getNavigationName(),null,locale)+"</li>";
////				}
////				else {
////					graphTree += "<li id=\""+gn.getNavigationName().replaceAll(" ", "---")+gn.getId()+"\" class=\"model_list\" onclick=\"getDBlist(\'"+gn.getNavigationName()+"\',\'"+gn.getId()+"\','"+userRoleStr+"')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/modelImage.svg\">&nbsp;"+gn.getNavigationName()+"</li>";
////				}
//			}		
//			for(timeLineGraph rm: roadMapNames) {
//				if(role_details.isGraphDelete()==true)
//				{
//					System.out.println("parent folder roadmap");
//					
////				graphTree += "<li id=\""+rm.getId()+"\" class=\"model_list\" onclick=\"getRoadmap(\'"+rm.getroadmapName()+"\',\'"+rm.getId()+"\',\'"+rm.getCompanyName()+"\',\'"+rm.getParentID()+"\')\" oncontextmenu=\"on_context_menu_remove_roadmap(\'"+rm.getId()+"\',\'"+rm.getroadmapName()+rm.getId()+"\', \'"+folder.getFolder_name()+folder.getId()+"\',\'"+rm.getroadmapName()+"\',\'roadmap\')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/road.svg\">&nbsp;"+messageSource.getMessage(rm.getroadmapName(),null,locale)+"</li>";
//					graphTree += "<li id=\""+rm.getroadmapName().replaceAll(" ", "---")+rm.getId()+"\" class=\"model_list\" onclick=\"getRoadmap(\'"+rm.getroadmapName()+"\',\'"+rm.getId()+"\',\'"+rm.getCompanyName()+"\',\'"+rm.getParentID()+"\')\" oncontextmenu=\"on_context_menu_remove_roadmap(\'"+rm.getId()+"\',\'"+rm.getroadmapName()+rm.getId()+"\', \'"+folder.getFolder_name().replaceAll(" ", "---")+folder.getId()+"\',\'"+rm.getroadmapName()+"\',\'"+rm.getCompanyName()+"\',\'"+rm.getParentID()+"\',\'"+folder.getFolder_name()+"\')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/road.svg\">&nbsp;"+messageSource.getMessage(rm.getroadmapName(),null,locale)+"</li>";
//				}
//				else 
//				{
//					graphTree += "<li id=\""+rm.getroadmapName().replaceAll(" ", "---")+rm.getId()+"\" class=\"model_list\" onclick=\"getRoadmap(\'"+rm.getroadmapName()+"\',\'"+rm.getId()+"\',\'"+rm.getCompanyName()+"\',\'"+rm.getParentID()+"\')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/road.svg\">&nbsp;"+messageSource.getMessage(rm.getroadmapName(),null,locale)+"</li>";
//				}
//			}
			
			graphTree += "</ul>";
			graphTree += "</li>";
		}
//		
        
		
//		for(String f_key:allForeignKeys) {
//			List<graphFolders> foldersList = enterpriseDAO.getGraphFolders(f_key);
//			for(graphFolders folder:foldersList) {
//				String id= folder.getId();
//				String folderName = folder.getFolder_name();
//				String parentID = folder.getParent_id();
//				
//				
//				if(Integer.parseInt(parentID)!=previousFolderParent) {
//					graphTree+="<ul class=\"nested\">";
//					graphTree+="<li><span class=\"caret\">"+folderName+"</span></li>";
//					
//					graphTree+="</ul></li>";
//					parentIDindex++;
//				}else
//				//graphTree+="<ul class=\"nested\">";
//				graphTree+="<li><span class=\"caret\">"+folderName+"</span>";
//				//graphTree+="</ul>";
//				previousFolderParent= Integer.parseInt(parentID);
//			}
//			System.out.println(foldersList);
//		}
		
		
		graphTree+= "</ul>";
		/*
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			username = userDetail.getUsername();
		}
		List<String> graphNames = enterpriseDAO.getGraphNames(username);
		System.out.println(graphNames);
		String tree = "";
		for (String gn : graphNames) {
				tree+= "<li id=\'"+gn+"\' class=\"model_list\" onclick=\"getDBlist(\'"+gn+"\')\" oncontextmenu=\"on_context_menu_remove_graph('"+gn+"')\"><img draggable=\"false\" alt=\"circle\" width=\"20px\" height=\"20px\" src=\"resources/images/modelImage.svg\">"+gn+"</li>";
		}
		return tree;*/
		byte[] utfBytes = graphTree.getBytes("utf-8");
		return utfBytes;
		//return graphTree;
	}
//	attachments work ends here
	
//	@RequestMapping(value = "getDeletedTree", method = RequestMethod.GET)
//	public @ResponseBody String getDeletedTree(HttpSession session) throws JAXBException, FileNotFoundException {
//		String tree = "";
		
		
//	@RequestMapping(value = "/toAttribute")
//	public ResponseEntity<Object> attData(String dbName , String elementName, HttpSession session) throws IOException {
////		elementName = "Business_Actor";
//		List<attributesInformationModel> attributeDetailsList = enterpriseDAO.getAllAttributeDetails(dbName,elementName);
//		
//		System.out.println("Attribute_data: "+attributeDetailsList.get(0).getTargetRelationship_Element());
//		System.out.println(attributeDetailsList.getClass().getSimpleName());
//		
//		return (ResponseEntity<Object>) attributeDetailsList;
//	}
	
	@RequestMapping(value = "/renameDiagram")
	public @ResponseBody int renameDiagram(String lastdiagramName, String newdiagramName) {
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			username = userDetail.getUsername();
		}
		
		int a = enterpriseDAO.renameDiagram(lastdiagramName.replaceAll("---", " "), newdiagramName);
//		enterpriseDAO.updateObjectUpdatedDate("graphs","files",last_time_updated, graphID);
		return 1;
	}
	
	@RequestMapping(value = "/renameFilteredDiagram")
	public @ResponseBody List<graphFiles> renameFilteredDiagram(String lastdiagramName, String newdiagramName) {
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			username = userDetail.getUsername();
		}
		
		int a = enterpriseDAO.renameDiagram(lastdiagramName.replaceAll("---", " "), newdiagramName);
		List<graphFiles> filteredDiagram = enterpriseDAO.getFilteredDiagram(newdiagramName);
		

		for(graphFiles fd: filteredDiagram) {
			if(fd.getIsFiltered().equals("true")){
			//	gn.getFilteredDetails() = gn.getFilteredDetails().replaceAll("\"", "%%")
				fd.setFilteredDetails(fd.getFilteredDetails().replaceAll("\"", "%%"));
			}
		}
		
		return filteredDiagram;
	}
	
	@RequestMapping(value = "/renameCatalog")
	public @ResponseBody int renameCatalog(String lastcatalogName, String newcatalogName) {
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			username = userDetail.getUsername();
		}
		
		int a = enterpriseDAO.renameCatalog(lastcatalogName.replaceAll("---", " "), newcatalogName);
//		enterpriseDAO.updateObjectUpdatedDate("graphs","files",last_time_updated, graphID);
		return 1;
	}	
	@RequestMapping(value = "/renameMatrix")
	public @ResponseBody List<String> renameMatrix(String lastmatrixName, String newmatrixName) {
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			username = userDetail.getUsername();
		}
		
		List<String> data = enterpriseDAO.renameMatrix(lastmatrixName.replaceAll("---", " "), newmatrixName);
//		enterpriseDAO.updateObjectUpdatedDate("graphs","files",last_time_updated, graphID);
		return data;
	}	
	@RequestMapping(value = "/renameNavigation")
	public @ResponseBody int renameNavigation(String lastNavigationName, String newNavigationName) {
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			username = userDetail.getUsername();
		}
		
		int data = enterpriseDAO.renameNavigation(lastNavigationName.replaceAll("---", " "), newNavigationName);
//		enterpriseDAO.updateObjectUpdatedDate("graphs","files",last_time_updated, graphID);
		return 1;
	}
	@RequestMapping(value = "/renameRoadmap")
	public @ResponseBody int renameRoadmap(String lastRoadmapName, String newRoadmapName) {
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			username = userDetail.getUsername();
		}
		
		int data = enterpriseDAO.renameRoadmap(lastRoadmapName.replaceAll("---", " "), newRoadmapName);
//		enterpriseDAO.updateObjectUpdatedDate("graphs","files",last_time_updated, graphID);
		return 1;
	}	
	
	@RequestMapping(value = "/validateAttachmentFolderName", method = RequestMethod.GET)
	public @ResponseBody String validateAttachmentFolderName(@RequestParam String folderName){
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			username = userDetail.getUsername();
		}
		String getID = enterpriseDAO.validateAttachmentFolderName(folderName,username);
		return getID;
	}	
	
	@RequestMapping(value = "/createNewAttachmentFolderName", method = RequestMethod.GET)
	public @ResponseBody String createNewAttachmentFolderName(@RequestParam String id, String name, String folderName, String company_name, HttpSession session){
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			username = userDetail.getUsername();
		}
		
		String getID = enterpriseDAO.createNewAttachmentFolderName(id, folderName,username, company_name.replaceAll("---", " "));
		
//		String path = session.getServletContext().getRealPath("/");
//		String[] splitString = path.split("\\.metadata");
//		Locale locale = LocaleContextHolder.getLocale();
//		
////		For Local
//		String filePath = splitString[0] + remainingString;
//		File folder = new File(filePath);
//		File[] listOfFiles = folder.listFiles();
//		for (File file : listOfFiles) {
//		    if (file.isFile()) {
//		        try (OutputStream output = new FileOutputStream(filePath+"\\"+file.getName(), true)) {
//		            Properties prop = new Properties();
//		            // set the properties value
//		            prop.setProperty(folderName.replaceAll(" ", "_"), folderName);
//		            // save properties to project root folder
//		            prop.store(output, null);
//		            output.close();
//		        } catch (IOException io) {
//		            io.printStackTrace();
//		        }
//		    }
//		}
		
//		For Online
//		File folder = new File(path);
//		File[] listOfFiles = folder.listFiles();
//		for (File file : listOfFiles) {
//		    if (file.isFile()) {
//		        try (OutputStream output = new FileOutputStream(path+"\\"+file.getName(), true)) {
//		            Properties prop = new Properties();
//		            // set the properties value
//		            prop.setProperty(folderName.replaceAll(" ", "_"), folderName);
//		            // save properties to project root folder
//		            prop.store(output, null);
//		            output.close();
//		        } catch (IOException io) {
//		            io.printStackTrace();
//		        }
//		    }
//		}
		return getID;
	}	
	
	@RequestMapping(value = "/validateAttachmentName", method = RequestMethod.GET)
	public @ResponseBody String validateAttachmentName(String attachmentName, HttpSession session) {
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			username = userDetail.getUsername();
		}
		String company_name = (String) session.getAttribute("company_name");
		String attachmentName1 = enterpriseDAO.validateAttachmentName(attachmentName, company_name);
		return attachmentName1;
	}	
	
	@RequestMapping(value = "/createNewAttachmentFile", method = RequestMethod.GET)
	public @ResponseBody String createNewAttachmentFile(@RequestParam String id, String company_name, String attachmentName,String graph_json, HttpSession session){
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			username = userDetail.getUsername();
		}
//		String path = session.getServletContext().getRealPath("/");
//		String[] splitString = path.split("\\.metadata");
//		Locale locale = LocaleContextHolder.getLocale();	
//		
////		For Local
//		String filePath = splitString[0] + remainingString;
//		File folder = new File(filePath);
//		File[] listOfFiles = folder.listFiles();
//		for (File file : listOfFiles) {
//		    if (file.isFile()) {
//		        try (OutputStream output = new FileOutputStream(filePath+"\\"+file.getName(), true)) {
//		            Properties prop = new Properties();
//		            // set the properties value
//		            prop.setProperty(attachmentName.replaceAll(" ", "_"), attachmentName);
//		            // save properties to project root folder
//		            prop.store(output, null);
//		            output.close();
//		        } catch (IOException io) {
//		            io.printStackTrace();
//		        }
//		    }
//		}
		
//		For Online
//		File folder = new File(path);
//		File[] listOfFiles = folder.listFiles();
//		for (File file : listOfFiles) {
//		    if (file.isFile()) {
//		        try (OutputStream output = new FileOutputStream(path+"\\"+file.getName(), true)) {
//		            Properties prop = new Properties();
//		            // set the properties value
//		            prop.setProperty(attachmentName.replaceAll(" ", "_"), attachmentName);
//		            // save properties to project root folder
//		            prop.store(output, null);
//		            output.close();
//		        } catch (IOException io) {
//		            io.printStackTrace();
//		        }
//		    }
//		}
		enterpriseDAO.createNewAttachmentFile(id, company_name.replaceAll("---", " "), username, attachmentName,graph_json);
		String graphID = enterpriseDAO.getAttachmentIDFromFolder(username,id,attachmentName);
		System.out.println(graphID);
		return graphID;
	}	
	
	@RequestMapping(value = "/deleteAttachmentFolder", method = RequestMethod.GET)
	public @ResponseBody String deleteAttachmentFolder(@RequestParam int id){
//	public @ResponseBody List<graphFiles> deleteModelFolder(@RequestParam int id){
//		String username = "";
//		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//		if (!(auth instanceof AnonymousAuthenticationToken)) {
//			UserDetails userDetail = (UserDetails) auth.getPrincipal();
//			System.out.println(userDetail);
//			username = userDetail.getUsername();
//		}
		enterpriseDAO.deleteAttachmentFolder(id);
//		int folderNames = enterpriseDAO.deleteModelFolder(username);
		return null;
	}
	
	@RequestMapping(value = "/getRemovedAttachmentNames")
	public @ResponseBody byte[] getRemovedAttachmentNames(HttpSession session) throws UnsupportedEncodingException {
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			username = userDetail.getUsername();
		}
		String tree = "";
		String company_name = (String) session.getAttribute("company_name");
		List<graphFolders> foldersList = enterpriseDAO.getAttachmentFolders("0",username,"1", company_name);
		String ulID = foldersList.get(0).getFolder_name()+foldersList.get(0).getId();
		String parentFolderName = foldersList.get(0).getFolder_name();
		String parentFolderID = foldersList.get(0).getId();
		List<String> folderNamesAdded = new ArrayList<String>();
		List<String> folderNamesAddedIDs = new ArrayList<String>();
		List<graphFiles> attachmentNames = enterpriseDAO.getAttachmentRowData(username, company_name);
//		List<catalogFiles> catalogDetails = enterpriseDAO.getDeletedCatalogDetails(username);
//		List<matrixFiles> matrixDetails = enterpriseDAO.getDeletedMatrixDetails(username);
//		List<navigationFiles> navigationDetails = enterpriseDAO.getDeletedNavigationDetails(username);
		
		List<graphFolders> removedFolder = enterpriseDAO.getAttachmentRemovedFolders(username, company_name);
//		List<timeLineGraph> roadmapNames = enterpriseDAO.getRoadmapRowData(username, company_name);
		
		for(graphFolders gf: removedFolder) {
			tree+="<li id=\""+gf.getFolder_name().replaceAll(" ", "---")+gf.getId()+"2\" class=\"model_list "+gf.getFolder_name()+"\" style=\"padding-left: 40px\" oncontextmenu=\"on_context_menu_restore_attachment('"+gf.getId()+"', '"+gf.getFolder_name().replaceAll("\\s","---")+gf.getId()+"', '"+gf.getFolder_name()+"','"+ulID+"','folder','"+parentFolderName+"','"+parentFolderID+"');\"><i class=\"fa fa-folder\" aria-hidden=\"true\"></i>&nbsp;"+gf.getFolder_name()+"</li>";
			//tree+="<li id=\""+gf.getFolder_name()+gf.getId()+"2\" class=\"model_list "+gf.getFolder_name()+"\" oncontextmenu=\"on_context_menu_restore('"+gf.getId()+"', '"+gf.getFolder_name()+gf.getId()+"', '"+gf.getFolder_name()+"');\"><i class=\"fa fa-folder\" aria-hidden=\"true\"></i>&nbsp;"+removedFolder.get(0).getFolder_name()+"</li>";
			folderNamesAdded.add(removedFolder.get(0).getFolder_name());
			folderNamesAddedIDs.add(removedFolder.get(0).getId());
		}
		for(graphFiles gf: attachmentNames) {
	//		List<graphFolders> removedFolder = enterpriseDAO.getGraphRemovedFolders(gf.getParentID());
			List<String> folderName = enterpriseDAO.getAttachmentRowWithCondition("attachments","folders","folder_name","id",gf.getParentID());
			List<String> folderID = enterpriseDAO.getAttachmentRowWithCondition("attachments","folders","id","id",gf.getParentID());
			
	//		System.out.println("gf"+gf);
	//		System.out.println("folderName"+folderName);
	//		System.out.println("folderID"+folderID);
	//		if (removedFolder.size() != 0) {
	//			if(!folderNamesAdded.contains(folderName.get(0))) {
			if(!folderNamesAddedIDs.contains(gf.getParentID()))
					tree+="<li id=\""+gf.getModelName().replaceAll("[^a-zA-Z0-9]","---")+gf.getId()+"2\" class=\"model_list\" style=\"padding-left: 40px\" oncontextmenu=\"on_context_menu_restore_attachment('"+gf.getId()+"','"+gf.getModelName()+"','"+folderName.get(0)+folderID.get(0)+"','"+gf.getModelName().replaceAll("[^a-zA-Z0-9]","---")+gf.getId()+"')\"><i class=\"fa fa-paperclip\" aria-hidden=\"true\"></i>&nbsp;"+gf.getModelName()+"</li>";
	//			}
					
	//		}else {
	//			System.out.println(folderName);
	//			tree+="<li id=\""+gf.getModelName()+gf.getId()+"2\" class=\"model_list\" oncontextmenu=\"on_context_menu_restore('"+gf.getId()+"','"+gf.getModelName()+"','"+folderName.get(0)+folderID.get(0)+"','"+gf.getModelName()+gf.getId()+"')\"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/modelImage.svg\">&nbsp;"+gf.getModelName()+"</li>";
	//		}
	//			if(removedFolder.get(0).getFolder_name().equals(folderName.get(0))) {
	//				tree+="<li>"+removedFolder.get(0).getFolder_name()+"</li>";
	//			}else {
	//				System.out.println(folderName);
	//				tree+="<li id=\""+gf.getModelName()+gf.getId()+"2\" class=\"model_list\" oncontextmenu=\"on_context_menu_restore('"+gf.getId()+"','"+gf.getModelName()+"','"+folderName.get(0)+folderID.get(0)+"','"+gf.getModelName()+gf.getId()+"')\"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/modelImage.svg\">&nbsp;"+gf.getModelName()+"</li>";
	//			}
		}
//		for(catalogFiles cf:catalogDetails) {
//	//		System.out.println(cf);
//			String folderName = enterpriseDAO.getFolderNameFromID(cf.getParentID()).replaceAll("\\s","---");
//												//<li id="'+liID+'2" class="model_list '+parentFolder+'file" oncontextmenu="recycle_bin_context_menu_catalog_matrix(\''+modelID+'\', \''+liID+'\',\''+folderName+'\', \''+modelName+'\', \''+parentFolder+'\', \''+catalog_or_matrix+'\');"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/catalog.svg\">&nbsp;'+modelName+'</li>');
//									//<li id="oiu162" class="model_list LT---Folder1file					" oncontextmenu="recycle_bin_context_menu_catalog_matrix('16', 'oiu16','LT---Folder120', 'oiu', 'LT---Folder1', 'catalog');"><img style="width:20px; height:20px" draggable="false" src="resources/images/catalog.svg">&nbsp;oiu</li>
//			cf.setModelName(cf.getModelName().replaceAll("\\s","---"));
//			tree+="<li id=\""+cf.getModelName()+cf.getId()+"2\" class=\"model_list "+folderName+"file\" style=\"padding-left: 40px\" oncontextmenu=\"recycle_bin_context_menu_catalog_matrix(\'"+cf.getId()+"\', \'"+cf.getModelName()+cf.getId()+"\',\'"+folderName+cf.getParentID()+"\', \'"+cf.getModelName().replaceAll("---"," ")+"\', \'"+folderName+"\', \'catalog\');\"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/catalog.svg\">&nbsp;"+cf.getModelName().replaceAll("---"," ")+"</li>";
//		}
//		
//		for(matrixFiles mf:matrixDetails) {
//			String folderName = enterpriseDAO.getFolderNameFromID(mf.getParentID()).replaceAll("\\s","---");
//			tree+="<li id=\""+mf.getMatrix_name()+mf.getId()+"2\" class=\"model_list "+folderName+"file\" style=\"padding-left: 40px\" oncontextmenu=\"recycle_bin_context_menu_catalog_matrix('"+mf.getId()+"', '"+mf.getMatrix_name()+mf.getId()+"','"+folderName+mf.getParentID()+"', '"+mf.getMatrix_name()+"', '"+folderName+"', 'matrix');\"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/matrix.svg\">&nbsp;"+mf.getMatrix_name().replaceAll("---"," ")+"</li>";
//		}
//		for(timeLineGraph rm: roadmapNames) {
//			List<String> folderName = enterpriseDAO.getRowWithRoadCondition("graphs","folders","folder_name","id",rm.getParentID());
//			List<String> folderID = enterpriseDAO.getRowWithRoadCondition("graphs","folders","id","id",rm.getParentID());
//			
//			tree+="<li id=\""+rm.getroadmapName().replaceAll(" ", "---")+rm.getId()+"2\" class=\"model_list\" style=\"padding-left: 40px\" oncontextmenu=\"on_context_menu_restoreRoadmap('"+rm.getId()+"','"+rm.getroadmapName()+"','"+folderName.get(0)+folderID.get(0)+"','"+rm.getroadmapName()+rm.getId()+"','folder','"+rm.getCompanyName()+"','"+rm.getParentID()+"','"+folderID.get(0)+"')\"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/road.svg\">&nbsp;"+rm.getroadmapName()+"</li>";
//	//		tree+="<li id=\""+rm.getroadmapName().replaceAll(" ", "---")+rm.getId()+"2\" class=\"model_list\" oncontextmenu=\"on_context_menu_restore('"+rm.getId()+"','"+rm.getroadmapName()+"','"+folderName.get(0)+folderID.get(0)+"','"+rm.getroadmapName()+rm.getId()+"')\"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/road.svg\">&nbsp;"+rm.getroadmapName()+"</li>";
//		}
//		
//		for(navigationFiles nv:navigationDetails) {
//	//		System.out.println(cf);
//			String folderName = enterpriseDAO.getFolderNameFromID(nv.getParentID()).replaceAll("\\s","---");
//												//<li id="'+liID+'2" class="model_list '+parentFolder+'file" oncontextmenu="recycle_bin_context_menu_catalog_matrix(\''+modelID+'\', \''+liID+'\',\''+folderName+'\', \''+modelName+'\', \''+parentFolder+'\', \''+catalog_or_matrix+'\');"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/catalog.svg\">&nbsp;'+modelName+'</li>');
//									//<li id="oiu162" class="model_list LT---Folder1file					" oncontextmenu="recycle_bin_context_menu_catalog_matrix('16', 'oiu16','LT---Folder120', 'oiu', 'LT---Folder1', 'catalog');"><img style="width:20px; height:20px" draggable="false" src="resources/images/catalog.svg">&nbsp;oiu</li>
//			nv.setNavigationName(nv.getNavigationName().replaceAll("\\s","---"));
//			tree+="<li id=\""+nv.getNavigationName()+nv.getId()+"2\" class=\"model_list "+folderName+"file\" style=\"padding-left: 40px\" oncontextmenu=\"on_context_menu_restore_navigation(\'"+nv.getId()+"\', \'"+nv.getNavigationName()+"\',\'"+folderName+nv.getParentID()+"\', \'"+nv.getNavigationName().replaceAll("---"," ")+nv.getId()+"\', \'"+folderName+"\', \'navigation\');\"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/navigation.svg\">&nbsp;"+nv.getNavigationName().replaceAll("---"," ")+"</li>";
//		}		
	
		byte[] treeUtfBytes = tree.getBytes("utf-8");
	
		return treeUtfBytes;
	}	
	
	@RequestMapping(value = "/delAttachmentRowData", method = RequestMethod.GET)
	public @ResponseBody List<graphFiles> delAttachmentRowData(@RequestParam String graphID, HttpSession session){
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			username = userDetail.getUsername();
		}
		System.out.println("Inside graphID..."+graphID);
		enterpriseDAO.delAttachmentRowData(graphID);
		String company_name = (String) session.getAttribute("company_name");
		List<graphFiles> graphNames = enterpriseDAO.getAttachmentRowData(username, company_name);
		return graphNames;
	}

	@RequestMapping(value = "/restoreAttachmentFolder", method = RequestMethod.GET)
	public @ResponseBody String restoreAttachmentFolder(@RequestParam String folderName,@RequestParam String graphID, HttpSession session){
		String username = "";
		String tree = "";
		System.out.println("folderName"+folderName);
		System.out.println("graphID"+graphID);
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			userDetail = (UserDetails) auth.getPrincipal();
			username = userDetail.getUsername();
		}
		//Working here
		tree += "<ul id=\""+folderName+graphID+"\" class=\"nested active\">";
		
//		Get AttachmentNames
		String company_name = (String) session.getAttribute("company_name");
		List<graphFiles> graphNames = enterpriseDAO.restoreAttachmentFolder(graphID,username, company_name);
		System.out.println("graphNames"+graphNames);
		for(graphFiles gn: graphNames) {
			gn.getModelName();
			tree +="<li id=\""+gn.getModelName().replaceAll("[^a-zA-Z0-9]","---")+gn.getId()+"\" class=\"model_list "+folderName+"\" oncontextmenu=\"on_context_menu_remove_attachment('"+gn.getId()+"','"+gn.getModelName().replaceAll("[^a-zA-Z0-9]","---")+ gn.getId()+"','"+folderName + graphID+"','"+gn.getModelName().replaceAll(" ","---")+"','"+folderName+"')\">&nbsp;&nbsp;<i class=\"fa fa-paperclip\" aria-hidden=\"true\"></i>&nbsp;"+gn.getModelName()+"</li>";
		}
		
		tree+="</ul>";
		return tree;
	}
	@RequestMapping(value = "/restoreAttachmentData", method = RequestMethod.GET)
	public @ResponseBody String restoreAttachmentData(@RequestParam String graphID){
		enterpriseDAO.restoreAttachmentData(graphID);
		return "done";
	}
	@RequestMapping(value = "/deleteAttachmentFolderPermanently", method = RequestMethod.GET)
	public @ResponseBody String deleteAttachmentFolderPermanently(@RequestParam int graphID){
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			username = userDetail.getUsername();
		}
		int a = enterpriseDAO.deleteAttachmentFolderPermanently(graphID, username);
		if(a==1)
			return "done";
		else
			return "notSubmit";
	}	
	@RequestMapping(value = "/deleteAttachmentPermanently", method = RequestMethod.GET)
	public @ResponseBody String deleteAttachmentPermanently(@RequestParam int graphID){
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			username = userDetail.getUsername();
		}
		int a = enterpriseDAO.deleteAttachmentPermanently(graphID, username);
		if(a==1)
			return "done";
		else
			return "notSubmit";
	}	
	
	@RequestMapping(value="/addMultipleFileDataFromAttachment", method = RequestMethod.POST)
	public @ResponseBody byte[] addMultipleFileDataFromAttachment(MultipartHttpServletRequest request, HttpServletResponse response,HttpSession session) throws UnsupportedEncodingException{
		Map<String,Object> map = new HashMap<String,Object>();
		List<String> fileUploadedList = new ArrayList<String>();
		Iterator<String> itr =  request.getFileNames();
		MultipartFile mpf = null;
		while(itr.hasNext()){
			mpf = request.getFile(itr.next()); 
			try{
				String path = session.getServletContext().getRealPath("/");
				String fileName = mpf.getOriginalFilename();
//				String fileName = fileNameFrontEnd;
				fileName = fileName.replaceAll("\\p{Pd}", "-");
				for(int i = 0; i<fileName.length(); i++) {

				      // access each character
				      char a = fileName.charAt(i);
				      System.out.print(a + ", ");
				    }
				File convertFile = new File(path + "/" + fileName);
				convertFile.createNewFile();
				FileOutputStream fout = new FileOutputStream(convertFile);
				fout.write(mpf.getBytes());
				fout.close();
				fileUploadedList.add(mpf.getOriginalFilename().replace(" ", "-"));
			}catch(IOException e){
				e.printStackTrace(); 
			}
		}
	    String temp = "";
		// return temp;
		byte[] utfBytes = temp.getBytes("utf-8");
		return utfBytes;
	}	
	
	@RequestMapping(value = "/downloadAttachmentUploadedFile", method = RequestMethod.GET)
	public @ResponseBody ResponseEntity<Object> downloadAttachmentUploadedFile(@RequestParam String fileName,
			HttpSession session) throws JAXBException, FileNotFoundException, UnsupportedEncodingException {
		String path = session.getServletContext().getRealPath("/");
		String fileName1 = fileName;
		fileName = path+fileName;
		File file = new File(fileName);
		InputStreamResource resource = new InputStreamResource(new FileInputStream(fileName));
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Disposition", String.format("attachment; filename=\"%s\"", URLEncoder.encode(fileName1, "UTF-8")));
		headers.add("Cache-Control", "no-cache, no-store, must-revalidate");
		headers.add("Pragma", "no-cache");
		headers.add("Expires", "0");

		ResponseEntity<Object> responseEntity = ResponseEntity.ok().headers(headers).contentLength(file.length())
				.contentType(MediaType.parseMediaType("application/txt")).body(resource);

		return responseEntity;
	}	
	
	@RequestMapping(value = "/getattachmentsNamesForObject")
	public @ResponseBody byte[] getattachmentsNamesForObject(HttpSession session) throws UnsupportedEncodingException {
		ReloadableResourceBundleMessageSource messageSource=new ReloadableResourceBundleMessageSource();
		messageSource.setBasename("classpath:net/lt/eaze/resources/locale/messages");
		messageSource.setDefaultEncoding("UTF-8");
		messageSource.setUseCodeAsDefaultMessage(true);
		Locale locale = LocaleContextHolder.getLocale();
		
		roleDetails role_details = (roleDetails) session.getAttribute("role_details");
		String username = "";
		Collection<? extends GrantedAuthority> userRole = null;
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			userDetail = (UserDetails) auth.getPrincipal();
			username = userDetail.getUsername();
			userRole = userDetail.getAuthorities();
		}
		String userRoleStr = userRole.toArray()[0].toString();
		
		String graphTree = "";
		graphTree+="<ul id=\"attachment1\">";
		
		Map<String, List<String>> P_F_keys = new HashMap<String, List<String>>();
		
		String database = "graphs";
		String tableName = "roadmap";
			
		List<String> allForeignKeys = enterpriseDAO.getAllForeignKeys("graphs","folders","parent_id");
		int previousFolderParent = 0;
		
		String company_name = (String) session.getAttribute("company_name");
		List<graphFolders> foldersList = enterpriseDAO.getAttachmentFolders(allForeignKeys.get(0),username,"1", company_name);
		for(graphFolders folder:foldersList) {
			String id= folder.getId();
			String folderName = folder.getFolder_name();
			String parentID = folder.getParent_id();
			if(!userRole.toArray()[0].toString().equals("ROLE_READER")) {
				graphTree +="<li><span style=\"margin-bottom:0px;\" id=\""+folder.getFolder_name().replaceAll(" ", "---")+"\" class=\"caret\" >"+messageSource.getMessage(folderName.replaceAll("\\s+", "_"),null,locale)+"</span>";
			}
			else {
				graphTree +="<li><span id=\""+folder.getFolder_name().replaceAll(" ", "---")+"\" class=\"caret\">"+messageSource.getMessage(folderName.replaceAll("\\s+", "_"),null,locale)+"</span>";
			}
			graphTree+="<ul id=\""+folder.getFolder_name().replaceAll(" ", "---")+folder.getId()+"_attachment\" class=\"nested\">";
			
			List<graphFiles> attachmentNames = enterpriseDAO.getAttachmentNamesFromFolder(username,id,"1", company_name);
			
			
			List<graphFolders> foldersList1 = enterpriseDAO.getAttachmentFolders(id,username,"1", company_name);
			for(graphFolders folders1:foldersList1) {
				String id1= folders1.getId();
				String folderName1 = folders1.getFolder_name();
				String parentID1 = folders1.getParent_id();
				if(!userRole.toArray()[0].toString().equals("ROLE_READER")) {
					graphTree += "<li id=\""+folders1.getFolder_name().replaceAll(" ", "---")+"123\"><span style=\"margin-bottom:0px;\" class=\"caret "+folders1.getFolder_name().replaceAll(" ", "---")+"\" >"+messageSource.getMessage(folders1.getFolder_name().replaceAll("\\s+", "_"),null,locale)+"</span>";
				}
				else {
					graphTree += "<li id=\""+folders1.getFolder_name().replaceAll(" ", "---")+"123\"><span style=\"margin-bottom:0px;\" class=\"caret "+folders1.getFolder_name().replaceAll(" ", "---")+"\">"+messageSource.getMessage(folders1.getFolder_name().replaceAll("\\s+", "_"),null,locale)+"</span>";
				}
				graphTree+="<ul id=\""+folders1.getFolder_name().replaceAll(" ", "---")+folders1.getId()+"\" class=\"nested\">";
				List<graphFiles> attachmentNames1 = enterpriseDAO.getAttachmentNamesFromFolder(username,id1,"1", company_name);
				
				for(graphFiles gn: attachmentNames1) {
					if(role_details.isGraphDelete()==true)
					{					
						graphTree+= "<li id=\""+gn.getModelName().replaceAll(" ", "---")+gn.getId()+"\" class=\"model_list "+folders1.getFolder_name().replaceAll(" ", "---")+"\"  onclick=\"add_attachment_into_modal_table('"+gn.getModelName().replaceAll(" ", "---")+gn.getId()+"','"+gn.getModelName().replaceAll(" ", "---")+"')\">&nbsp;&nbsp;<i class=\"fa fa-paperclip\" aria-hidden=\"true\"></i>&nbsp;"+messageSource.getMessage(gn.getModelName(),null,locale)+"</li>";
					}
					else
					{
						graphTree+= "<li id=\""+gn.getModelName().replaceAll(" ", "---")+gn.getId()+"\" class=\"model_list "+folders1.getFolder_name().replaceAll(" ", "---")+"\" onclick=\"add_attachment_into_modal_table('"+gn.getModelName().replaceAll(" ", "---")+gn.getId()+"','"+gn.getModelName().replaceAll(" ", "---")+"')\">&nbsp;&nbsp;<i class=\"fa fa-paperclip\" aria-hidden=\"true\"></i>&nbsp;"+messageSource.getMessage(gn.getModelName().replaceAll("\\s+", "_"),null,locale)+"</li>";
					}
				}
				graphTree += "</ul>";
				graphTree += "</li>";
			}
			for(graphFiles gn: attachmentNames) {
				if(role_details.isGraphDelete()==true) {
					graphTree += "<li id=\""+gn.getModelName().replaceAll(" ", "---")+gn.getId()+"\" class=\"model_list\" onclick=\"add_attachment_into_modal_table('"+gn.getModelName().replaceAll(" ", "---")+gn.getId()+"','"+gn.getModelName().replaceAll(" ", "---")+"')\">&nbsp;&nbsp;<i class=\"fa fa-paperclip\" aria-hidden=\"true\"></i>&nbsp;"+messageSource.getMessage(gn.getModelName(),null,locale)+"</li>";
				}
				else {
					graphTree += "<li id=\""+gn.getModelName().replaceAll(" ", "---")+gn.getId()+"\" class=\"model_list\" onclick=\"add_attachment_into_modal_table('"+gn.getModelName().replaceAll(" ", "---")+gn.getId()+"','"+gn.getModelName().replaceAll(" ", "---")+"')\">&nbsp;&nbsp;<i class=\"fa fa-paperclip\" aria-hidden=\"true\"></i>&nbsp;"+messageSource.getMessage(gn.getModelName().replaceAll("\\s+", "_"),null,locale)+"</li>";
				}
			}
			
			graphTree += "</ul>";
			graphTree += "</li>";
		}
		graphTree+= "</ul>";
		byte[] utfBytes = graphTree.getBytes("utf-8");
		return utfBytes;
	}
	@RequestMapping(value = "/getUserName")
	public @ResponseBody String getUserName() {
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			username = userDetail.getUsername();
		}
		
//		enterpriseDAO.updateObjectUpdatedDate("graphs","files",last_time_updated, graphID);
		return username;
	}

	@RequestMapping(value = "/validateCatalogScriptName", method = RequestMethod.GET)
	public @ResponseBody String validateCatalogScriptName(String catalog_script_name, HttpSession session) {
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			username = userDetail.getUsername();
		}
		String company_name = (String) session.getAttribute("company_name");
		String scriptNameCheck = enterpriseDAO.validateCatalogScriptName(catalog_script_name, company_name);
		return scriptNameCheck;
	}
	
	@RequestMapping(value = "/createOrEditCatalogScripts")
	public @ResponseBody int createOrEditCatalogScripts(String action, String catalog_name,String scriptName,@RequestParam(value = "scriptColumns[]") List<String> scriptColumns, HttpSession session ) {
		String scriptColumnsStr = "";
		for(String obj:scriptColumns) {
			scriptColumnsStr+=obj+";";
		}
		scriptColumnsStr = scriptColumnsStr.substring(0, scriptColumnsStr.length() - 1);
		
		String company_name = (String) session.getAttribute("company_name");
		enterpriseDAO.createOrEditCatalogScripts(action, catalog_name, scriptName, scriptColumnsStr,company_name);
		
		System.out.println(action +","+ catalog_name +","+ scriptName +","+ scriptColumnsStr);
		return 1;
	}
	
	@RequestMapping(value = "/getCatalogScriptColumns", method = RequestMethod.GET)
	public @ResponseBody String getCatalogScriptColumns(String scriptName, HttpSession session) {
		String company_name = (String) session.getAttribute("company_name");
		String scriptColumns = enterpriseDAO.getCatalogScriptColumns(scriptName, company_name);
		return scriptColumns;
	}
	
	@RequestMapping(value = "/deleteCatalogScripts", method = RequestMethod.GET)
	public @ResponseBody int deleteCatalogScripts(String scriptName, HttpSession session) {
		String company_name = (String) session.getAttribute("company_name");
		int scriptColumns = enterpriseDAO.deleteCatalogScripts(scriptName, company_name);
		return scriptColumns;
	}
	
	@GetMapping("/pdf/students")
	public void generatePdf(HttpServletResponse response) throws DocumentException, IOException {
		
		response.setContentType("application/pdf");
		DateFormat dateFormat = new SimpleDateFormat("YYYY-MM-DD:HH:MM:SS");
		String currentDateTime = dateFormat.format(new Date());
		String headerkey = "Content-Disposition";
		String headervalue = "attachment; filename=pdf_" + currentDateTime + ".pdf";
		response.setHeader(headerkey, headervalue);
		
//		List<Student> studentList = service.findAllStudents();
//		
		catalogPDF_Generator generator = new catalogPDF_Generator();
//		generator.setStudentList(studentList);
		generator.generate(response);
		
	}
	
	@RequestMapping(value="/truncateAttachmentClear", method = RequestMethod.GET)
	public @ResponseBody String truncateAttachmentClear(HttpSession session, ModelAndView model, HttpServletResponse response) {
		dbName = unif.getDbName();
		try {
			enterpriseDAO.truncateAttachmentClear(dbName);
			return "Database truncation done!";
		} catch (Exception e) {
			return "Error while doing truncate database!";
		}
	}	
//	@GetMapping("/downloadCatalogAsPDF")
//	public void downloadCatalogAsPDF(@RequestBody Catalog catalog,HttpSession session,HttpServletResponse response) throws JAXBException, DecoderException, DocumentException, IOException{
//		response.setContentType("application/pdf");
//		String headerkey = "Content-Disposition";
//		String headervalue = "attachment; filename=pdf_" + catalog.getCatalogName() + ".pdf";
//		response.setHeader(headerkey, headervalue);
//		
////		List<Student> studentList = service.findAllStudents();
////		
//		catalogPDF_Generator generator = new catalogPDF_Generator();
////		generator.setStudentList(studentList);
//		generator.generate(response);
//	}
	@RequestMapping(value = "/downloadCatalogAsPDF", method = RequestMethod.POST, produces = MediaType.APPLICATION_PDF_VALUE)
	public ResponseEntity<InputStreamResource> downloadCatalogAsPDF(@RequestBody Catalog catalog,HttpSession session) throws DocumentException, IOException {
		session.setAttribute("downloadCatalogDetails", catalog);
//		var cities = (List<City>) cityService.findAll();
//		ByteArrayInputStream bis = GeneratePdfReport.citiesReport(cities);
//		catalogPDF_Generator gen = new catalogPDF_Generator();
//
//		ByteArrayInputStream generator = gen.generate(catalog);
//		
//
//		HttpHeaders headers = new HttpHeaders();
//		headers.add("Content-Disposition", "inline; filename=citiesreport.pdf");
//
//		return ResponseEntity.ok().headers(headers).contentType(MediaType.APPLICATION_PDF)
//				.body(new InputStreamResource(generator));
		return null;
	}
	
	@RequestMapping(value = "/downloadCatalogAsPDF1", method = RequestMethod.GET, produces = MediaType.APPLICATION_PDF_VALUE)
	public ResponseEntity<InputStreamResource> downloadCatalogAsPDF1(HttpSession session) throws DocumentException, IOException {
		Catalog catalog = (Catalog) session.getAttribute("downloadCatalogDetails");
		
		////// arabic work start
		
		String path = session.getServletContext().getRealPath("/");
		String[] splitString = path.split("\\.metadata");
		Locale locale = LocaleContextHolder.getLocale();
		System.out.println("locale: "+locale);
		List<String> attributeNamesForArabic = new ArrayList<String>();
		List<String> englishAttributeNamesForArabic = new ArrayList<String>();
		List<String> arabicAttributeNamesForArabic = new ArrayList<String>();
		HashMap<String, String> messages_data=new HashMap<String, String>();
		HashMap<String, String> messages_data_2=new HashMap<String, String>();
		if(locale.toString().equals("ar")) {
	//		Locale locale = new Locale("en");
			
	//		For Local
			String filePath = splitString[0] + remainingString;
			FileReader reader=new FileReader(filePath+"\\\\messages_"+locale+".properties");
			FileReader readerEnglish=new FileReader(filePath+"\\\\messages_en.properties");
			
//			For Online
//			FileReader reader=new FileReader(path+"\\\\messages_"+locale+".properties");
//			FileReader readerEnglish=new FileReader(path+"\\\\messages_en.properties");
			
		    Properties p=new Properties();  
		    p.load(reader);   
		    Set<Object> keys = p.keySet();
		    for(Object k:keys){
		        String key=(String) k;
		        String value=p.getProperty(key);
		        messages_data_2.put(key, value);
		        messages_data.put(value, key);
		    }
		    System.out.println("ttt: "+catalog.getTheads().get(0).getTh());
			
		    
		    
		    
		    for(String col:catalog.getTheads().get(0).getTh()) {
		    	attributeNamesForArabic.add(messages_data.get(col));
		    }
		    Properties p1=new Properties();  
		    p1.load(readerEnglish);   
		    for(String col:attributeNamesForArabic) {
		    	englishAttributeNamesForArabic.add(p1.getProperty(col));
		    }
		}
		///////  arabic work end
		
		
		
//		var cities = (List<City>) cityService.findAll();
//		ByteArrayInputStream bis = GeneratePdfReport.citiesReport(cities);
		catalogPDF_Generator gen = new catalogPDF_Generator();

		ByteArrayInputStream generator = gen.generate(catalog,servletContext,session,englishAttributeNamesForArabic,messages_data_2,locale.toString());
		

		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Disposition", "inline; filename=citiesreport.pdf");

		return ResponseEntity.ok().headers(headers).contentType(MediaType.APPLICATION_PDF)
				.body(new InputStreamResource(generator));
	}
	
	@RequestMapping(value = "/imageCheck", method = RequestMethod.GET)
	public void getImageAsByteArray(HttpServletResponse response) throws IOException {
		final InputStream in = servletContext.getResourceAsStream("/resources/images/akbarkhan.jpg");
		response.setContentType(MediaType.IMAGE_JPEG_VALUE);
		IOUtils.copy(in, response.getOutputStream());
	}	
	
	@RequestMapping(value = "/saveChartName", method = RequestMethod.POST)
	public @ResponseBody String saveChartName(String chartContainerId, String getChartName){
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			username = userDetail.getUsername();
		}
		enterpriseDAO.saveChartName(chartContainerId, getChartName, username);
		return "1";
	}
	
	
	@RequestMapping(value = "/changeTabName", method = RequestMethod.POST)
	public @ResponseBody String changeTabName(String oldLabel, String newLabel){
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			username = userDetail.getUsername();
		}
		enterpriseDAO.changeTabName(oldLabel, newLabel, username);
		return "1";
	}

	@RequestMapping(value = "/imageCheck2", method = RequestMethod.GET)
	public void imageCheck2(HttpServletResponse response) throws IOException {
		
	
		File file = new File("/resources/images/akbarkhan.jpg");
		InputStream resource = servletContext.getResourceAsStream("/resources/images/akbarkhan.jpg");
		Resource resource1 = new ServletContextResource(servletContext, "/resources/images/akbarkhan.jpg");
		File resourceFile = resource1.getFile();
		
		System.out.println("resourceFile: "+resourceFile);
		return;
	}
	
	@RequestMapping(value = "/getBusinessProcessNames")
	public @ResponseBody byte[] getBusinessProcessNames(HttpSession session) throws UnsupportedEncodingException {
		ReloadableResourceBundleMessageSource messageSource=new ReloadableResourceBundleMessageSource();
		messageSource.setBasename("classpath:net/lt/eaze/resources/locale/messages");
		messageSource.setDefaultEncoding("UTF-8");
		messageSource.setUseCodeAsDefaultMessage(true);
		Locale locale = LocaleContextHolder.getLocale();
		roleDetails role_details = (roleDetails) session.getAttribute("role_details");
		String username = "";
		Collection<? extends GrantedAuthority> userRole = null;
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			userDetail = (UserDetails) auth.getPrincipal();
			username = userDetail.getUsername();
			userRole = userDetail.getAuthorities();
		}
		String userRoleStr = userRole.toArray()[0].toString();
		String graphTree = "";
		graphTree+="<ul id=\"businessModel\">";
		Map<String, List<String>> P_F_keys = new HashMap<String, List<String>>();
		String database = "graphs";
		String tableName = "roadmap";
		List<String> allForeignKeys = enterpriseDAO.getAllForeignKeys("graphs","folders","parent_id");
		int previousFolderParent = 0;
		String company_name = (String) session.getAttribute("company_name");
		List<graphFolders> foldersList = enterpriseDAO.getBusinessProcessFolders(allForeignKeys.get(0),username,"1", company_name);
		for(graphFolders folder:foldersList) {
			String id= folder.getId();
			String folderName = folder.getFolder_name();
			String parentID = folder.getParent_id();
			if(!userRole.toArray()[0].toString().equals("ROLE_READER")) {
				graphTree +="<li><p style=\"margin-bottom:0px;\" id=\""+folder.getFolder_name().replaceAll(" ", "---")+"\" class=\"caret\"  oncontextmenu=\"on_context_menu_business_Process('"+folder.getFolder_name().replaceAll(" ", "---")+"','"+folder.getFolder_name().replaceAll(" ", "---")+folder.getId()+"','"+id+"','"+parentID+"');\">"+messageSource.getMessage(folderName.replaceAll("\\s+", "_"),null,locale)+"</p>";
			}
			else {
				graphTree +="<li><span id=\""+folder.getFolder_name().replaceAll(" ", "---")+"\" class=\"caret\">"+messageSource.getMessage(folderName.replaceAll("\\s+", "_"),null,locale)+"</span>";
			}
			graphTree+="<ul id=\""+folder.getFolder_name().replaceAll(" ", "---")+folder.getId()+"_businessProcess\" class=\"nested\">";
			List<graphFiles> businessProcessName = enterpriseDAO.getBusinessProcessNamesFromFolder(username,id,"1", company_name);
			List<graphFolders> foldersList1 = enterpriseDAO.getBusinessProcessFolders(id,username,"1", company_name);
			for(graphFolders folders1:foldersList1) {
				String id1= folders1.getId();
				String folderName1 = folders1.getFolder_name();
				String parentID1 = folders1.getParent_id();
				if(!userRole.toArray()[0].toString().equals("ROLE_READER")) {
					graphTree += "<li id=\""+folders1.getFolder_name().replaceAll("[^a-zA-Z0-9]","_").replaceAll(" ", "_").replaceAll(" ", "---")+"123\"><p style=\"margin-bottom:0px;\" class=\"caret "+folders1.getFolder_name().replaceAll(" ", "---")+"\" oncontextmenu=\"on_context_menu_business_Process('"+folder.getFolder_name().replaceAll(" ", "---")+"','"+folders1.getFolder_name().replaceAll(" ", "---")+folders1.getId()+"','"+id1+"', '"+folders1.getFolder_name().replaceAll(" ", "---")+"','"+parentID1+"','"+folder.getFolder_name().replaceAll(" ", "---")+folder.getId()+"','folder')\">"+messageSource.getMessage(folders1.getFolder_name().replaceAll("\\s+", "_"),null,locale)+"</p>";
				}
				else {
					graphTree += "<li id=\""+folders1.getFolder_name().replaceAll("[^a-zA-Z0-9]","_").replaceAll(" ", "_").replaceAll(" ", "---")+"123\"><p style=\"margin-bottom:0px;\" class=\"caret "+folders1.getFolder_name().replaceAll(" ", "---")+"\">"+messageSource.getMessage(folders1.getFolder_name().replaceAll("\\s+", "_"),null,locale)+"</p>";
				}
				graphTree+="<ul id=\""+folders1.getFolder_name().replaceAll(" ", "---")+folders1.getId()+"\" class=\"nested\">";
				List<graphFiles> attachmentNames1 = enterpriseDAO.getBusinessProcessNamesFromFolder(username,id1,"1", company_name);
				for(graphFiles gn: attachmentNames1) {
					if(role_details.isGraphDelete()==true)
					{					
						graphTree+= "<li id=\""+gn.getModelName().replaceAll("[^a-zA-Z0-9]","---")+gn.getId()+"\" class=\"model_list "+folders1.getFolder_name().replaceAll(" ", "---")+"\"  onclick=\"getBusinessProcesslist(\'"+gn.getModelName()+"\',\'"+gn.getId()+"\')\" oncontextmenu=\"on_context_menu_remove_business_process('"+gn.getId()+"',\'"+gn.getModelName().replaceAll("[^a-zA-Z0-9]","---")+gn.getId()+"\', \'"+folders1.getFolder_name().replaceAll(" ", "---")+folders1.getId()+"\',\'"+gn.getModelName().replaceAll(" ", "---")+"\',\'"+folders1.getFolder_name().replaceAll(" ", "---")+"\')\">&nbsp;&nbsp;<i class=\"fa fa-cube\" aria-hidden=\"true\"></i>&nbsp;"+messageSource.getMessage(gn.getModelName(),null,locale)+"</li>";
					}
					else
					{
						graphTree+= "<li id=\""+gn.getModelName().replaceAll("[^a-zA-Z0-9]","---")+gn.getId()+"\" class=\"model_list "+folders1.getFolder_name().replaceAll(" ", "---")+"\" >&nbsp;&nbsp;<i class=\"fa fa-paperclip\" aria-hidden=\"true\"></i>&nbsp;"+messageSource.getMessage(gn.getModelName().replaceAll("\\s+", "_"),null,locale)+"</li>";
					}
				}
				graphTree += "</ul>";
				graphTree += "</li>";
			}
			for(graphFiles gn: businessProcessName) {
				if(role_details.isGraphDelete()==true) {
					graphTree += "<li id=\""+gn.getModelName().replaceAll("[^a-zA-Z0-9]","---")+gn.getId()+"\" class=\"model_list\"  oncontextmenu=\"on_context_menu_business_Process(\'"+gn.getId()+"\',\'"+gn.getModelName().replaceAll(" ", "---")+gn.getId()+"\', \'"+folder.getFolder_name()+folder.getId()+"\',\'"+gn.getModelName().replaceAll(" ", "---")+"\')\">&nbsp;&nbsp;<i class=\"fa fa-paperclip\" aria-hidden=\"true\"></i>&nbsp;"+messageSource.getMessage(gn.getModelName(),null,locale)+"</li>";
				}
				else {
					graphTree += "<li id=\""+gn.getModelName().replaceAll("[^a-zA-Z0-9]","---")+gn.getId()+"\" class=\"model_list\" >&nbsp;&nbsp;<i class=\"fa fa-paperclip\" aria-hidden=\"true\"></i>&nbsp;"+gn.getModelName()+"</li>";
				}
			}
			graphTree += "</ul>";
			graphTree += "</li>";
		}
		graphTree+= "</ul>";
		byte[] utfBytes = graphTree.getBytes("utf-8");
		return utfBytes;
	}	
	
	@RequestMapping(value = "/createNewBusinessProcessFolderName", method = RequestMethod.GET)
	public @ResponseBody int createNewBusinessProcessFolderName(@RequestParam String id, String name, String folderName, String company_name, HttpSession session){
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			username = userDetail.getUsername();
		}
		
		int getID = enterpriseDAO.createNewBusinessProcessFolderName(id, folderName,username, company_name.replaceAll("---", " "));
		
//		String path = session.getServletContext().getRealPath("/");
//		String[] splitString = path.split("\\.metadata");
//		Locale locale = LocaleContextHolder.getLocale();
//		
////		For Local
//		String filePath = splitString[0] + remainingString;
//		File folder = new File(filePath);
//		File[] listOfFiles = folder.listFiles();
//		for (File file : listOfFiles) {
//		    if (file.isFile()) {
//		        try (OutputStream output = new FileOutputStream(filePath+"\\"+file.getName(), true)) {
//		            Properties prop = new Properties();
//		            // set the properties value
//		            prop.setProperty(folderName.replaceAll(" ", "_"), folderName);
//		            // save properties to project root folder
//		            prop.store(output, null);
//		            output.close();
//		        } catch (IOException io) {
//		            io.printStackTrace();
//		        }
//		    }
//		}
		
//		For Online
//		File folder = new File(path);
//		File[] listOfFiles = folder.listFiles();
//		for (File file : listOfFiles) {
//		    if (file.isFile()) {
//		        try (OutputStream output = new FileOutputStream(path+"\\"+file.getName(), true)) {
//		            Properties prop = new Properties();
//		            // set the properties value
//		            prop.setProperty(folderName.replaceAll(" ", "_"), folderName);
//		            // save properties to project root folder
//		            prop.store(output, null);
//		            output.close();
//		        } catch (IOException io) {
//		            io.printStackTrace();
//		        }
//		    }
//		}
		return getID;
	}
	
	@RequestMapping(value = "/createNewBusinessProcessFile", method = RequestMethod.GET)
	public @ResponseBody HashMap<String, String> createNewBusinessProcessFile(@RequestParam String id, String company_name, String businessProcessName,String graph_json, HttpSession session){
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			username = userDetail.getUsername();
		}
		
		String path = session.getServletContext().getRealPath("/");
		String remainingString= "resources/bpmnFiles/"+businessProcessName+"_businessProcess.bpmn";
//		String[] splitString = path.split("\\.metadata");
//		String folderPath = path + remainingString;
		String fileNameWithPath = path+""+remainingString;
		System.out.println("LogFileName: "+fileNameWithPath);
		try {    
			FileWriter fw=new FileWriter(fileNameWithPath);    
			fw.write(graph_json);    
			fw.close();    
		} catch(Exception err){
			System.out.println(err);
		}		
//		String path = session.getServletContext().getRealPath("/");
//		String[] splitString = path.split("\\.metadata");
//		Locale locale = LocaleContextHolder.getLocale();	
//		
////		For Local
//		String filePath = splitString[0] + remainingString;
//		File folder = new File(filePath);
//		File[] listOfFiles = folder.listFiles();
//		for (File file : listOfFiles) {
//		    if (file.isFile()) {
//		        try (OutputStream output = new FileOutputStream(filePath+"\\"+file.getName(), true)) {
//		            Properties prop = new Properties();
//		            // set the properties value
//		            prop.setProperty(graphname.replaceAll(" ", "_"), graphname);
//		            // save properties to project root folder
//		            prop.store(output, null);
//		            output.close();
//		        } catch (IOException io) {
//		            io.printStackTrace();
//		        }
//		    }
//		}
		
//		For Online
//		File folder = new File(path);
//		File[] listOfFiles = folder.listFiles();
//		for (File file : listOfFiles) {
//		    if (file.isFile()) {
//		        try (OutputStream output = new FileOutputStream(path+"\\"+file.getName(), true)) {
//		            Properties prop = new Properties();
//		            // set the properties value
//		            prop.setProperty(graphname.replaceAll(" ", "_"), graphname);
//		            // save properties to project root folder
//		            prop.store(output, null);
//		            output.close();
//		        } catch (IOException io) {
//		            io.printStackTrace();
//		        }
//		    }
//		}
		int getID = enterpriseDAO.createNewBusinessProcessFile(id, company_name.replaceAll("---", " "), username, businessProcessName,remainingString);
		String graphID = enterpriseDAO.getBusinessProcessIDFromFolder(username,id,businessProcessName);
		System.out.println("graphID"+graphID);
		System.out.println("getID"+getID);
		String getIDStr = ""+getID+"";
		HashMap<String, String> response = new HashMap<String, String>();
		response.put("graphID",graphID);
		response.put("getID",getIDStr);
		
		return response;
	}
	@RequestMapping(value = "/getRemovedBusinessProcessNames")
	public @ResponseBody byte[] getRemovedBusinessProcessNames(HttpSession session) throws UnsupportedEncodingException {
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			username = userDetail.getUsername();
		}
		String tree = "";
		String company_name = (String) session.getAttribute("company_name");
		List<graphFolders> foldersList = enterpriseDAO.getBusinessProcessFolders("0",username,"1", company_name);
		String ulID = foldersList.get(0).getFolder_name()+foldersList.get(0).getId();
		String parentFolderName = foldersList.get(0).getFolder_name();
		String parentFolderID = foldersList.get(0).getId();
		List<String> folderNamesAdded = new ArrayList<String>();
		List<String> folderNamesAddedIDs = new ArrayList<String>();
		List<graphFiles> businessProcessNames = enterpriseDAO.getBusinessProcessRowData(username, company_name);
		List<graphFolders> removedFolder = enterpriseDAO.getBusinessProcessRemovedFolders(username, company_name);
		for(graphFolders gf: removedFolder) {
			tree+="<li id=\""+gf.getFolder_name().replaceAll(" ", "---")+gf.getId()+"2\" class=\"model_list "+gf.getFolder_name()+"\" style=\"padding-left: 40px\" oncontextmenu=\"on_context_menu_restore_business_process('"+gf.getId()+"', '"+gf.getFolder_name().replaceAll("\\s","---")+gf.getId()+"', '"+gf.getFolder_name()+"','"+ulID+"','folder','"+parentFolderName+"','"+parentFolderID+"');\"><i class=\"fa fa-folder\" aria-hidden=\"true\"></i>&nbsp;"+gf.getFolder_name()+"</li>";
			folderNamesAdded.add(removedFolder.get(0).getFolder_name());
			folderNamesAddedIDs.add(removedFolder.get(0).getId());
		}
		for(graphFiles gf: businessProcessNames) {
			List<String> folderName = enterpriseDAO.getAttachmentRowWithCondition("graphs","business_process_folders","folder_name","id",gf.getParentID());
			List<String> folderID = enterpriseDAO.getAttachmentRowWithCondition("graphs","business_process_folders","id","id",gf.getParentID());
			if(!folderNamesAddedIDs.contains(gf.getParentID()))
					tree+="<li id=\""+gf.getModelName().replaceAll("[^a-zA-Z0-9]","---")+gf.getId()+"2\" class=\"model_list\" style=\"padding-left: 40px\" oncontextmenu=\"on_context_menu_restore_business_process('"+gf.getId()+"','"+gf.getModelName()+"','"+folderName.get(0)+folderID.get(0)+"','"+gf.getModelName().replaceAll("[^a-zA-Z0-9]","---")+gf.getId()+"')\"><i class=\"fa fa-paperclip\" aria-hidden=\"true\"></i>&nbsp;"+gf.getModelName()+"</li>";
		}
		byte[] treeUtfBytes = tree.getBytes("utf-8");
		return treeUtfBytes;
	}
	@RequestMapping(value = "/deleteBusinessProcessFolder", method = RequestMethod.GET)
	public @ResponseBody String deleteBusinessProcessFolder(@RequestParam int id){
		enterpriseDAO.deleteBusinessProcessFolder(id);
		return null;
	}	
	@RequestMapping(value = "/restoreBusinessProcessFolder", method = RequestMethod.GET)
	public @ResponseBody String restoreBusinessProcessFolder(@RequestParam String folderName,@RequestParam String graphID, HttpSession session){
		String username = "";
		String tree = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			userDetail = (UserDetails) auth.getPrincipal();
			username = userDetail.getUsername();
		}
		//Working here
		tree += "<ul id=\""+folderName+graphID+"\" class=\"nested active\">";
//		Get BusinessProcessNames
		String company_name = (String) session.getAttribute("company_name");
		List<graphFiles> businessProcessNames = enterpriseDAO.restoreBusinessProcessFolder(graphID,username, company_name);
		for(graphFiles gn: businessProcessNames) {
			gn.getModelName();
			tree +="<li id=\""+gn.getModelName().replaceAll("[^a-zA-Z0-9]","---")+gn.getId()+"\" class=\"model_list "+folderName+"\" onclick=\"getBusinessProcesslist(\'"+gn.getModelName()+"\',\'"+gn.getId()+")'\" oncontextmenu=\"on_context_menu_remove_business_process('"+gn.getId()+"','"+gn.getModelName().replaceAll("[^a-zA-Z0-9]","---")+ gn.getId()+"','"+folderName + graphID+"','"+gn.getModelName().replaceAll(" ","---")+"','"+folderName+"')\">&nbsp;&nbsp;<i class=\"fa fa-cube\" aria-hidden=\"true\"></i>&nbsp;"+gn.getModelName()+"</li>";
		}
		
		tree+="</ul>";
		return tree;
	}
	@RequestMapping(value = "/deleteBusinessProcessFolderPermanently", method = RequestMethod.GET)
	public @ResponseBody String deleteBusinessProcessFolderPermanently(@RequestParam int graphID){
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			username = userDetail.getUsername();
		}
		int a = enterpriseDAO.deleteBusinessProcessFolderPermanently(graphID, username);
		if(a==1)
			return "done";
		else
			return "notSubmit";
	}
	@RequestMapping(value = "/delBusinessProcessRowData", method = RequestMethod.GET)
	public @ResponseBody List<graphFiles> delBusinessProcessRowData(@RequestParam String graphID, HttpSession session){
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			username = userDetail.getUsername();
		}
		enterpriseDAO.delBusinessProcessRowData(graphID);
		String company_name = (String) session.getAttribute("company_name");
		List<graphFiles> BusinessProcessNames = enterpriseDAO.getBusinessProcessRowData(username, company_name);
		return BusinessProcessNames;
	}
	@RequestMapping(value = "/restoreBusinessProcessData", method = RequestMethod.GET)
	public @ResponseBody String restoreBusinessProcessData(@RequestParam String graphID){
		enterpriseDAO.restoreBusinessProcessData(graphID);
		return "done";
	}	
	@RequestMapping(value = "/deleteBusinessProcessPermanently", method = RequestMethod.GET)
	public @ResponseBody String deleteBusinessProcessPermanently(@RequestParam int graphID){
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			username = userDetail.getUsername();
		}
		int a = enterpriseDAO.deleteBusinessProcessPermanently(graphID, username);
		if(a==1)
			return "done";
		else
			return "notSubmit";
	}
	@RequestMapping(value = "/checkAllFileStatus", method = RequestMethod.GET)
	public @ResponseBody String checkAllFileStatus(String graphID, String tableName) {
		String object_name1 = enterpriseDAO.checkAllFileStatus(graphID, tableName).get(0);
		return object_name1;
	}	
	@RequestMapping(value = "/getAllGraphLastDate", method = RequestMethod.GET)
	public @ResponseBody String getAllGraphLastDate(@RequestParam String graphID, String tableName, 
			HttpSession session) {
		List<String> last_time_updated = enterpriseDAO.getAllGraphLastDate(dbName, graphID, tableName);
		return last_time_updated.get(0);
	}
	@RequestMapping(value = "/getAllGraph", method = RequestMethod.GET)
	public @ResponseBody byte[] getAllgraph(String dbname, String graphID, String graphName, String tableName, HttpSession session) throws UnsupportedEncodingException {
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			userDetail = (UserDetails) auth.getPrincipal();
			username = userDetail.getUsername();
		}
		String company_name = (String) session.getAttribute("company_name");
		String graph = enterpriseDAO.getAllGraph(dbname, username, tableName,graphID, graphName,company_name);
		byte[] utfBytes = graph.getBytes("utf-8");
		return utfBytes;
//		return graph;
	}	
	@RequestMapping(value = "/saveBusinessProcess")
	public @ResponseBody String saveBusinessProcess(String graph_json, String graphname,String graphID,String last_time_updated,HttpSession session) {
		String path = session.getServletContext().getRealPath("/");
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			username = userDetail.getUsername();
		}
		String remainingString= "resources/bpmnFiles/"+graphname+"_businessProcess.bpmn";
//		String[] splitString = path.split("\\.metadata");
//		String folderPath = path + remainingString;
		String fileNameWithPath = path+remainingString;
		System.out.println("LogFileName: "+fileNameWithPath);
		try {    
			FileWriter fw=new FileWriter(fileNameWithPath);    
			fw.write(graph_json);    
			fw.close();    
		} catch(Exception err){
			System.out.println(err);
		}
		int a = enterpriseDAO.saveBusinessProcessJson(remainingString, username, graphname,graphID);
		enterpriseDAO.updateBusinessProcessUpdatedDate("graphs","business_process_files",last_time_updated, graphID);
		return "Graph has been saved!";
	}	
}