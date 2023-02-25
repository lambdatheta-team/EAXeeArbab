package net.lt.eaze.model_metamodel2;

import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementWrapper;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

@XmlRootElement(name = "MetamodelVariable")
@XmlType(propOrder = {"variableType", "variableName", "values"})
public class Metamodel_Variable {
	
	
	private String variableType;
	private String variableName;
	private List<String> values;
	public String getVariableType() {
		return variableType;
	}
	public void setVariableType(String variableType) {
		this.variableType = variableType;
	}
	public String getVariableName() {
		return variableName;
	}
	public void setVariableName(String variableName) {
		this.variableName = variableName;
	}
	@XmlElementWrapper(name = "Values")
	@XmlElement(name = "Value")
	public List<String> getValues() {
		return values;
	}
	public void setValues(List<String> values) {
		this.values = values;
	}
	
	

}
