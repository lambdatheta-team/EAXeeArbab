package net.lt.eaze.model.xml;


import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

@XmlRootElement(name = "Relation")
@XmlType(propOrder = { "table1","table1_layer", "relation","table2_layer", "table2"})
public class Relation {
	private String table1;
	private String table1_layer;
	private String table2;
	private String table2_layer;
	private String relation;
	public String getTable1() {
		return table1;
	}
	public void setTable1(String table1) {
		this.table1 = table1;
	}
	public String getTable2() {
		return table2;
	}
	public void setTable2(String table2) {
		this.table2 = table2;
	}
	public String getRelation() {
		return relation;
	}
	public void setRelation(String relation) {
		this.relation = relation;
	}
	public String getTable1_layer() {
		return table1_layer;
	}
	public void setTable1_layer(String table1_layer) {
		this.table1_layer = table1_layer;
	}
	public String getTable2_layer() {
		return table2_layer;
	}
	public void setTable2_layer(String table2_layer) {
		this.table2_layer = table2_layer;
	}
	@Override
	public String toString() {
		return "Relation [table1=" + table1 + ", table2=" + table2 + ", relation=" + relation + "]";
	}
	
}
