package model;

public class User {
	//�û��ĸ�������
	private int id;//��ţ����ݿ������Լ���
	private String username;//�ǳƣ�ע��ʱ��д��
	private String password;//����
	private String saying;//����
	private String time;//����ʱ��
	private String person;//���۶���
	
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
