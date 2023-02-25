package net.lt.eaze.model_metamodel2;

import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

@XmlRootElement(name = "Relationship_Matrix")
@XmlType(propOrder = {"from_Concept", "from_ElementLayer", "from_Source", "relation", "to_Concept", "to_ElementLayer", "to_Target"})
public class Relationship_Matrix {
	private String from_Concept;
	private String from_ElementLayer;
	private String from_Source;
	private String relation;
	private String to_Concept;
	private String to_ElementLayer;
	private String to_Target;
	
	public String getFrom_Concept() {
		return from_Concept;
	}
	public void setFrom_Concept(String from_Concept) {
		this.from_Concept = from_Concept;
	}
	public String getFrom_ElementLayer() {
		return from_ElementLayer;
	}
	public void setFrom_ElementLayer(String from_ElementLayer) {
		this.from_ElementLayer = from_ElementLayer;
	}
	public String getFrom_Source() {
		return from_Source;
	}
	public void setFrom_Source(String from_Source) {
		this.from_Source = from_Source;
	}
	public String getRelation() {
		return relation;
	}
	public void setRelation(String relation) {
		this.relation = relation;
	}
	public String getTo_Concept() {
		return to_Concept;
	}
	public void setTo_Concept(String to_Concept) {
		this.to_Concept = to_Concept;
	}
	public String getTo_ElementLayer() {
		return to_ElementLayer;
	}
	public void setTo_ElementLayer(String to_ElementLayer) {
		this.to_ElementLayer = to_ElementLayer;
	}
	public String getTo_Target() {
		return to_Target;
	}
	public void setTo_Target(String to_Source) {
		this.to_Target = to_Source;
	}
	@Override
	public String toString() {
		return "Relationship_Matrix [from_Concept=" + from_Concept + ", from_ElementLayer=" + from_ElementLayer
				+ ", from_Source=" + from_Source + ", relation=" + relation + ", to_Concept=" + to_Concept
				+ ", to_ElementLayer=" + to_ElementLayer + ", to_Target=" + to_Target + "]";
	}
	
	
}
