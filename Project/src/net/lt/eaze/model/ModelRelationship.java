package net.lt.eaze.model;

import java.util.Date;
import java.util.List;

public class ModelRelationship {
	private String Target_Rel_Element;
	private String Source_Rel_Element;
	
	// (String Name, String Id, String Description, String Repository_Status, String Action_required, String Action_note)
	public ModelRelationship(String Source_Rel_Element, String Target_Rel_Element)
	{
		this.Target_Rel_Element = Target_Rel_Element;
		this.Source_Rel_Element = Source_Rel_Element;
	}
	
	public String getTarget_Rel_Element()
	{
		return Target_Rel_Element;
	}
	public void setTarget_Rel_Element(String Target_Rel_Element) {
		this.Target_Rel_Element = Target_Rel_Element;
	}
	
	
	public String getSource_Rel_Element() {
		return Source_Rel_Element;
	}


	public void setSource_Rel_Element(String Source_Rel_Element) {
		this.Source_Rel_Element = Source_Rel_Element;
	}


//	public ModelRelationship(List<List<String>> arrlist) {
//		// TODO Auto-generated constructor stub
//		String relationship;
//		
//	}

	
	

//
//	public String toString() {
//		//System.out.println("values: "+Source_Rel_Element+" "+Target_Rel_Element);
//		//return " ModelRelationship  [Target= " + Target_Rel_Element+ ", Source= " + Source_Rel_Element+ "]";
//		if ((Source_Rel_Element == null) && (Target_Rel_Element != null))
//		{
//			//System.out.println("if");
//			return Target_Rel_Element+ "0";
//		}
//		else
//		{
//			//System.out.println("else");
//			return Source_Rel_Element+ "1";
//		}
//		
//	}

	@Override
	public String toString() {
		return "ModelRelationship [Target_Rel_Element=" + Target_Rel_Element + ", Source_Rel_Element="
				+ Source_Rel_Element + "]";
	}

	
//	public static void add(ModelRelationship modelRelationship) {
//		// TODO Auto-generated method stub
//		
//	}

	public String getselectAtt() {
		// TODO Auto-generated method stub
		return null;
	}
	
	

}
