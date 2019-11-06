package action;

public class jsonmail {
	private String id;
	private String from;
	private String subject;
	//setter getter
	
	public String getId() {
		return id;
	}
	
	@Override
	public String toString() {
		return "jsonmail [id=" + id + ", from=" + from + ", subject=" + subject + "]";
	}

	public jsonmail(String address, String name, String group) {
		super();
		this.id = address;
		this.from = name;
		this.subject = group;
	}
	public jsonmail() {
		
	}
	public void setId(String add) {
		this.id=add;
	}
	public String getFrom() {
		return from;
	}
	public void setFrom(String name) {
		this.from=name;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String group) {
		this.subject=group;
	}
}
