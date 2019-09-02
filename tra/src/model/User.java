package model;

public class User {
	//用户的各个属性
	private int id;//编号（数据库自增自减）
	private String username;//昵称（注册时填写）
	private String password;//密码
	private String saying;//评论
	private String time;//评论时间
	private String person;//评论对象
	
	public String getPerson() {
		return person;
	}
	public void setPerson(String person) {
		this.person = person;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getSaying() {
		return saying;
	}
	public void setSaying(String saying) {
		this.saying = saying;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
