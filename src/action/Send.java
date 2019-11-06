package action;

public class Send {
	private String des;
	private String begin;
	private String subject;
	private String addition;
	private String context;
	private String group=null;
	public String getGroup() {
		return group;
	}
	public void setGroup(String des) {
		this.group=des;
	}
	public String getDes() {
		return des;
	}
	public void setDes(String des) {
		this.des=des;
	}
	public String getBegin() {
		return begin;
	}
	public void setBegin(String begin) {
		this.begin=begin;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject=subject;
	}
	public String getAddition() {
		return addition;
	}
	public void setAddition(String addition) {
		this.addition=addition;
	}
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context=context;
	}
}
