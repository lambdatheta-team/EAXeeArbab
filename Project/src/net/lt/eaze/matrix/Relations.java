package net.lt.eaze.matrix;

import java.util.List;

import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;
@XmlRootElement(name = "Relations")
@XmlType(propOrder = { "relation"})
public class Relations {
	private List<Relation> relation;

	public List<Relation> getRelation() {
		return relation;
	}

	public void setRelation(List<Relation> relation) {
		this.relation = relation;
	}

	@Override
	public String toString() {
		return "Relations [relation=" + relation + "]";
	}
	
}
