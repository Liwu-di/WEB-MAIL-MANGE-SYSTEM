package action;

public class mail {
	public String from;
	public String to;
	public String subject;
	public String context;
	public String getFrom() {
		return from;
	}
	public void setFrom(String from) {
		this.from = from;
	}
	public String getTo() {
		return to;
	}
	public void setTo(String to) {
		this.to = to;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
	}
	@Override
	public String toString() {
		return "mail [from=" + from + ", to=" + to + ", subject=" + subject + ", context=" + context + "]";
	}
	
	public mail(String from, String to, String subject, String context) {
		super();
		this.from = from;
		this.to = to;
		this.subject = subject;
		this.context = context;
	}
	
}
