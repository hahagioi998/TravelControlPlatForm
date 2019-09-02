package model;

public class Info {
	private  String u_Type;//团体/个人 
	private String u_Name;//负责人姓名/或个人姓名
	private String telephone;//手机号
	public String getInfo_time() {
		return info_time;
	}
	public void setInfo_time(String info_time) {
		this.info_time = info_time;
	}
	private String QQ;//QQ号
	private String Class1;//班级
	private String Other;//备注
	private String place;//报名地点
	private int number ;//报名人数
	private String info_time;//报名时间
	private String status;//审核状态
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getU_Type() {
		return u_Type;
	}
	public void setU_Type(String u_Type) {
		this.u_Type = u_Type;
	}
	
	public String getU_Name() {
		return u_Name;
	}
	public void setU_Name(String u_Name) {
		this.u_Name = u_Name;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getQQ() {
		return QQ;
	}
	public void setQQ(String qQ) {
		QQ = qQ;
	}
	public String getClass1() {
		return Class1;
	}
	public void setClass1(String class1) {
		Class1 = class1;
	}
	public String getOther() {
		return Other;
	}
	public void setOther(String other) {
		Other = other;
	}
	
	
}
