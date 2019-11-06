package action;

public class Contact {
	private String address;
	private String name;
	private String group;
	//setter getter
	
	public String getAddress() {
		return address;
	}
	
	@Override
	public String toString() {
		return "Contact [address=" + address + ", name=" + name + ", group=" + group + "]";
	}

	public Contact(String address, String name, String group) {
		super();
		this.address = address;
		this.name = name;
		this.group = group;
	}
	public Contact() {
		
	}
	public void setAddress(String add) {
		this.address=add;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name=name;
	}
	public String getGroup() {
		return group;
	}
	public void setGroup(String group) {
		this.group=group;
	}
}
