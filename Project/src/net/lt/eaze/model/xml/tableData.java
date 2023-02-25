package net.lt.eaze.model.xml;

import java.util.List;

import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;


@XmlRootElement(name = "Table")
@XmlType(propOrder = {"rowData"})
public class tableData {

	private List<String> rowData;

	public List<String> getRowData() {
		return rowData;
	}

	public void setRowData(List<String> rowData) {
		this.rowData = rowData;
	}

}