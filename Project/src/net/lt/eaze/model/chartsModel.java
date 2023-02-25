package net.lt.eaze.model;

public class chartsModel {
	private String tab_name;
	private String element_name;
	private String chart_title;
	private String chart_title_in_arabic;
	private String chart_name;
	private String div_id;
	private String chart_type;
	private String chart_operation;
	private String y_axis_data;
	private String y_axis_label;
	private String x_axis_label;
	private String y_axis_title;
	private String categories_array;
	private String operation_value;
	private String attributesTextArea;
	
	
	public chartsModel(String tab_name, String element_name, String chart_title,String chart_title_in_arabic,String chart_name, String div_id, String chart_type, String chart_operation,String y_axis_data, String y_axis_label, String x_axis_label,String y_axis_title,
			String categories_array, String operation_value, String attributesTextArea) {
		this.tab_name = tab_name;
		this.element_name = element_name;
		this.chart_title = chart_title;
		this.chart_title_in_arabic = chart_title_in_arabic;
		this.chart_name = chart_name;
		this.div_id = div_id;
		this.chart_type = chart_type;
		this.chart_operation = chart_operation;
		this.y_axis_data = y_axis_data;
		this.y_axis_label = y_axis_label;
		this.x_axis_label = x_axis_label;
		this.y_axis_title = y_axis_title;
		this.categories_array = categories_array;
		this.operation_value = operation_value;
		this.attributesTextArea = attributesTextArea;
	}
	public String getChart_title_in_arabic() {
		return chart_title_in_arabic;
	}
	public void setChart_title_in_arabic(String chart_title_in_arabic) {
		this.chart_title_in_arabic = chart_title_in_arabic;
	}
	public String getY_axis_title() {
		return y_axis_title;
	}
	public void setY_axis_title(String y_axis_title) {
		this.y_axis_title = y_axis_title;
	}
	public String getChart_title() {
		return chart_title;
	}
	public String getTab_name() {
		return tab_name;
	}	
	public String setTab_name() {
		return tab_name;
	}	
	public void setChart_title(String chart_title) {
		this.chart_title = chart_title;
	}
	public String getChart_name() {
		return chart_name;
	}
	public String getElement_name() {
		return element_name;
	}	
	public String setElement_name() {
		return element_name;
	}	
	public void setChart_name(String chart_name) {
		this.chart_name = chart_name;
	}
	public String getDiv_id() {
		return div_id;
	}
	public void setDiv_id(String div_id) {
		this.div_id = div_id;
	}
	public String getChart_type() {
		return chart_type;
	}
	public void setChart_type(String chart_operation) {
		this.chart_type = chart_type;
	}
	public String getChart_Operation() {
		return chart_operation;
	}
	public void setChart_Operation(String chart_operation) {
		this.chart_operation = chart_operation;
	}
	public String getY_axis_data() {
		return y_axis_data;
	}
	public void setY_axis_data(String y_axis_data) {
		this.y_axis_data = y_axis_data;
	}
	public String getY_axis_label() {
		return y_axis_label;
	}
	public void setY_axis_label(String y_axis_label) {
		this.y_axis_label = y_axis_label;
	}
	public String getX_axis_label() {
		return x_axis_label;
	}
	public void setX_axis_label(String x_axis_label) {
		this.x_axis_label = x_axis_label;
	}
	public String getCategories_array() {
		return categories_array;
	}
	public void setCategories_array(String categories_array) {
		this.categories_array = categories_array;
	}
	public String getOperation_value() {
		return operation_value;
	}		
	public void setOperation_value(String operation_value) {
		this.operation_value = operation_value;
	}
	public String getAttributesTextArea() {
		return attributesTextArea;
	}		
	public void setAttributesTextArea(String attributesTextArea) {
		this.attributesTextArea = attributesTextArea;
	}	
	
	
	@Override
	public String toString() {
		return "chartsModel [tab_name=" + tab_name + ", element_name=" + element_name + ", chart_title=" + chart_title + ",chart_title_in_arabic=" + chart_title_in_arabic + ",chart_name=" + chart_name + ", div_id=" + div_id + ", chart_type=" + chart_type
				+ ", chart_operation="+chart_operation+", y_axis_data=" + y_axis_data + ", y_axis_label=" + y_axis_label + ", x_axis_label=" + x_axis_label + ",y_axis_title=" + y_axis_title + ", categories_array="
				+ categories_array + ", operation_value=" + operation_value + ", attributesTextArea=" + attributesTextArea + "]";
	}
}
