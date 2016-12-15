package user;
public class User {
	
	protected String college_id;
	private String password;
	private String name;
	private String batch;
	private String email;
	private long contactno;

	/*-- Constructor --*/
	public User()
	{
		college_id=null;
		password=null;
		name=null;
		batch=null;
		email=null;
		contactno=0;
	}
	
	public 	User(String college_id,String password,String name,String batch,String email,long contactno)
	{
		this.college_id=college_id;
		this.password=password;
		this.name=name;
		this.batch=batch;
		this.email=email;
		this.contactno=contactno;
	}
	/*-- Constructor --*/	

	/* --GETTER n SETTER-- */
	
	public String getCollege_id() {
		return college_id;
	}
	public void setCollege_id(String college_id) {
		this.college_id = college_id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBatch() {
		return batch;
	}
	public void setBatch(String batch) {
		this.batch = batch;
	}
	public String getEmailid() {
		return email;
	}
	public void setEmailid(String email) {
		this.email = email;
	}
	public long getContactno() {
		return contactno;
	}
	public void setContactno(long contactno) {
		this.contactno = contactno;
	}
	/* --GETTER n SETTER-- */

}
