package ssm.orm;

public class Userinfo {
	private Integer id;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	private String username;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	private String password;
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Userinfo(){}
	public Userinfo(Integer id, String username, String password){
		this.id = id;
		this.username = username;
		this.password = password;
	}
}
