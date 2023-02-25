package net.lt.eaze.model;


public class Element {
	private String id;
	private String name;
	private String description;
	private String repository_status;
	private String repository_action;
	private String action_note;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getdescription() {
		return description;
	}

	public void setdescription(String description) {
		this.description = description;
	}

	public String getrepository_status() {
		return repository_status;
	}

	public void setrepository_status(String repository_status) {
		this.repository_status = repository_status;
	}

	public String isrepository_action() {
		return repository_action;
	}

	public void setrepository_action(String repository_action) {
		this.repository_action = repository_action;
	}

	public String getaction_note() {
		return action_note;
	}

	public void setaction_note(String action_note) {
		this.action_note = action_note;
	}

}
