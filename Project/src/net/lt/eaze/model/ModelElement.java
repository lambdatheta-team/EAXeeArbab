package net.lt.eaze.model;

import java.util.List;

public class ModelElement {
	private String Name;
	private String Id;
	private String Description;
	private String Type;
	private String Repository_Status;
	private String Action_required;
	private String Action_note;
	private String Introduction_Method;
	private String Introduction_Method_Note;
	// (String Name, String Id, String Description, String Repository_Status, String Action_required, String Action_note)
	public ModelElement(String Name, String Id, String Description, String Repository_Status, String Action_required, String Action_note, String Introduction_Method, String Introduction_Method_Note)
	{
		this.Name = Name;
		this.Id = Id;
		this.Description = Description;
		this.Repository_Status = Repository_Status;
		this.Action_required = Action_required;
		this.Action_note = Action_note;
		this.Introduction_Method= Introduction_Method;
		this.Introduction_Method_Note = Introduction_Method_Note;
				
	}
	
	public ModelElement(String Name, String Id, String Description, String Type, String Repository_Status)
	{
		this.Name = Name;
		this.Id = Id;
		this.Description = Description;
		this.Type = Type;
		this.Repository_Status = Repository_Status;
		
				
	}
	
	public ModelElement(List<List<String>> arrlist) {
		// TODO Auto-generated constructor stub
		String Name;
		String Id;
		String Description;
		String Repository_Status;
		String Action_required;
		String Action_note;
		String Introduction_Method;
		String Introduction_Method_Note;
	}

	public String getName()
	{
		return Name;
	}
	public void setName(String Name) {
		this.Name = Name;
	}
	
	public String getId()
	{
		return Id;
	}
	public void setId(String Id)
	{
		this.Id = Id;
	}
	
	public String getDescription()
	{
		return Description;
	}
	public void setDescription(String Description)
	{
		this.Description = Description;
	}
	
	public String getType() {
		return Type;
	}
	public void setType(String Type) {
		this.Type = Type;
	}
	
	public String getRepository_Status()
	{
		return Repository_Status;
	}
	public void setRepository_Status(String Repository_Status)
	{
		this.Repository_Status = Repository_Status;
	}
	
	public String getAction_required()
	{
		return Action_required;
	}
	public void setAction_required(String Action_required)
	{
		this.Action_required = Action_required;
	}
	
	public String getAction_note()
	{
		return Action_note;
	}
	public void setAction_note(String Action_note)
	{
		this.Action_note = Action_note;
	}
	public String getIntroduction_Method()
	{
		return Introduction_Method;
	}
	public void setIntroduction_Method(String Introduction_Method)
	{
		this.Introduction_Method = Introduction_Method;
	}
	public String getIntroduction_Method_Note()
	{
		return Introduction_Method_Note;
	}
	public void setIntroduction_Method_Note(String Introduction_Method_Note)
	{
		this.Introduction_Method_Note = Introduction_Method_Note;
	}

	@Override
	public String toString() {
		return "ModelElement Name=" + Name + ", Id=" + Id + ", Description=" + Description + ", Repository_Status="
				+ Repository_Status + ", Action_required=" + Action_required + ", Action_note=" + Action_note + ", Introduction_Method=" + Introduction_Method + ", Introduction_Method_Note=" + Introduction_Method_Note + "";
	}

	public static void add(ModelElement modelElement) {
		// TODO Auto-generated method stub
		
	}
}
