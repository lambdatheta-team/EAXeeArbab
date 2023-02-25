package net.lt.eaze.catalog;

import java.util.List;

import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;
@XmlRootElement(name = "thead")
@XmlType(propOrder = { "th"})
public class thead {
	
	List<String> th ;

	public List<String> getTh() {
		return th;
	}

	public void setTh(List<String> th) {
		this.th = th;
	}

	@Override
	public String toString() {
		return "thead [th=" + th + "]";
	}
	
}
