package net.lt.eaze.model;

public class myPage {
int id;
String symbol;
String  element_name;
String created_date;
String updated_date;
String  user_name;
String status;



public myPage(String symbol, String element_name, String created_date, String updated_date, String user_name, String status) {

	this.symbol = symbol;
	this.element_name = element_name;
	this.created_date = created_date;
	this.updated_date = updated_date;
	this.user_name = user_name;
	this.status = status;

}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getSymbol() {
	return symbol;
}
public void setSymbol(String symbol) {
	this.symbol = symbol;
}
public String getElement_name() {
	return element_name;
}
public void setElement_name(String element_name) {
	this.element_name = element_name;
}
public String getCreated_date() {
	return created_date;
}
public void setCreated_date(String created_date) {
	this.created_date = created_date;
}
public String getUpdated_date() {
	return updated_date;
}
public void setUpdated_date(String updated_date) {
	this.updated_date = updated_date;
}
public String getUser_name() {
	return user_name;
}
public void setUser_name(String user_name) {
	this.user_name = user_name;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}

}
