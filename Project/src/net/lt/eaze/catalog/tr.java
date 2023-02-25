package net.lt.eaze.catalog;

import java.util.List;

import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;
@XmlRootElement(name = "tr")
@XmlType(propOrder = { "td"})
public class tr {
	
	List<String> td;

	public List<String> getTd() {
		return td;
	}

	public void setTd(List<String> td) {
		this.td = td;
	}

	@Override
	public String toString() {
		return "tr [td=" + td + "]";
	}

}
