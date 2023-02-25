package net.lt.eaze.catalog;

import java.util.List;

import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;
@XmlRootElement(name = "tbody")
@XmlType(propOrder = { "tr"})
public class tbody {
	
	List<tr> tr;

	public List<tr> getTr() {
		return tr;
	}

	public void setTr(List<tr> tr) {
		this.tr = tr;
	}

	@Override
	public String toString() {
		return "tbody [tr=" + tr + "]";
	}
	
    
}
